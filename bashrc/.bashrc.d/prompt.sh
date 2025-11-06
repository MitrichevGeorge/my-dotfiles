RESET="\[\033[0m\]"

BLACK_FG="\[\033[30m\]"
RED_FG="\[\033[31m\]"
GREEN_FG="\[\033[32m\]"
YELLOW_FG="\[\033[33m\]"
BLUE_FG="\[\033[34m\]"
MAGENTA_FG="\[\033[35m\]"
CYAN_FG="\[\033[36m\]"
WHITE_FG="\[\033[37m\]"
GREY_FG="\033[38;2;64;64;64m"

BLACK_BG="\[\033[40m\]"
RED_BG="\[\033[41m\]"
BLUE_BG="\[\033[44m\]"
CYAN_BG="\[\033[46m\]"
GREY_BG="\033[48;2;64;64;64m"

CUSTOM_FG="\[\033[38;2;122;162;247m\]"
CUSTOM_BG="\[\033[48;2;122;162;247m\]"

CYAN_FG3="\033[96m"
BOLD="\[\033[1m\]"
NORMAL="\[\033[22m\]"

SEPARATOR=""

prompt_command() {
    local EXIT=$?

    local VENV=""
    if [[ -n "$VIRTUAL_ENV" ]]; then
        local venv_name=$(basename "$VIRTUAL_ENV")
        if [ ${#venv_name} -gt 10 ]; then
            venv_name="${venv_name:0:7}..."
        fi
        local VENV_FG="\[\033[38;2;100;170;255m\]"
        VENV="${VENV_FG} ${venv_name}${RESET}${GREY_BG}"
    fi

    if [ $EXIT -eq 0 ]; then
        PS1="${BOLD}${CUSTOM_BG}${BLACK_FG} \u@\h ${NORMAL}${RESET}${CUSTOM_FG}${GREY_BG}${SEPARATOR}${RESET}${CYAN_FG3}${GREY_BG} \w${VENV} ${RESET}${GREY_FG}${SEPARATOR}${CYAN_FG} "
    else
        PS1="${BOLD}${CUSTOM_BG}${BLACK_FG} \u@\h ${NORMAL}${RESET}${CUSTOM_FG}${GREY_BG}${SEPARATOR}${RESET}${RED_FG}${GREY_BG} \w${VENV} ${RESET}${GREY_FG}${SEPARATOR}${CYAN_FG} "
    fi
}

PROMPT_COMMAND=prompt_command
