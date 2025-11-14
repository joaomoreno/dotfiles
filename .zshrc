# Aliases
alias ls=eza
alias l="ls -lah"
alias cat=bat
alias c=code-insiders
alias ct="code-insiders --transient"
alias cv="npx @vscode/vscode-bisect@latest --sanity --commit "
alias g="git"

# Keybindings
bindkey '\e[H'    beginning-of-line
bindkey '\e[F'    end-of-line

# Variables
export CDPATH="$HOME/Work"
export PATH="$HOME/bin:$PATH"
export PATH="/opt/homebrew/opt/node@22/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="${PATH}:/Users/joao/.azureauth/0.9.1"

# Deno
. "/Users/joao/.deno/env"

# Bun
[ -s "/Users/joao/.bun/_bun" ] && source "/Users/joao/.bun/_bun"

# Completions
if [[ ":$FPATH:" != *":/Users/joao/.zsh/completions:"* ]]; then export FPATH="/Users/joao/.zsh/completions:$FPATH"; fi
autoload -Uz compinit
if [ "$(date +'%j')" != "$(stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)" ]; then
    compinit
else
    compinit -C
fi

# Enable menu selection (allows arrow keys / Tab to cycle through matches)
zstyle ':completion:*' menu select

# Use colors for matches
zstyle ':completion:*:descriptions' format '%F{yellow}-- %d --%f'
zstyle ':completion:*:messages' format '%F{magenta}%d%f'
zstyle ':completion:*:warnings' format '%F{red}no matches found%f'

# Enable colorized completion listings (same colors as `ls`)
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# Enable better word boundaries for Alt Backspace
autoload -Uz select-word-style
select-word-style bash

eval "$(starship init zsh)"
