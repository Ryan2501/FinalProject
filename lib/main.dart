import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';
import 'package:animated_background/animated_background.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(home: MyApp(),));
}// 啟動應用程式，並將首頁設為 MyApp

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Screen1 createState() => Screen1();
}

class Screen1 extends State<MyApp> with SingleTickerProviderStateMixin {

  // 定義一個字符串變數，表示背景圖片的路徑或連結
  String imageLink = 'images/img.jpg';

  // 定義一個 ParticleOptions 對象，用於設置背景粒子效果的屬性
  var particles = ParticleOptions(
    baseColor: Colors.redAccent,     // 設置粒子基本顏色
    spawnOpacity: 0.0,               // 初始生成粒子時的透明度
    minOpacity: 0.1,                 // 最小透明度
    maxOpacity: 0.8,                 // 最大透明度
    particleCount: 100,              // 粒子數量
    spawnMinSpeed: 10,               // 最小生成速度
    spawnMaxSpeed: 100,              // 最大生成速度
    spawnMinRadius: 3,               // 最小生成半徑
    spawnMaxRadius: 25,              // 最大生成半徑
  );

  @override
  void initState() {
    super.initState();
    // 設定計時器，延遲5秒後跳轉到下一個畫面
    Timer(Duration(seconds:5), (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>myApp1()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exchange Rate',
        style: TextStyle(
          color: Colors.amberAccent,//設定字體顏色
        )),
        backgroundColor: Colors.white, // 替換背景顏色
      ),
      // 使用 AnimatedBackground 庫創建帶有粒子效果的背景
      body: AnimatedBackground(
        vsync: this,
        behaviour: RandomParticleBehaviour(options:particles),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 顯示圖片的容器
              Container(
                width: 400,
                height: 500,
                decoration: BoxDecoration(
                  border: Border.all(color:Colors.amberAccent,
                      width:2,
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(image: AssetImage(imageLink),
                      fit: BoxFit.cover),
                  color: Colors.white,
                ),
              ),
              SizedBox(height:10),
              // 顯示文字的 Widget
              Text("Exchange Rate 匯率轉換計算器", textAlign: TextAlign.center,
                style: TextStyle(fontSize: 50,
                    fontFamily: "kai",
                    color: Colors.amber,
                    fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      ),
    );
  }
}//封面及載入畫面製作

class myApp1 extends StatelessWidget {
  const myApp1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 設定本地化，支援多語言
      localizationsDelegates: [
        // S.delegate 是應用程式的語言資源代理，由 intl_translation 工具生成
        S.delegate,

        // GlobalMaterialLocalizations.delegate 提供了 Flutter 內置控制項的預設本地化字符串
        GlobalMaterialLocalizations.delegate,

        // GlobalWidgetsLocalizations.delegate 提供了 Flutter 控制項的默認文本方向（左到右或右到左）和其他本地化
        GlobalWidgetsLocalizations.delegate,

        // GlobalCupertinoLocalizations.delegate 提供了 Cupertino 控制項的本地化字符串（如果使用了 Cupertino 部件）
        GlobalCupertinoLocalizations.delegate,
      ],
      // 支援的語言區域
      supportedLocales: S.delegate.supportedLocales,
      // 主題設定
      theme: ThemeData(
        primaryColor: Colors.amber,  // 主題主要顏色
        colorScheme: ColorScheme.light(
          primary: Colors.amber,      // 亮色主題主要顏色
          secondary: Colors.pinkAccent, // 亮色主題次要顏色
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.amber, // AppBar 背景顏色
          titleTextStyle: TextStyle(color: Colors.deepPurpleAccent, fontSize: 20), // AppBar 標題文字樣式
          iconTheme: IconThemeData(color: Colors.grey), // AppBar 圖標主題
          toolbarTextStyle: TextStyle(color: Colors.deepPurpleAccent, fontSize: 20), // 工具欄文字樣式
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 10, // 浮雕高度
            shape: BeveledRectangleBorder(), // 按鈕形狀
          ),
        ),
      ),
      // 暗黑主題設定
      darkTheme: ThemeData(
        primaryColor: Colors.deepPurpleAccent, // 暗黑主題主要顏色
        colorScheme: ColorScheme.dark(
          primary: Colors.purple,   // 暗黑主題次要顏色
          secondary: Colors.red,     // 暗黑主題次要顏色
        ),
      ),
      home: demo(), // 設定應用程式的首頁
    );
  }
}

class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  final originalCurrencyController = TextEditingController();
  final targetCurrencyController = TextEditingController();
  double convertedAmount = 0.0;

  // 假設您有一個匯率映射，以便查找不同貨幣之間的匯率
  Map<String, dynamic> exchangeRates = {
    'USD': 1.0,
    'EUR': 0.85,
    'JPY': 112.23,
    'CNY': 6.37,
    'HKD': 7.78,
    'GBP': 0.74,
    'AUD': 1.35,
    'TWD': 28.15, // 新增新台幣換算比率
  };

  String selectedOriginalCurrency = 'USD';
  String selectedTargetCurrency = 'USD';

  @override
  void dispose() {
    super.dispose();
    originalCurrencyController.dispose();
    targetCurrencyController.dispose();
  }

  void convertCurrency() {
    setState(() {
      // 獲取用戶輸入的金額和貨幣代碼
      double originalAmount = double.tryParse(originalCurrencyController.text) ?? 0.0;

      // 檢查用戶輸入的原始貨幣和目標貨幣是否有效
      if (exchangeRates.containsKey(selectedOriginalCurrency) && exchangeRates.containsKey(selectedTargetCurrency)) {
        // 進行貨幣轉換
        double originalRate = exchangeRates[selectedOriginalCurrency]!;
        double targetRate = exchangeRates[selectedTargetCurrency]!;
        convertedAmount = originalAmount * (targetRate / originalRate);
      } else {
        // 如果貨幣代碼無效，將轉換結果設置為0.0
        convertedAmount = 0.0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Currency Converter'),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextField(
                    controller: originalCurrencyController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Enter Amount',
                      hintText: '0.00',
                      icon: Icon(Icons.attach_money),
                    ),
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: DropdownButton<String>(
                    value: selectedOriginalCurrency,
                    items: exchangeRates.keys
                        .map((String currency) {
                      return DropdownMenuItem<String>(
                        value: currency,
                        child: Text(currency),
                      );
                    })
                        .toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedOriginalCurrency = newValue!;
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    'Convert to:',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: DropdownButton<String>(
                    value: selectedTargetCurrency,
                    items: exchangeRates.keys
                        .map((String currency) {
                      return DropdownMenuItem<String>(
                        value: currency,
                        child: Text(currency),
                      );
                    })
                        .toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedTargetCurrency = newValue!;
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Convert', style: TextStyle(color: Colors.yellow)), // 調整按鈕文字顏色
              onPressed: () {
                convertCurrency();
              },
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 22),
                primary: Colors.amber, // 調整按鈕顏色
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Converted Amount: $convertedAmount $selectedTargetCurrency',
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
