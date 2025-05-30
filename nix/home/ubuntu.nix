{...}: {
  home.username = "ubuntu";
  home.homeDirectory = "/home/ubuntu";
  imports = [
    ./themes/rose-pine.nix
  ];

  programs.git = {
    signing.key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDckxDud0PGdGd60v/1SUa0pbWWe46FcVIbuTijwzeZR";

    extraConfig.gpg = {
      ssh.program = "/opt/1Password/op-ssh-sign";
      gpg.format = "ssh";
      commit.gpgSign = true;
    };
  };
}
