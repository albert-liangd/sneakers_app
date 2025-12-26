import 'package:flutter/material.dart';

SnackBar successSnackBar() => SnackBar(
      backgroundColor: Colors.green[400],
      content: const Text('已成功添加到购物袋！'),
      action: SnackBarAction(
        textColor: Colors.white,
        label: '知道了',
        onPressed: () {},
      ),
    );

SnackBar failedSnackBar() => SnackBar(
      backgroundColor: Colors.red[400],
      content: const Text('该商品已在购物袋中！'),
      action: SnackBarAction(
        textColor: Colors.white,
        label: '知道了',
        onPressed: () {},
      ),
    );
