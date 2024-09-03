import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fitness_app/common/color_extension.dart';
import 'package:fitness_app/view/dashboard/home/activity.dart';
import 'package:fitness_app/view/dashboard/home/bmi.dart';
import 'package:fitness_app/view/dashboard/home/chatpage.dart';
import 'package:fitness_app/view/dashboard/home/dashboard.dart';
import 'package:fitness_app/view/dashboard/home/edit_bmi.dart';
import 'package:fitness_app/view/dashboard/home/home.dart';
import 'package:fitness_app/view/dashboard/home/profile.dart';
import 'package:fitness_app/view/login/a.dart';
import 'package:fitness_app/view/login/benefits.dart';
import 'package:fitness_app/view/login/complete_profile_view.dart';
import 'package:fitness_app/view/login/demo.dart';
import 'package:fitness_app/view/login/forget_password.dart';
import 'package:fitness_app/view/login/login_view.dart';
import 'package:fitness_app/view/login/reset_password.dart';
import 'package:fitness_app/view/login/signup_view.dart';
import 'package:fitness_app/view/login/welcome_view.dart';
import 'package:fitness_app/view/meal_planner/meal_food_details_view.dart';
import 'package:fitness_app/view/meal_planner/meal_planner_view.dart';
import 'package:fitness_app/view/on_boarding/notification_controller.dart';
import 'package:fitness_app/view/on_boarding/splash_screen_login.dart';
import 'package:fitness_app/view/workout_tracker/abs_workout.dart';
import 'package:fitness_app/view/workout_tracker/add_schedule_view.dart';
import 'package:fitness_app/view/workout_tracker/exercises_step_details.dart';
import 'package:fitness_app/view/workout_tracker/fullbody.dart';
import 'package:fitness_app/view/workout_tracker/workout_tracker_view.dart';
import 'package:fitness_app/view/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await AwesomeNotifications().initialize(null, [
    NotificationChannel(
      channelGroupKey: "Basic_channel_Group",
      channelKey: "Basic_channel",
      channelName: "Basic_notification",
      channelDescription: "Basic_notification_channel",
      playSound: true,
    )
  ], channelGroups: [
    NotificationChannelGroup(
      channelGroupKey: "basic_channel_group",
      channelGroupName: "Basic_Group",
    )
  ]);
  bool isAllowedToSendNotification =
      await AwesomeNotifications().isNotificationAllowed();
  if (!isAllowedToSendNotification) {
    AwesomeNotifications().requestPermissionToSendNotifications();
  }
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  void initState() {
    AwesomeNotifications().setListeners(
      onActionReceivedMethod: NotificationController.onActionReceivedMethod,
      onNotificationCreatedMethod:
          NotificationController.onNotificationCreatedMethod,
      onNotificationDisplayedMethod:
          NotificationController.onNotificationDisplayedMethod,
      onDismissActionReceivedMethod:
          NotificationController.onDismissActionReceivedMethod,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Fitness App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Tcolor.primaryColor1,
        fontFamily: "Poppins",
      ),
      home: Wrapper(),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return GetMaterialApp(
  //     title: 'Fitness App',
  //     debugShowCheckedModeBanner: false,
  //     theme: ThemeData(
  //       primaryColor: Tcolor.primaryColor1,
  //       fontFamily: "Poppins",
  //     ),
  //     home: Scaffold(
  //       floatingActionButton: FloatingActionButton(
  //         onPressed: (){
  //           AwesomeNotifications().createNotification(content: NotificationContent(id: 1, channelKey: "Basic_channel",
  //           title: "helllo",
  //           body: "workout time!"),);
  //         },
  //         child: Icon(
  //           Icons.notification_add,
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
