_:
let
  models = {
    # claude = "claude-sonnet-4";
    # claudeThought = "claude-3.7-sonnet-thought";
    # sonarPro = "sonar-pro";
    qwen = "qwen3:8b";
  };
in
{
  plugins.avante = {
    enable = true;

    settings = {
      # Set the default provider to use
      #   provider = "ollama";
      #   ollama = {
      #     model = models.qwen;
      #   };
      # providers = {
      #   perplexity = {
      #     endpoint = "https://api.perplexity.ai/chat/completions";
      #     model = models.sonarPro;
      #     timeout = 60000; # Increase timeout to 60 seconds
      #     extra_request_body = {
      #       temperature = 0;
      #       max_tokens = 4096;
      #     };
      #   };
      # };

      # behavior settings
      behaviour = {
        auto_suggestions = false; # set true for auto-suggestions
        auto_set_highlight_group = true;
        auto_set_keymaps = true;
        auto_apply_diff_after_generation = false;
        support_paste_from_clipboard = false;
      };

      # mappings (these are defaults, customize as needed)
      mappings = {
        # main avante commands
        ask = "<leader>aa";
        edit = "<leader>ae";
        refresh = "<leader>ar";
        # diff commands
        diff = {
          ours = "co";
          theirs = "ct";
          all_theirs = "ca";
          both = "cb";
          cursor = "cc";
          next = "]x";
          prev = "[x";
        };
        # suggestion commands
        suggestion = {
          accept = "<M-l>";
          next = "<M-]>";
          prev = "<M-[>";
          dismiss = "<C-]>";
        };
        # jump commands
        jump = {
          next = "]]";
          prev = "[[";
        };
        # submit command
        submit = {
          normal = "<CR>";
          insert = "<C-s>";
        };
        # sidebar toggle
        sidebar = {
          apply_all = "A";
          apply_cursor = "a";
          switch_windows = "<Tab>";
          reverse_switch_windows = "<S-Tab>";
        };
      };

      # hints for better ai responses
      hints = {
        enabled = true;
      };

      # windows configuration
      windows = {
        position = "right"; # right, left, top, bottom
        wrap = true;
        width = 30; # % of screen width
        sidebar_header = {
          align = "center"; # left, center, right
          rounded = true;
        };
      };

      # file selector for multi-file context
      file_selector = {
        provider = "telescope"; # native, fzf, telescope
      };
    };
  };
}
