{ user, ... }:

{  
    # Determinate already manages the Nix daemon, so nix-darwin shouldn't.
    nix.enable = false;

    nixpkgs.config.allowUnfree = true;
    nixpkgs.hostPlatform = "aarch64-darwin"; # use x86_64-darwin for Intel CPU

    system.primaryUser = user;

    # Set user home directory
    users.users.${user} = {
        home = "/Users/${user}";
    };

    system.stateVersion = 6;

    system.defaults = {
        NSGlobalDomain = {
        KeyRepeat = 2;          # fast key repeat
        InitialKeyRepeat = 15;  # short delay before repeat
        AppleShowAllExtensions = true; # show hidden files
        };
        dock.autohide = true;
        dock.orientation = "left";
        finder.FXPreferredViewStyle = "Nlsv";  # list view by default
        finder.CreateDesktop = false;          # clean desktop
    };

    nix-homebrew = {
        enable = true;
        inherit user;
        autoMigrate = true; # Automatically adopts existing Homebrew
    };
    homebrew = {
        # Install Homebrew under the default prefix
        enable = true;
        onActivation.cleanup = "zap";  # remove anything not listed here
        onActivation.autoUpdate = true;
        onActivation.extraFlags = [ "--force" ];
        brews = [
            "herdr"
            "bat"
        ];
        casks = [
            "raycast"
            "claude-code"
            "brave-browser"
            "obsidian"
            "cleanshot"
            "wireshark-app"
            "powershell"
            "1password"
            "visual-studio-code"
            "codex"
            "cursor"
        ];
    };
}