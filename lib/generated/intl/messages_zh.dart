// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'zh';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "appTitle": MessageLookupByLibrary.simpleMessage("匯率計算器"),
        "audCurrency": MessageLookupByLibrary.simpleMessage("澳元 (AUD)"),
        "cnyCurrency": MessageLookupByLibrary.simpleMessage("人民幣 (CNY)"),
        "convertButtonLabel": MessageLookupByLibrary.simpleMessage("轉換"),
        "convertToLabel": MessageLookupByLibrary.simpleMessage("轉換為:"),
        "convertedAmountLabel": MessageLookupByLibrary.simpleMessage("轉換後金額"),
        "currencyConverterTitle": MessageLookupByLibrary.simpleMessage("貨幣轉換器"),
        "enterAmountHint": MessageLookupByLibrary.simpleMessage("0.00"),
        "enterAmountLabel": MessageLookupByLibrary.simpleMessage("輸入金額"),
        "eurCurrency": MessageLookupByLibrary.simpleMessage("歐元 (EUR)"),
        "gbpCurrency": MessageLookupByLibrary.simpleMessage("英鎊 (GBP)"),
        "hkdCurrency": MessageLookupByLibrary.simpleMessage("港元 (HKD)"),
        "jpyCurrency": MessageLookupByLibrary.simpleMessage("日元 (JPY)"),
        "screen1Description": MessageLookupByLibrary.simpleMessage("貨幣轉換計算器"),
        "screen1Title": MessageLookupByLibrary.simpleMessage("匯率"),
        "twdCurrency": MessageLookupByLibrary.simpleMessage("新台幣 (TWD)"),
        "usdCurrency": MessageLookupByLibrary.simpleMessage("美元 (USD)")
      };
}
