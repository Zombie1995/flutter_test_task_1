import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_test_task_1/bloc/hotel_data_bloc/bloc/hotel_data_bloc.dart';
import 'package:flutter_test_task_1/screens/hotel/hotel.dart';
import 'package:flutter_test_task_1/themes/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => HotelDataBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        // Кастомная тема позволяет с легкостью при
        // разработке под android изменить guideline
        theme: iosTheme(),
        home: const Hotel(),
      ),
    );
  }
}
