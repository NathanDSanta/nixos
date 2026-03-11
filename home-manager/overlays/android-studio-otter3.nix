final: prev: {
  android-studio-otter3 =
    prev.androidStudioPackages.stable.overrideAttrs
    (old: {
      pname = "android-studio-otter3";
      version = "2025.2.3.9";

      src = prev.fetchurl {
        url = "https://dl.google.com/dl/android/studio/ide-zips/2025.2.3.9/android-studio-2025.2.3.9-linux.tar.gz";
        sha256 = "986ea6cacb36da723f2c8550cccd7d8cd3e8b8b7bb2446d3a8bf39bbaf91abc1";
      };
    });
}
