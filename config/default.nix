_: {
  imports = [
    # General Configuration
    ./settings.nix
    ./keymaps.nix
    ./auto_cmds.nix
    ./file_types.nix

    # Themes
    ./plugins/themes

    # Completion
    ./plugins/cmp/cmp.nix
    ./plugins/cmp/cmp-copilot.nix
    ./plugins/cmp/lspkind.nix
    ./plugins/cmp/autopairs.nix
    ./plugins/cmp/schemastore.nix

    # Snippets
    ./plugins/snippets/luasnip.nix

    # Editor plugins and configurations
    ./plugins/editor/comment.nix
    ./plugins/editor/neo-tree.nix
    ./plugins/editor/treesitter.nix
    ./plugins/editor/undotree.nix
    ./plugins/editor/illuminate.nix
    ./plugins/editor/indent-blankline.nix
    ./plugins/editor/todo-comments.nix
    ./plugins/editor/copilot-chat.nix
    ./plugins/editor/ollama.nix
    ./plugins/editor/navic.nix

    # UI plugins
    ./plugins/ui/bufferline.nix
    ./plugins/ui/lualine.nix
    ./plugins/ui/startup.nix

    # LSP and formatting
    ./plugins/lsp/lsp.nix
    ./plugins/lsp/conform.nix
    ./plugins/lsp/fidget.nix

    # Git
    ./plugins/git/lazygit.nix
    ./plugins/git/gitsigns.nix

    # Utils
    ./plugins/utils/telescope.nix
    ./plugins/utils/whichkey.nix
    ./plugins/utils/extra_plugins.nix
    ./plugins/utils/mini.nix
    ./plugins/utils/markdown-preview.nix
    ./plugins/utils/obsidian.nix
    ./plugins/utils/remote-nvim.nix
    ./plugins/utils/render-markdown.nix
    ./plugins/utils/toggleterm.nix
    ./plugins/utils/web-devicons.nix
  ];
}
