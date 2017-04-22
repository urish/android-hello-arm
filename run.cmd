set PATH=%PATH%;C:\Dev\android-sdk\platform-tools;C:\Dev\android-sdk\ndk-bundle\toolchains\arm-linux-androideabi-4.9\prebuilt\windows-x86_64\bin

arm-linux-androideabi-as.exe -o hello.o hello.S
arm-linux-androideabi-ld.exe -o hello hello.o
adb push hello /data/local/tmp/hello
adb shell chmod +x /data/local/tmp/hello
adb shell /data/local/tmp/hello
