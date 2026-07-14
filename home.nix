{ config, pkgs, user, ... }:

let
  dotfiles = "${config.home.homeDirectory}/.dotfiles";
in

{
  home.username = user;
  home.homeDirectory = "/Users/${user}";
  home.stateVersion = "24.11";
  home.packages = with pkgs; [
    # the font everything renders in
    nerd-fonts.hack
  ];
  fonts.fontconfig.enable = true;
  home.sessionVariables.EDITOR = "vim";

  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;      # ghost text from history
    syntaxHighlighting.enable = true;  # commands turn green when valid
    # ctrl-f shortcut to accept autosuggestions
    initContent = ''
      bindkey '^f' autosuggest-accept
    '';
    shellAliases = {
        # Git 
      ".." = "cd ..";
      ga = "git add";
      gpush = "git push";
      gpull = "git pull";
      gs = "git status";
      gc = "git commit -m";
      gb = "git branch";

      # File exploring
      lsla = "ls -la";
      lsa = "ls -A";

      # other
      cat = "bat";
    };
  };

    # ~/.config just points to the files in this repo
    home.file.".config/starship.toml".source =
        config.lib.file.mkOutOfStoreSymlink "${dotfiles}/home/.config/starship.toml";

  home.file.".claude/CLAUDE.md".source =
    config.lib.file.mkOutOfStoreSymlink "${dotfiles}/home/AGENTS.md";
  home.file.".codex/AGENTS.md".source =
    config.lib.file.mkOutOfStoreSymlink "${dotfiles}/home/AGENTS.md";
}