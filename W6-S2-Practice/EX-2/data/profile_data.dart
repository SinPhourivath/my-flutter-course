import 'package:flutter/material.dart';
import 'package:learning/W6-S2-Practice/EX-2/model/profile_model.dart';

ProfileData rivathProfile = ProfileData(
    name: "Sin Phourivath",
    position: "Embedded Engineer",
    avatarUrl: 'assets/w6-s2/anonymous-profile.png',
    titles: [
      TileData(icon: Icons.phone, title: "Phone Number", value: "+855 123 456"),
      TileData(icon: Icons.location_on, title: "Address", value: "Cambodia"),
      TileData(
          icon: Icons.email,
          title: "Mail",
          value: "phourivath.sin@student.cadt.edu.kh"),
      TileData(icon: Icons.abc, title: "abc", value: "abc abc abc"),
      TileData(icon: Icons.abc, title: "abc", value: "abc abc abc"),
      TileData(icon: Icons.abc, title: "abc", value: "abc abc abc"),
      TileData(icon: Icons.abc, title: "abc", value: "abc abc abc"),
      TileData(icon: Icons.abc, title: "abc", value: "abc abc abc"),
      TileData(icon: Icons.abc, title: "abc", value: "abc abc abc"),
    ]);
