// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:let_log/let_log.dart';

class LoggerPage extends StatefulWidget {
	@override
	_LoggerPageState createState() => _LoggerPageState();
}

class _LoggerPageState extends State<LoggerPage> {
	@override
	void initState() {
		// Settings:
		// Logger.enabled = false;
		// Logger.config.maxLimit = 50;
		// Logger.config.reverse = true;
		// Logger.config.printLog = false;
		// Logger.config.printNet = false;

		// Set the names in IDE console (can use emoji).
		Logger.config.setPrintNames(
			log: '[🟦 Log]',
			debug: '[🟨 Debug]',
			warn: '[🟧 Warn]',
			error: '[🟥 Error]',
			request: '[⬆️ Request]',
			response: '[⬇️ Response]',
		);

		/// Set the tab names in the app (can use emoji).
		Logger.config.setTabNames(
			log: '🟦 Log',
			debug: '🟨 Debug',
			warn: '🟧 Warn',
			error: '🟥 Error',
			request: '⬆️ Request',
			response: '⬇️ Response',
		);

		_test(null);
		Timer.periodic(const Duration(seconds: 5), _test);
		super.initState();
	}

	void _test(_) {
		// Log
		Logger.log('Log', 'This is a log message.');

		// Debug
		Logger.debug('Debug', 'This is a debug message.');

		// Warning
		Logger.warn('Warning', 'This is a warning message.');

		// Error
		Logger.error('Error', 'This is an error message.');

		// Test error
		try {
			final test = {};
			test['test']['test'] = 1;
		} catch (a, e) {
			Logger.error(a, e);
		}

		// Time test
		Logger.time('timeTest');
		Logger.endTime('timeTest');

		// Log network
		Logger.net(
			'api/user/getUser',
			data: {'user': 'username', 'pass': 'xxxxxx'},
		);
		Logger.endNet(
			'api/user/getUser',
			data: {
				'users': [
					{'id': 1, 'name': 'Person1', 'avatar': 'xxx'},
					{'id': 2, 'name': 'Person2', 'avatar': 'xxx'}
				]
			},
		);

		// Log network
		Logger.net(
			'ws/chat/getList',
			data: {'chanel': 1},
			type: 'Socket'
		);
		Logger.endNet(
			'ws/chat/getList',
			data: {
				'users': [
					{'id': 1, 'name': 'yung', 'avatar': 'xxx'},
					{'id': 2, 'name': 'yung2', 'avatar': 'xxx'}
				]
			},
		);

		// Clear log
		// Logger.clear();
	}

	@override
	Widget build(BuildContext context) {
		return Logger();
	}
}
