# Plugin Notes

1. `peek`

    1. Need to install [`deno`][1] first

    2. Move binary to `~/.local/bin`

    3. Verify with `deno --version`

    4. At Markdown file, use `:PeekOpen` to generate preview

2. `nvim-tree`

    * Use `:NvimTreeOpen` to show file explorer

    * `<C-v>` to show file in vertical split

    * `<C-t>` to open file in new tab

    * `g?` to show help

    * `H` to show hidden files

3. `wiki.vim`

    * `<leader>w<leader>w` (`\w\w`) to show diary

    * `<C-p>` and `<C-n>` to move among diaries

    * `<leader>ww` to show documents index

4. `wim-markdown-toc`

    * At Markdown file, `:GenTocGFM` generates Table of Content under cursor

5. `fzf-lua`

    * `<leader>t` allows you to fuzzy search files at `$PWD`

6. `nvim-snippy`

    * See `config/nvim/snippets` directory

    * Type snippet name, then `<Tab>` for autocomplete

    * Use `<Tab>`, and `<S-Tab>`, to move between fillable fields

[1]: https://deno.land/manual@v1.32.2/getting_started/installation
