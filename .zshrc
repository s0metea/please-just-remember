export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="spaceship"
SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ORDER=(
  time           # Time stamps section
  user           # Username section
  dir            # Current directory section
  host           # Hostname section
  git            # Git section (git_branch + git_status)
  exec_time      # Execution time
  async          # Async jobs indicator
  line_sep       # Line break
  sudo           # Sudo indicator
  char           # Prompt character
)

# Plugins
plugins=(
git
zsh-autocomplete
zsh-autosuggestions
zsh-syntax-highlighting
)

# Oh my zsh
source $ZSH/oh-my-zsh.sh

# Autocomplete setup for humans
bindkey -M menuselect  '^[[D' .backward-char  '^[OD' .backward-char
bindkey -M menuselect  '^[[C'  .forward-char  '^[OC'  .forward-char
bindkey -M menuselect '^M' .accept-line

# ITerm Shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Aliases
alias cat='bat --paging=never'
