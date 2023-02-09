{
  programs.nixvim = {
    plugins = {
      lsp = {
        enable = true;

        servers = {
          rnix-lsp.enable = true;
        };
      };

      lspsaga = {
        enable = true;

        headers = {
          hint = " ";
          info = " ";
          warning = " ";
          error = " ";
        };

        signs = {
          hint = " ";
          info = " ";
          warning = " ";
          error = " ";
        };

        keys = {
          finderAction = {
            quit = "q";
            vsplit = "v";

            scrollDown = "<Tab>";
            scrollUp = "<S-Tab>";
          };

          codeAction = {
            quit = "q";
          };
        };

        icons = {
          codeAction = "";
        };
      };
    };

    maps.normal = {
      "<leader>o".action = "<cmd>Lspsaga outline<cr>";

      "<S-k>".action = "<cmd>Lspsaga hover_doc<cr>";
      "<A-k>".action = "<cmd>Lspsaga show_line_diagnostics<cr>";
      "<S-f>".action = "<cmd>Lspsaga lsp_finder";
      "<A-a>".action = "<cmd>Lspsaga code_action<cr>";
      "<S-r>".action = "<cmd>Lspsaga rename<cr>";
    };
  };
}