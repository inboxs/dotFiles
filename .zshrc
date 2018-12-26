# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/aumujun/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="cloud"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
[[ -s /home/aumujun/.autojump/etc/profile.d/autojump.sh ]] && source /home/aumujun/.autojump/etc/profile.d/autojump.sh

autoload -U compinit && compinit -u
source ~/SoftWare/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/SoftWare/zsh-autosuggestions/zsh-autosuggestions.zsh
alias pc="proxychains4"
v2rayPath="~/SoftWare/v2ray-v2.42-linux-32"
alias v2ray="$v2rayPath/v2ray -config $v2rayPath/vpoint_socks_vmess.json"
alias v2="v2ray > ~/Log/v2ray.log 2>&1 &"
alias c="clear"
alias wget="wget -c"
alias untar="tar -zxvf"

#######Python虚拟环境#########
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/workspace
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
source /usr/bin/virtualenvwrapper.sh
#######Python虚拟环境结束#####

#######Java8配置##########
export JAVA_HOME=/opt/Java/Java8 
export JRE_HOME=${JAVA_HOME}/jre
export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib
export PATH=${JAVA_HOME}/bin:$PATH
######Java8 end....######
alias LinuxBackup="tar -zcvf ArchLinuxBackup.tar.gz --exclude-from=/home/aumujun/excl /"
alias sudo="sudo "
alias archBackup="rsync -av --exclude-from=/home/aumujun/excl --delete / Arch-Backup"
alias ungz="tar zxvf"



export PROJECT_GO=$HOME/Project/Go
export GOROOT=/usr/lib/go
export GOPATH=$HOME/gocode:$PROJECT_GO
export PATH=$PATH:$GOROOT/bin:{$GOPATH//://bin:}/bin

######Gopath目录快速设置######
# cd () {
    # builtin cd "$@"
    # cdir=$PWD
    # while [ "$cdir" != "/" ]; do
        # if [ -e "$cdir/.gopath" ]; then
            # export GOPATH=$cdir
            # break
        # fi
        # cdir=$(dirname "$cdir")
    # done
# }

