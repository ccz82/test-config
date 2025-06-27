{
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  # NOTE: maybe change this!
  nix.settings = {
    substituters = ["https://walker.cachix.org"];
    trusted-public-keys = ["walker.cachix.org-1:fG8q+uAaMqhsMxWjwvk0IMb4mFPFLqHjuvfwQxE4oJM="];
  };
}
