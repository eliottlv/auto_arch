#####################
# Prompt par défaut #
#####################

# Msg de bienvenue
if status --is-interactive
echo \
"     _             _       _     _                  
    / \   _ __ ___| |__   | |   (_)_ __  _   ___  __
   / _ \ | '__/ __| '_ \  | |   | | '_ \| | | \ \/ /
  / ___ \| | | (__| | | | | |___| | | | | |_| |>  < 
 /_/   \_\_|  \___|_| |_| |_____|_|_| |_|\__,_/_/\_\\
"
end

# Personnalisation de la couleur et de l'affichage du prompt
function fish_prompt
        echo (set_color red)"[ "(set_color brgreen)(whoami)(set_color white)"@"(set_color green)(prompt_hostname)(set_color white)": "(set_color blue)(prompt_pwd)(set_color red)" ] "(set_color normal)
end

################
# Alias divers #
################

# Alias d'administration
alias maj="pacman -Syyu"
alias lt="ls -Alh"
alias pc="pacman"
alias mkdir="mkdir -p"

#############################
# Variables d'environnement #
#############################

# Mettre man en couleurs
export MANPAGER=most

# Mettre nano en éditeur par défaut.
export EDITOR=nano

# Hardened malloc()
export LD_PRELOAD="/usr/lib/libhardened_malloc.so"
