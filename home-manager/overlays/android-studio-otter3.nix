self: super: {
  android-studio = super.androidStudioPackages.studio.override {
    channel = "stable";
    pname = "android-studio-otter3";
    version = "2025.2.3.9";
    sha256Hash = "986ea6cacb36da723f2c8550cccd7d8cd3e8b8b7bb2446d3a8bf39bbaf91abc1";
  };
}
