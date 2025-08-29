self: super: {
  zls = super.zls.overrideAttrs (finalAttrs: prevAttrs: {
    version = "0.15.0";

    src = super.fetchFromGitHub {
      owner = "zigtools";
      repo = "zls";
      tag = finalAttrs.version;
      fetchSubmodules = true;
      # update this hash with `nix-prefetch` or after build failure
      hash = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
    };

    nativeBuildInputs = [ super.zig_0_15.hook ];

    postPatch = ''
      ln -s ${super.callPackage ./deps.nix { }} $ZIG_GLOBAL_CACHE_DIR/p
    '';

    meta = prevAttrs.meta // {
      changelog = "https://github.com/zigtools/zls/releases/tag/${finalAttrs.version}";
    };
  });
}
