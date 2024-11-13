// To parse this JSON data, do
//
//     final pesananEntry = pesananEntryFromJson(jsonString);

import 'dart:convert';

List<PesananEntry> pesananEntryFromJson(String str) => List<PesananEntry>.from(json.decode(str).map((x) => PesananEntry.fromJson(x)));

String pesananEntryToJson(List<PesananEntry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PesananEntry {
    String model;
    String pk;
    Fields fields;

    PesananEntry({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory PesananEntry.fromJson(Map<String, dynamic> json) => PesananEntry(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    String pesanan;
    DateTime time;
    String keterangan;
    int quantitas;

    Fields({
        required this.user,
        required this.pesanan,
        required this.time,
        required this.keterangan,
        required this.quantitas,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        pesanan: json["pesanan"],
        time: DateTime.parse(json["time"]),
        keterangan: json["keterangan"],
        quantitas: json["quantitas"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "pesanan": pesanan,
        "time": "${time.year.toString().padLeft(4, '0')}-${time.month.toString().padLeft(2, '0')}-${time.day.toString().padLeft(2, '0')}",
        "keterangan": keterangan,
        "quantitas": quantitas,
    };
}
