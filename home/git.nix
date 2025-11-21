{
  username,
  email,
  ...
}: {
  programs.git = {
    enable = true;
    settings = {
      init.defaultBranch = "main";
      user.name = "${username}";
      user.email = "${email}";
    };
  };
}
