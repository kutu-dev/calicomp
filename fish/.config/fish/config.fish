if status is-interactive
    # Extra paths
    fish_add_path -g /usr/local/bin/
    fish_add_path -g $HOME/.local/bin/
    fish_add_path -g /opt/texlive/2023/bin/x86_64-linux/
    fish_add_path -g /opt/homebrew/bin/

    if set -q XDG_DATA_HOME;
        set xdg_data_home_resolved_path $XDG_DATA_HOME
    else
        set xdg_data_home_resolved_path $HOME/.local/share
    end

    fish_add_path -g $xdg_data_home_resolved_path/fnm/


    # Source scripts
    starship init fish | source
    enable_transience

    pyenv init - | source
    zoxide init fish | source
    fnm env | source

    # Abbreviation
    abbr --add kpi "sudo xbps-install -S"
    abbr --add kpr "sudo xbps-remove -R"
    abbr --add c. "code ."
    abbr --add v. "v ."

    # Enviroment variables
    set -xg EDITOR nvim
    set -xg VISUAL nvim
    set -xg PYENV_ROOT $HOME/.local/share/pyenv/

    # Commands run at startup
    neofetch
end
