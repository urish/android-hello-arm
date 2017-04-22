set PATH=%PATH%;C:\Dev\android-sdk\platform-tools;C:\Dev\android-sdk\ndk-bundle\toolchains\arm-linux-androideabi-4.9\prebuilt\windows-x86_64\bin

adb forward tcp:5638 tcp:5638
adb push C:\Dev\android-sdk\ndk-bundle\prebuilt\android-arm\gdbserver //data/local/tmp
adb shell chmod +x /data/local/tmp/gdbserver/gdbserver
adb shell /data/local/tmp/gdbserver/gdbserver :5638 /data/local/tmp/hello

