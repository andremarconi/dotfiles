# Commands to run in interactive sessions can go here
if status is-interactive

if command -q eza
    abbr -a ls 'eza --group-directories-first --color=auto'
    abbr -a ll 'eza -lh --group-directories-first'

    abbr -a la 'eza -lha --group-directories-first'
    abbr -a l  'eza'
    abbr -a lt 'eza --tree --level=2'
else
    abbr -a ls 'ls --color=auto'
    abbr -a ll 'ls -lah'
    abbr -a la 'ls -A'
    abbr -a l  'ls'
end

# Safety
abbr -a cp 'cp -i'
abbr -a mv 'mv -i'

# Tool Replacements
abbr -a vim 'nvim'
abbr -a cat 'bat'

# System & Utilities
abbr -a update 'sudo apt update && sudo apt upgrade -y'
abbr -a c      'clear'
abbr -a h      'history'

# Path Visualization
abbr -a path 'printf "%s\n" $PATH'

# zoxide path
zoxide init fish --cmd cd | source

switch $TERM
		case 'linux'
			:
		case '*'
			if ! set -q TMUX
				# ensure that the new tmux _also_ starts fish
				exec tmux set-option -g default-shell (which fish) ';' new-session
			end
	end
function fish_prompt
	set_color brblack
	echo -n "["(date "+%H:%M")"] "
	set_color blue
	echo -n (command -q hostname; and hostname; or hostnamectl hostname)
	if [ $PWD != $HOME ]
		set_color brblack
		echo -n ':'
		set_color yellow
		echo -n (basename $PWD)
	end
	set_color green
	printf '%s ' (__fish_git_prompt)
	set_color red
	echo -n '| '
	set_color normal
end
end

