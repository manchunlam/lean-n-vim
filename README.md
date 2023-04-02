# Neovim Sandbox

<!-- vim-markdown-toc GFM -->

* [Launch](#launch)
* [`packer` Commands](#packer-commands)
* [Check vim Keystroke Mapping](#check-vim-keystroke-mapping)
* [Check Language Servers](#check-language-servers)
  * [Configuring Language Servers](#configuring-language-servers)
* [References](#references)

<!-- vim-markdown-toc -->

## Launch

Download `nvim.appimage` from `neovim/neovim` repo to repo root.

Then run

```shell
# At this repo root

chmod u+x ./nvim.appimage

XDG_CONFIG_HOME="$PWD/config" XDG_DATA_HOME="$PWD/local/share" \
  XDG_STATE_HOME="$PWD/local/state" ./nvim.appimage
```

## `packer` Commands

1. Uninstall plugins

    ```text
    " Remove `use` entry, un-require config Lua file
    :PackerClean

    " restart nvim

    :PackerSync
    ```

2. Install plugins

    ```text
    " Add `use` entry to 00-packer.lua
    " restart nvim
    :PackerInstall

    " require Lua config file
    "restart nvim
    ```

## Check vim Keystroke Mapping

```
" Keystrokes `g` + `d`
:verbose map gd

" Keystrokes `\` + `t`
:verbose <leader>t

" Keystrokes `Ctrl` + `p`
:verbose <C-p>
```

## Check Language Servers

When a language file (e.g. `foo.rb`) is open,

```
" Display installed servers, and if it is attached to current file
:LspInfo

" Display any logs from Language Server (e.g. from `solargraph`)
:LspLog
```

### Configuring Language Servers

See [`03-nvim-lspconfig.lua`][7]

## References

1. [`ftplugin` Files][1]
2. [Neovim plugins w/ Packer - Christ Chiarulli][2]
3. [Step-by-Step Guide Configuring LSP - Amy Li][3]
4. [Configuring LSP in Neovim - Marcio Flavio][4]
5. [NvimTree - Documentation][5]
6. [Build Your First Neovim Configuration in Lua - Heiker Curiel][6]
7. [Collection of Neovim Plugins][8]


[1]: https://github.com/gotgenes/dotfiles/tree/main/private_dot_config/nvim/ftplugin
[2]: https://www.chiarulli.me/Neovim-2/03-plugins/
[3]: https://levelup.gitconnected.com/a-step-by-step-guide-to-configuring-lsp-in-neovim-for-coding-in-next-js-a052f500da2
[4]: https://blog.codeminer42.com/configuring-language-server-protocol-in-neovim/
[5]: https://docs.rockylinux.org/books/nvchad/nvchad_ui/nvimtree/
[6]: https://vonheikemen.github.io/devlog/tools/build-your-first-lua-config-for-neovim/
[7]: config/nvim/lua/plugins/03-nvim-lspconfig.lua#L3-L13
[8]: https://github.com/rockerBOO/awesome-neovim
