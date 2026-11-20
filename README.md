# romano_mobprog

What challenges did you encounter while installing or configuring Flutter?
•	I did not run into any major challenges while installing Flutter itself. Downloading the SDK and setting it up went smoothly. The difficulties only appeared afterward, when I verified the setup with flutter doctor.

Did you encounter any errors when running flutter doctor?
•	Yes, I encountered two errors. The first was “Cannot find Chrome. Try setting CHROME_EXECUTABLE to a Chrome executable,” which meant Flutter could not locate the browser it needs to run and debug web apps. The second was “Android sdkmanager not found. Update to the latest Android SDK and ensure that the cmdline-tools are installed,” which meant the Android command-line tools were missing from my setup.

How did you resolve installation, dependency, SDK, or device-related issues?
•	For the Chrome error, I set the CHROME_EXECUTABLE environment variable so it pointed to my Chrome installation, which allowed Flutter to detect the browser. For the Android SDK error, I installed the Android SDK Command-line Tools through the SDK Manager in Android Studio. I also made sure Android Studio was updated to the latest version so that all of its components were compatible with Flutter. After applying these fixes, I ran flutter doctor again to confirm that the problems were gone.

What did you learn about configuring a Flutter development environment?
•	I learned that installing the Flutter SDK is only one part of the setup. A working environment also depends on other tools, such as Android Studio, the Android SDK and its command-line tools, and a supported browser for web development. I also learned that flutter doctor is a very useful diagnostic tool, since its messages usually point directly to what is missing or misconfigured. Finally, I saw how important environment variables and keeping tools up to date are in avoiding setup problems.

What practices will you follow to make future Flutter development easier?
•	Run flutter doctor regularly, especially after installing or updating any tools.
•	Keep Flutter, Android Studio, and the SDK components up to date.
•	Read error messages carefully and check official documentation or trusted community resources when troubleshooting.
•	Make sure all required tools, such as the command-line tools, are installed from the start.
•	Keep notes on fixes that worked so I can solve similar issues faster in the future.

