_: {
  plugins.ollama = {
    enable = true;
    model = "llama3.1:8b";
  };
  keymaps = [
    {
      mode = ["n" "v"];
      key = "<leader>co";
      action = ":<c-u>lua require('ollama').prompt()<cr>";
      options = {
        silent = true;
        desc = "Ollama prompt";
      };
    }
  ];
}
