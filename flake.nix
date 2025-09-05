{
  outputs = {
    self,
    ...
  }: {
    overlays.default = final: prev: {
      miniShell = final.mkShell.override {
        stdenv = final.stdenvNoCC.override {
          cc                     = null;
          preHook                = "";
          allowedRequisites      = null;
          initialPath            = [final.coreutils];
          shell                  = final.lib.getExe final.bash;
          extraNativeBuildInputs = [];
        };
      };
    };
  };
}
