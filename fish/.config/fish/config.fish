if status is-interactive
    # Commands run at startup
    neofetch

    # Source scripts
    starship init fish | source
    pyenv init - | source

    # Abbreviation
    abbr --add kpi "sudo xbps-install -S"
    abbr --add kpr "sudo xbps-remove -R"
    abbr --add c. "code ."
end
