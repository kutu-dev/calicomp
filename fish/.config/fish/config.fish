if status is-interactive
    # Source scripts
    starship init fish | source
    pyenv init - | source

    # Abbreviation
    abbr --add kpi "sudo xbps-install -S"
    abbr --add kpr "sudo xbps-remove -R"
    abbr --add c. "code ."

    # Commands run at startup
    neofetch
end
