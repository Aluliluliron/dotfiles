set -g posh_theme /home/ace/.config/poshthemes/metaace.omp.toml

function fish_prompt
    set -l stack_count (count $dirstack)
    set -l omp_duration "$CMD_DURATION$cmd_duration"
    # check if variable set, < 3.2 case
    if set -q omp_lastcommand; and test "$omp_lastcommand" = ""
      set omp_duration 0
    end
    # works with fish >=3.2
    if set -q omp_last_status_generation; and test "$omp_last_status_generation" = "$status_generation"
      set omp_duration 0
    end
    if set -q status_generation
      set -gx omp_last_status_generation $status_generation
    end

    /usr/local/bin/oh-my-posh --config $posh_theme --error $status --execution-time $omp_duration --stack-count $stack_count
end

function postexec_omp --on-event fish_postexec
  # works with fish <3.2
  # pre and postexec not fired for empty command in fish >=3.2
  set -gx omp_lastcommand $argv
end


function export_poshconfig
  set -l file_name $argv[1]
  set -l format $argv[2]
  if not test -n "$file_name"
    echo "Usage: export_poshconfig \"filename\""
    return
  end
  if not test -n "$format"
    set format "json"
  end
  /usr/local/bin/oh-my-posh --config $posh_theme --print-config --config-format $format > $file_name
end

function set_colors
  set -U fish_color_command           "#CF8EF4"
  set -U fish_color_quote             "#44EB9F"
  set -U fish_color_redirection       "#D8A6F4"
  set -U fish_color_end               "#7ACBEA"
  set -U fish_color_error             "#FA5AA4"
  set -U fish_color_param             "#A1D5F7"
  set -U fish_color_selection         "#F4F4F4" --bold --background="#434C5E"
  set -U fish_color_search_match      "#FAA687"
  set -U fish_color_operator          "#63C5EA"
  set -U fish_color_escape            "#63C5EA"
  set -U fish_color_cwd               "#2BE491"
  set -U fish_color_cwd_root          "#FA5AA4"
  set -U fish_color_autosuggestion    "#7382A1"
  set -U fish_color_user              "#2BE491"
  set -U fish_color_comment           "#7382A1"
  set -U fish_pager_color_completion  "#7382A1"
  set -U fish_pager_color_description "#FAA687" yellow
  set -U fish_color_history_current   normal
  set -U fish_color_cancel            "#373E4D" --bold --background="#FA5AA4"
  set -U fish_color_match             normal
  set -U fish_color_normal            normal
  set -U fish_pager_color_prefix      "#44EB9F" --bold --underline
  set -U fish_pager_color_progress    "#373E4D" --background="#D8A6F4"
  set -U fish_pager_color_completion  "#A1D5F7"
  set -U fish_color_search_match      bryellow --background=brblack
  set -U fish_color_history_current   --bold
  set -U fish_color_match             --background=brblue
end

thefuck --alias | source
alias ls "colorls --dark --gs --sd"
set_colors
