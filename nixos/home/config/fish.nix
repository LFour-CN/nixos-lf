{ ... }:
{
  home.file.".config/fish/functions/fish_prompt.fish".text = ''
    function fish_prompt --description 'Informative prompt'
      set -l last_pipestatus $pipestatus
      set -lx __fish_last_status $status

      if functions -q fish_is_root_user; and fish_is_root_user
        printf '%s@%s %s%s%s# ' $USER (prompt_hostname) \
            (set_color $fish_color_cwd_root) (prompt_pwd) (set_color normal)
      else
        set -l status_color (set_color $fish_color_status)
        set -l statusb_color (set_color --bold $fish_color_status)
        set -l pipestatus_string (__fish_print_pipestatus "[" "]" "|" "$status_color" "$statusb_color" $last_pipestatus)
        
        printf '['(set_color --bold white)'%s%s@Linux] ' $USER
        printf (set_color green)'%s%s%s ' $PWD $pipestatus_string
        printf '\n'(set_color blue)'====>$ '(set_color normal)
      end
    end
'';
}

