// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "appTitle":
            MessageLookupByLibrary.simpleMessage("Exchange Rate Calculator"),
        "audCurrency":
            MessageLookupByLibrary.simpleMessage("Australian Dollar (AUD)"),
        "cnyCurrency":
            MessageLookupByLibrary.simpleMessage("Chinese Yuan (CNY)"),
        "convertButtonLabel": MessageLookupByLibrary.simpleMessage("Convert"),
        "convertToLabel": MessageLookupByLibrary.simpleMessage("Convert to:"),
        "convertedAmountLabel":
            MessageLookupByLibrary.simpleMessage("Converted Amount"),
        "currencyConverterTitle":
            MessageLookupByLibrary.simpleMessage("Currency Converter"),
        "enterAmountHint": MessageLookupByLibrary.simpleMessage("0.00"),
        "enterAmountLabel":
            MessageLookupByLibrary.simpleMessage("Enter Amount"),
        "eurCurrency": MessageLookupByLibrary.simpleMessage("Euro (EUR)"),
        "gbpCurrency":
            MessageLookupByLibrary.simpleMessage("British Pound (GBP)"),
        "hkdCurrency":
            MessageLookupByLibrary.simpleMessage("Hong Kong Dollar (HKD)"),
        "jpyCurrency":
            MessageLookupByLibrary.simpleMessage("Japanese Yen (JPY)"),
        "screen1Description": MessageLookupByLibrary.simpleMessage(
            "Currency conversion calculator"),
        "screen1Title": MessageLookupByLibrary.simpleMessage("Exchange Rate"),
        "twdCurrency":
            MessageLookupByLibrary.simpleMessage("New Taiwan Dollar (TWD)"),
        "usdCurrency": MessageLookupByLibrary.simpleMessage("US Dollar (USD)")
      };
}
