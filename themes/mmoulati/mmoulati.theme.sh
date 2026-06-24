SCM_THEME_PROMPT_DIRTY=" ${_omb_prompt_red}✗"
SCM_THEME_PROMPT_CLEAN=" ${_omb_prompt_bold_green}✓"
SCM_THEME_PROMPT_PREFIX=" ${_omb_prompt_navy}(${_omb_prompt_bold_red}"
SCM_THEME_PROMPT_SUFFIX="${_omb_prompt_bold_navy})"

GIT_THEME_PROMPT_DIRTY=" ${_omb_prompt_bold_red}✗"
GIT_THEME_PROMPT_CLEAN=" ${_omb_prompt_bold_green}✓"
GIT_THEME_PROMPT_PREFIX=" ${_omb_prompt_bold_navy}git:(${_omb_prompt_bold_red}"
GIT_THEME_PROMPT_SUFFIX="${_omb_prompt_bold_navy})"

OMB_PROMPT_SHOW_PYTHON_VENV=${OMB_PROMPT_SHOW_PYTHON_VENV:=false}

# Nicely formatted terminal prompt
function _omb_theme_PROMPT_COMMAND(){

  local code=$?
  local color

  #local python_venv
  #_omb_prompt_get_python_venv
  # PS1="\n${_omb_prompt_bold_gray}[${_omb_prompt_navy}\@${_omb_prompt_bold_gray}]-"
  # PS1+="${_omb_prompt_bold_gray}[${_omb_prompt_green}\u${_omb_prompt_olive}@${_omb_prompt_green}\h${_omb_prompt_bold_gray}]-"
  # PS1+="${_omb_prompt_bold_gray}[${_omb_prompt_purple}\w${_omb_prompt_bold_gray}]-${python_venv}"

  if [ $code == 0 ]; then
    color="${_omb_prompt_bold_green}"
  else
    color="${_omb_prompt_bold_red}"
  fi

  PS1=
  PS1+="$color\n╭───[$code] ${_omb_prompt_bold_cyan}\w$(scm_prompt_info)"
  PS1+="$color\n╰───▶ ${_omb_prompt_reset_color} "

}

_omb_util_add_prompt_command _omb_theme_PROMPT_COMMAND



