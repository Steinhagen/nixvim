{
  plugins.neo-tree = {
    enable = true;
    sources = [
      "filesystem"
      "buffers"
      "git_status"
      "document_symbols"
    ];
    addBlankLineAtTop = false;

    filesystem = {
      bindToCwd = false;
      followCurrentFile = {
        enabled = true;
      };
    };

    defaultComponentConfigs = {
      indent = {
        withExpanders = true;
        expanderCollapsed = "󰅂";
        expanderExpanded = "󰅀";
        expanderHighlight = "NeoTreeExpander";
      };

      gitStatus = {
        symbols = {
          added = " ";
          conflict = "󰩌 ";
          deleted = "󱂥";
          ignored = " ";
          modified = " ";
          renamed = "󰑕";
          staged = "󰩍";
          unstaged = "";
          untracked = " ";
        };
      };
    };
  };

  keymaps = [
    {
      mode = [ "n" ];
      key = "<leader>e";
      action = "<cmd>Neotree toggle<cr>";
      options = {
        desc = "Open/Close Neotree";
      };
    }
  ];

  extraConfigLua = ''
    require("neo-tree").setup({
      event_handlers = {
        {
          event = "neo_tree_buffer_enter",
          handler = function(arg)
            vim.cmd [[
              setlocal number
              setlocal relativenumber
            ]]
          end,
        }
      }
    })
  '';
}
