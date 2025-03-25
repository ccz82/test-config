{
  services.gnome.gnome-keyring.enable = true;
  security.pam.services.security.enableGnomeKeyring = true;
  security.pam.services.hyprlock.enableGnomeKeyring = true;
  security.pam.services.greetd.enableGnomeKeyring = true;
}
