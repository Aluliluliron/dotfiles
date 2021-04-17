# Defined interactively
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
