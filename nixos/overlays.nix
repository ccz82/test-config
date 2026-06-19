{inputs, ...}: {
  nixpkgs.overlays = [
    inputs.niri.overlays.niri
    (self: super: {
      openldap = super.openldap.overrideAttrs (_: {
        doCheck = false;
      });
    })
  ];
}
