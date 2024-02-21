import 'dart:convert';

ExchangeRates exchangeRatesFromJson(String str) =>
    ExchangeRates.fromJson(json.decode(str));

String exchangeRatesToJson(ExchangeRates data) => json.encode(data.toJson());

class ExchangeRates {
  String? result;
  String? provider;
  String? documentation;
  String? termsOfUse;
  int? timeLastUpdateUnix;
  String? timeLastUpdateUtc;
  int? timeNextUpdateUnix;
  String? timeNextUpdateUtc;
  int? timeEolUnix;
  String? baseCode;
  Map<String, double>? rates;

  ExchangeRates({
    this.result,
    this.provider,
    this.documentation,
    this.termsOfUse,
    this.timeLastUpdateUnix,
    this.timeLastUpdateUtc,
    this.timeNextUpdateUnix,
    this.timeNextUpdateUtc,
    this.timeEolUnix,
    this.baseCode,
    this.rates,
  });

  factory ExchangeRates.fromJson(Map<String, dynamic> json) => ExchangeRates(
        result: json["result"],
        provider: json["provider"],
        documentation: json["documentation"],
        termsOfUse: json["terms_of_use"],
        timeLastUpdateUnix: json["time_last_update_unix"],
        timeLastUpdateUtc: json["time_last_update_utc"],
        timeNextUpdateUnix: json["time_next_update_unix"],
        timeNextUpdateUtc: json["time_next_update_utc"],
        timeEolUnix: json["time_eol_unix"],
        baseCode: json["base_code"],
        rates: Map.from(json["rates"]!)
            .map((k, v) => MapEntry<String, double>(k, v?.toDouble())),
      );

  Map<String, dynamic> toJson() => {
        "result": result,
        "provider": provider,
        "documentation": documentation,
        "terms_of_use": termsOfUse,
        "time_last_update_unix": timeLastUpdateUnix,
        "time_last_update_utc": timeLastUpdateUtc,
        "time_next_update_unix": timeNextUpdateUnix,
        "time_next_update_utc": timeNextUpdateUtc,
        "time_eol_unix": timeEolUnix,
        "base_code": baseCode,
        "rates":
            Map.from(rates!).map((k, v) => MapEntry<String, dynamic>(k, v)),
      };
}
