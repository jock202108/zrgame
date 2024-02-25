import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';



@JsonSerializable()
class User {
	User({
		this.name,
		this.email,
		this.userId,
	});

	String? name;
	String? email;
	@JsonValue("user_id")
	String? userId;


	factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

	Map<String, dynamic> toJson() => _$UserToJson(this);
}
