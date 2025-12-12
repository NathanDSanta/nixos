{
  inputs,
  lib,
  ...
}: {
  imports = [
    inputs.noctalia.homeModules.default
  ];

  programs.noctalia-shell = {
    enable = true;
    colors = lib.mkForce {
      mError = "#f38ba8";
      mHover = "#94e2d5";
      mOnError = "#11111b";
      mOnHover = "#11111b";
      mOnPrimary = "#11111b";
      mOnSecondary = "#11111b";
      mOnSurface = "#cdd6f4";
      mOnSurfaceVariant = "#a3b4eb";
      mOnTertiary = "#11111b";
      mOutline = "#4c4f69";
      mPrimary = "#cba6f7";
      mSecondary = "#fab387";
      mShadow = "#11111b";
      mSurface = "#1e1e2e";
      mSurfaceVariant = "#313244";
      mTertiary = "#94e2d5";
    };
    settings = {
      settingsVersion = 27;
      appLauncher = {
        terminalCommand = "kitty -e";
      };

      bar = {
        backgroundOpacity = lib.mkForce 0;
        density = "comfortable";
        marginHorizontal = 0.3;
        marginVertical = 0.3;
        showCapsule = false;
        widgets = {
          center = [
            {
              characterCount = 2;
              followFocusedScreen = false;
              hideUnoccupied = false;
              id = "Workspace";
              labelMode = "none";
            }
          ];
          left = [
            {
              colorizeDistroLogo = true;
              customIconPath = "";
              icon = "";
              id = "ControlCenter";
              useDistroLogo = true;
            }
            {
              diskPath = "/";
              id = "SystemMonitor";
              showCpuTemp = true;
              showCpuUsage = true;
              showDiskUsage = true;
              showMemoryAsPercent = false;
              showMemoryUsage = true;
              showNetworkStats = false;
              usePrimaryColor = true;
            }
            {
              hideMode = "hidden";
              hideWhenIdle = false;
              id = "MediaMini";
              maxWidth = 145;
              scrollingMode = "hover";
              showAlbumArt = false;
              showArtistFirst = false;
              showProgressRing = true;
              showVisualizer = true;
              useFixedWidth = false;
              visualizerType = "wave";
            }
          ];
          right = [
            {
              blacklist = [];
              colorizeIcons = true;
              drawerEnabled = true;
              id = "Tray";
              pinned = [];
            }
            {id = "ScreenRecorder";}
            {
              hideWhenZero = true;
              id = "NotificationHistory";
              showUnreadBadge = true;
            }
            {
              displayMode = "onhover";
              id = "Volume";
            }
            {
              displayMode = "forceOpen";
              id = "KeyboardLayout";
            }
            {
              customFont = "";
              formatHorizontal = "dd/MM/yy - HH:mm";
              formatVertical = "HH mm";
              id = "Clock";
              useCustomFont = false;
              usePrimaryColor = true;
            }
          ];
        };
      };

      brightness = {
        brightnessStep = 5;
        enableDdcSupport = false;
        enforceMinimum = true;
      };

      calendar.cards = [
        {
          enabled = true;
          id = "banner-card";
        }
        {
          enabled = true;
          id = "calendar-card";
        }
        {
          enabled = true;
          id = "timer-card";
        }
        {
          enabled = true;
          id = "weather-card";
        }
      ];

      changelog.lastSeenVersion = "";

      colorSchemes = {
        darkMode = true;
        generateTemplatesForPredefined = true;
        manualSunrise = "06:30";
        manualSunset = "18:30";
        matugenSchemeType = "scheme-fruit-salad";
        predefinedScheme = "Catppuccin";
        schedulingMode = "off";
        useWallpaperColors = false;
      };

      controlCenter = {
        cards = [
          {
            enabled = true;
            id = "profile-card";
          }
          {
            enabled = true;
            id = "shortcuts-card";
          }
          {
            enabled = true;
            id = "audio-card";
          }
          {
            enabled = true;
            id = "weather-card";
          }
          {
            enabled = true;
            id = "media-sysmon-card";
          }
        ];
        position = "close_to_bar_button";
        shortcuts = {
          left = [
            {id = "WiFi";}
            {id = "Bluetooth";}
            {id = "ScreenRecorder";}
            {id = "WallpaperSelector";}
          ];
          right = [
            {id = "Notifications";}
            {id = "KeepAwake";}
            {id = "PowerProfile";}
            {id = "NightLight";}
          ];
        };
      };

      dock = {
        backgroundOpacity = lib.mkForce 0;
        colorizeIcons = true;
        displayMode = "exclusive";
        enabled = true;
        floatingRatio = 0.13;
        monitors = [];
        onlySameOutput = true;
        pinnedApps = [];
        radiusRatio = 0;
        size = 0.7000000000000001;
      };

      general = {
        allowPanelsOnScreenWithoutBar = true;
        animationDisabled = false;
        animationSpeed = 1;
        avatarImage = "/home/NathanDSanta/.face";
        compactLockScreen = false;
        dimmerOpacity = 0.5;
        enableShadows = false;
        forceBlackScreenCorners = false;
        language = "";
        lockOnSuspend = true;
        radiusRatio = 1;
        scaleRatio = 1;
        screenRadiusRatio = 1;
        shadowDirection = "center";
        shadowOffsetX = 0;
        shadowOffsetY = 0;
        showHibernateOnLockScreen = false;
        showScreenCorners = false;
      };

      hooks = {
        darkModeChange = "";
        enabled = false;
        wallpaperChange = "";
      };

      location = {
        analogClockInCalendar = false;
        firstDayOfWeek = -1;
        name = "Mata, Girona, Spain";
        showCalendarEvents = true;
        showCalendarWeather = true;
        showWeekNumberInCalendar = false;
        use12hourFormat = false;
        useFahrenheit = false;
        weatherEnabled = true;
        weatherShowEffects = true;
      };

      network.wifiEnabled = true;

      nightLight = {
        autoSchedule = true;
        dayTemp = "6500";
        enabled = false;
        forced = false;
        manualSunrise = "06:30";
        manualSunset = "18:30";
        nightTemp = "4500";
      };

      notifications = {
        backgroundOpacity = lib.mkForce 1;
        criticalUrgencyDuration = 15;
        enableKeyboardLayoutToast = true;
        enabled = true;
        location = "top_right";
        lowUrgencyDuration = 3;
        monitors = [];
        normalUrgencyDuration = 8;
        overlayLayer = true;
        respectExpireTimeout = false;
      };

      osd = {
        autoHideMs = 2000;
        backgroundOpacity = lib.mkForce 1;
        enabled = true;
        enabledTypes = [0 1 2];
        location = "top_right";
        monitors = [];
        overlayLayer = true;
      };

      screenRecorder = {
        audioCodec = "opus";
        audioSource = "both";
        colorRange = "full";
        directory = "/home/NathanDSanta/Videos";
        frameRate = 60;
        quality = "very_high";
        showCursor = true;
        videoCodec = "h264";
        videoSource = "portal";
      };

      sessionMenu = {
        countdownDuration = 10000;
        enableCountdown = true;
        position = "center";
        powerOptions = [
          {
            action = "lock";
            countdownEnabled = true;
            enabled = true;
          }
          {
            action = "suspend";
            countdownEnabled = true;
            enabled = true;
          }
          {
            action = "hibernate";
            countdownEnabled = true;
            enabled = true;
          }
          {
            action = "reboot";
            countdownEnabled = true;
            enabled = true;
          }
          {
            action = "logout";
            countdownEnabled = true;
            enabled = true;
          }
          {
            action = "shutdown";
            countdownEnabled = true;
            enabled = true;
          }
        ];
        showHeader = true;
      };

      systemMonitor = {
        cpuCriticalThreshold = 90;
        cpuPollingInterval = 2750;
        cpuWarningThreshold = 80;
        criticalColor = "";
        diskCriticalThreshold = 90;
        diskPollingInterval = 3000;
        diskWarningThreshold = 80;
        memCriticalThreshold = 90;
        memPollingInterval = 3000;
        memWarningThreshold = 80;
        networkPollingInterval = 3000;
        tempCriticalThreshold = 90;
        tempPollingInterval = 3000;
        tempWarningThreshold = 80;
        useCustomColors = false;
        warningColor = "";
      };
      templates = {
        alacritty = false;
        cava = false;
        code = false;
        discord = false;
        enableUserTemplates = false;
        foot = false;
        fuzzel = false;
        ghostty = false;
        gtk = false;
        kcolorscheme = false;
        kitty = false;
        pywalfox = false;
        qt = false;
        spicetify = false;
        telegram = false;
        vicinae = false;
        walker = false;
        wezterm = false;
      };

      ui = {
        fontDefault = "JetBrainsMono Nerd Font";
        fontDefaultScale = 1;
        fontFixedScale = 1;
        panelBackgroundOpacity = lib.mkForce 0;
        panelsAttachedToBar = false;
        settingsPanelAttachToBar = true;
        tooltipsEnabled = true;
      };

      wallpaper = {
        defaultWallpaper = "space.png";
        directory = "/home/NathanDSanta/.nixos/home-manager/wallpapers";
        enableMultiMonitorDirectories = false;
        enabled = true;
        fillColor = "#000000";
        fillMode = "crop";
        hideWallpaperFilenames = false;
        monitors = [];
        overviewEnabled = false;
        panelPosition = "follow_bar";
        randomEnabled = false;
        randomIntervalSec = 300;
        recursiveSearch = false;
        setWallpaperOnAllMonitors = true;
        transitionDuration = 1500;
        transitionEdgeSmoothness = 0.05;
        transitionType = "fade";
        useWallhaven = false;
        wallhavenCategories = "111";
        wallhavenOrder = "desc";
        wallhavenPurity = "100";
        wallhavenQuery = "";
        wallhavenResolutionHeight = "";
        wallhavenResolutionMode = "atleast";
        wallhavenResolutionWidth = "";
        wallhavenSorting = "relevance";
      };
    };
  };
}
