import 'package:provider/provider.dart';

import '../modal/modal.dart';
import '../screens/1_1/view/theme_screen.dart';
import '../screens/1_2/screen_1.dart';
import '../screens/1_2/screen_2.dart';
import '../screens/1_4/change_theme/view/screen_change.dart';
import '../screens/1_4/counter_app/view/count_screen.dart';
import '../screens/1_6/url_luncher_ex/contect_us.dart';
import '../screens/1_7/view/gallary.dart';


List appList = [
  AppModel(title: '1.1 Switch Dark Theme to Light Theme', widget: const ThemeScreen()),
  AppModel(title: '1.2.1 Create Registration Page using Stepper Widget', widget: StepperScreen()),
  AppModel(title: '1.2.2 Create Registration Page using Horizontal Stepper Widget', widget:StepperScreen2()),
  AppModel(title: '1.4.1 Provider & Change Theme using Provider', widget:  ChangeThemeScreen()),
   AppModel(title: '1.4.2 Counter App using Provider', widget: const CounterApp()),
  // AppModel(title: '1.5 One Time Intro Screen in Flutter', widget: IntroScreen1(),),
   AppModel(title: '1.6 Contact Us Page With Interaction', widget: const ContactUs()),
   AppModel(title: '1.7 Photo Gallery With Biometric Authentication', widget: const GalleryScreen()),
];