// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mcp_toolkit/mcp_toolkit.dart';
import 'package:sneakers_app/view/navigator.dart';

Future<void> main() async {
  runZonedGuarded(
    () async {
      // 确保Flutter初始化
      WidgetsFlutterBinding.ensureInitialized();

      // 初始化 MCP Toolkit (仅在debug模式下工作)
      MCPToolkitBinding.instance
        ..initialize()
        ..initializeFlutterToolkit();

      // 注册自定义工具
      _registerMCPTools();

      runApp(const MyApp());
    },
    (error, stack) {
      // 捕获Zone错误并发送到MCP
      MCPToolkitBinding.instance.handleZoneError(error, stack);
    },
  );
}

/// 注册应用特定的MCP工具
void _registerMCPTools() {
  // 注册获取应用状态工具
  addMcpTool(
    MCPCallEntry.tool(
      handler: (request) {
        return MCPCallResult(
          message: 'Sneakers App UI state',
          parameters: {
            'totalMCPEntries': MCPToolkitBinding.instance.allEntries.length,
            'appName': 'Sneakers Shop App',
            'timestamp': DateTime.now().toIso8601String(),
          },
        );
      },
      definition: MCPToolDefinition(
        name: 'get_app_state',
        description: 'Get current Sneakers App UI state and MCP integration status',
        inputSchema: ObjectSchema(properties: {}),
      ),
    ),
  );

  debugPrint('MCP Toolkit initialized with custom tools');
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Quicksand',
      ),
      title: 'Sneakers Shop App',
      home: MainNavigator(),
    );
  }
}
