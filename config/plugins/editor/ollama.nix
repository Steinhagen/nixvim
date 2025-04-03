_: {
  plugins.ollama = {
    enable = true;
    model = "qwen2.5-coder:7b";
  };
  keymaps = [
    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>oc";
      action = ":<c-u>lua require('ollama').prompt()<cr>";
      options = {
        silent = true;
        desc = "Ollama prompt";
      };
    }

    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>oe";
      action = ":<c-u>lua require('ollama').prompt('Explain_Code')<cr>";
      options = {
        silent = true;
        desc = "Ollama explain code";
      };
    }

    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>og";
      action = ":<c-u>lua require('ollama').prompt('Generate_Code')<cr>";
      options = {
        silent = true;
        desc = "Ollama generate code";
      };
    }

    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>oa";
      action = ":<c-u>lua require('ollama').prompt('Ask_About_Code')<cr>";
      options = {
        silent = true;
        desc = "Ollama ask about code";
      };
    }
  ];
}
