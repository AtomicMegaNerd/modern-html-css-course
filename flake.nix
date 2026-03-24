{
  description = "This is a program that creates RSS feeds for any starred GitHub repos";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    git-hooks = {
      url = "github:cachix/git-hooks.nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      git-hooks,
    }:
    let
      systems = [
        "x86_64-linux"
        "aarch64-darwin"
      ];
      buildPkgsConf =
        system:
        import nixpkgs {
          inherit system;
          config.allowUnfree = true;
        };

      buildPreCommitCheck =
        system:
        git-hooks.lib.${system}.run {
          src = ./.;
          hooks = {
            trim-trailing-whitespace.enable = true;
            mixed-line-endings.enable = true;
            end-of-file-fixer.enable = true;
            check-yaml.enable = true;
            check-toml.enable = true;
          };
        };
    in
    {
      checks = nixpkgs.lib.genAttrs systems (system: {
        pre-commit-check = buildPreCommitCheck system;
      });

      devShells = nixpkgs.lib.genAttrs systems (
        system:
        let
          pkgs = buildPkgsConf system;
        in
        {
          default = pkgs.mkShell {
            inherit (self.checks.${system}.pre-commit-check) shellHook;
            # The packages we need for this project
            buildInputs = with pkgs; [
              bash-language-server
              yaml-language-server
              emmet-language-server
              vscode-langservers-extracted
              htmlhint
            ];
          };
        }
      );
    };

}
