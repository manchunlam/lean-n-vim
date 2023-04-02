# Notes for Windows Subsystem for Linux

## Font

1. Download [Droid Sans Mono Nerd Font Complete **Mono** Windows
  Compatible][2]

    1. Right-click on downloaded file > _Show more options_ > _Install for all
      users_

2. Start Ubuntu WSL

    1. Top menu bar, next to `+`, expand _downward arrow_ > _Settings_

    2. In the GUI that pops up, lower left corner > _Open JSON file_

    3. Find the key `$.profiles.defaults`

        Change the value from `{}` to

        ```json
        {
          "font": {
            "face": "DroidSansMono NFM"
          }
        }
        ```

3. In the same _Settings_ GUI, left nav > _Profiles_ > _Windows PowerShell_ >
  _Appearance_

    1. Change _Fontface_ to _DroidSansMono NFM_

    2. Repeat for profiles _Ubuntu-20.04_ and _Ubuntu 20.04.5 LTS_

4. Exit WSL, then run the following in a PowerShell prompt

    ```powershell
    wsl --shutdown
    ```

    Start Ubuntu WSL again


## References

1. [How to Quickly Install New Fonts on Windows 11][1]

    Make sure you use the right section instructions.

    The section _How to Install Fonts on Windows 11_ does **not** work

[1]: https://www.groovypost.com/howto/install-or-uninstall-fonts-on-windows-11/
[2]: https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete%20Mono%20Windows%20Compatible.otf
