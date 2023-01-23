local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
local user_host="%{$fg[yellow]%}%n@%m%{$reset_color%}"

local current_dir='%{$fg[cyan]%}%~%{$reset_color%}'
local rvm_ruby='%{$fg[red]%}$(rvm_prompt_info || rbenv_prompt_info)%{$reset_color%}'
local git_branch='%{$fg[magenta]%}$(git_prompt_info)%{$reset_color%}'

PROMPT="${user_host}:${current_dir} ${rvm_ruby}
${git_branch} %B$%b "
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%B%F{magenta}"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=" %b%F{red}✗%f"
ZSH_THEME_GIT_PROMPT_CLEAN=" %b%F{green}✔%f"

