import 'package:flutter/material.dart';

import '../models/models.dart';

final List<ShoeModel> availableShoes = [
  ShoeModel(
    name: "NIKE",
    model: "AIR-MAX",
    price: 899.00,
    imgAddress: "assets/images/nike1.png",
    modelColor: const Color(0xffDE0106),
  ),
  ShoeModel(
    name: "NIKE",
    model: "AIR-JORDAN MID",
    price: 1299.00,
    imgAddress: "assets/images/nike8.png",
    modelColor: const Color(0xff3F7943),
  ),
  ShoeModel(
    name: "NIKE",
    model: "ZOOM",
    price: 1099.00,
    imgAddress: "assets/images/nike2.png",
    modelColor: const Color(0xffE66863),
  ),
  ShoeModel(
    name: "NIKE",
    model: "Air-FORCE",
    price: 799.00,
    imgAddress: "assets/images/nike3.png",
    modelColor: const Color(0xffD7D8DC),
  ),
  ShoeModel(
    name: "NIKE",
    model: "AIR-JORDAN LOW",
    price: 1049.00,
    imgAddress: "assets/images/nike5.png",
    modelColor: const Color(0xff37376B),
  ),
  ShoeModel(
    name: "NIKE",
    model: "ZOOM",
    price: 829.00,
    imgAddress: "assets/images/nike4.png",
    modelColor: const Color(0xffE4E3E8),
  ),
  ShoeModel(
    name: "NIKE",
    model: "AIR-JORDAN LOW",
    price: 1049.00,
    imgAddress: "assets/images/nike7.png",
    modelColor: const Color(0xffD68043),
  ),
  ShoeModel(
    name: "NIKE",
    model: "AIR-JORDAN LOW",
    price: 1049.00,
    imgAddress: "assets/images/nike6.png",
    modelColor: const Color(0xffE2E3E5),
  ),
];

List<ShoeModel> itemsOnBag = [];

final List<UserStatus> userStatus = [
  UserStatus(
    emoji: '😴',
    txt: "离开",
    selectColor: const Color(0xff121212),
    unSelectColor: const Color(0xffbfbfbf),
  ),
  UserStatus(
    emoji: '💻',
    txt: "工作中",
    selectColor: const Color(0xff05a35c),
    unSelectColor: const Color(0xffCEEBD9),
  ),
  UserStatus(
    emoji: '🎮',
    txt: "游戏中",
    selectColor: const Color(0xffFFD237),
    unSelectColor: const Color(0xffFDDFBB),
  ),
  UserStatus(
    emoji: '🤫',
    txt: "忙碌",
    selectColor: const Color(0xffba3a3a),
    unSelectColor: const Color(0xffdb9797),
  ),
];

final List categories = [
  'Nike',
  'Adidas',
  'Jordan',
  'Puma',
  'Gucci',
  'Tom Ford',
  'Koio',
];
final List featured = [
  '新品',
  '精选',
  '即将上架',
];

final List<double> sizes = [6, 7.5, 8, 9.5];
