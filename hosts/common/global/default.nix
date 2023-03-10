{
  imports = [
    ./nix.nix # Nix configurations.
    ./sudo.nix # Sudo configurations.
    ./packages.nix # Packages for all machines.
    ./openssh.nix # OpenSSH configurations.
    ./age.nix # Secret management.
    ./persistence.nix # Opt-in persistence configurations.
  ];
}
