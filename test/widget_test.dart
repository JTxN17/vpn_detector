
import 'package:flutter_test/flutter_test.dart';
import 'package:new_app/main.dart';  // <-- Make sure the import path is correct

void main() {
  testWidgets('Check if VPN status message appears', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(const VpnDetectorApp());  // <-- Use VpnDetectorApp here

    // Verify if the VPN status message is displayed correctly
    expect(find.text('VPN is Active 😎'), findsOneWidget);  // Adjust this based on your app's logic
    expect(find.text('VPN is Not Active 😐'), findsNothing);  // Adjust this based on your app's logic
  });
}
