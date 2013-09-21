export DEV_HOME=`pwd`
export DH=$DEV_HOME

export JAVA_HOME=`pwd`/jdk7
export PATH=$JAVA_HOME/bin:$PATH

export MAVEN_HOME=`pwd`/maven3
export M2_HOME=$MAVEN_HOME
export PATH=$MAVEN_HOME/bin:$PATH
export MAVEN_OPTS="-Xms256m -Xmx712m -XX:PermSize=128m -XX:MaxPermSize=256m -XX:NewSize=64m -XX:MaxNewSize=128m -Dfile.encoding=UTF-8 -Denv.V3_CONFIG_HOME=/etc/api -Dzett.config.dir=/etc/api/zett"
export V3_CONFIG_HOME="/etc/api"
export MAVEN_REPO="$(pwd)/mavenrepo"
export GIT_CONFIG="$(pwd)/configgit/gitconfig"
export GIT_SSH="$(pwd)/configgit/script/gitapi.sh"
export XDG_CONFIG_HOME=$DH
#-Denv=dev

export VISUAL=vi
#export PATH="$PATH:$HOME/apps/bin"
#Fancy
#export PS1='\[\e]0;\W\a\]\u@\e[32;1m\h\[\e[0m\]:\w:\[$(tput setaf 5)\]`if [ "$(vcprompt)" != "" ]; then echo "\e[32;40m$(vcprompt)\[\e[0m\]"; fi`\[$(tput setaf 2)\]\[$(tput sgr0)\]->'
#export PS1='\[\e]0;\W\a\]\h:\w:\[$(tput setaf 5)\]`if [ "$(vcprompt)" != "" ]; then echo "$(vcprompt)"; fi`\[$(tput setaf 2)\]\[$(tput sgr0)\]->'
GRAY="\[\033[1;30m\]"
LIGHT_GRAY="\[\033[0;37m\]"
CYAN="\[\033[0;36m\]"
LIGHT_CYAN="\[\033[1;36m\]"
NO_COLOUR="\[\033[0m\]"
function use_vcprompt() {
   if [ "`${DH}/configgit/script/vcprompt`" != "" ]; then echo `${DH}/configgit/script/vcprompt`; fi
}
#export PS1="$CYAN##DEV##$NO_COLOUR\[\e]0;\W\a\]\h:\w:\[$(tput setaf 5)\]`if [ \"$(${DH}/configgit/script/vcprompt)\" != \"\" ]; then echo \"$(${DH}/configgit/script/vcprompt)\"; fi`\[$(tput setaf 2)\]\[$(tput sgr0)\]->"
export PS1='\e[1;36m##DEV##\e[0m\[\e]0;\W\a\]\h:\w:\[$(tput setaf 5)\]`use_vcprompt`\[$(tput setaf 2)\]\[$(tput sgr0)\]->'

alias mvn="${DEV_HOME}/maven3/bin/mvn -s ${DEV_HOME}/configgit/maven_settings.xml"
alias debugjetty="MAVEN_OPTS='$MAVEN_OPTS -Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=5005' mvn jetty:run"
alias debugjettypause="MAVEN_OPTS='$MAVEN_OPTS -Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=y,address=5005' mvn jetty:run"
alias mvnsite="mvn clean site -DgenerateProjectInfo=false -DgenerateReports=false -DgenerateSitemap=false"

