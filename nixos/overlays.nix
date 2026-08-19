{inputs, ...}: {
  nixpkgs.overlays = [
    (final: prev: {
      udiskie = prev.udiskie.overridePythonAttrs (old: {
        doCheck = false;
      });
    })
  ];
}
