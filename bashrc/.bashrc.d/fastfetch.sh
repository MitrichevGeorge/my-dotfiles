fastfetch_config() {
    local cols=$(tput cols)
    
    if [ $cols -lt 100 ]; then
        fastfetch -c ~/.config/fastfetch/config-compact.jsonc
    elif [ $cols -lt 120 ]; then
        fastfetch -c ~/.config/fastfetch/config.jsonc
    else
        fastfetch -c ~/.config/fastfetch/config.jsonc
    fi
}

fastfetch_config
