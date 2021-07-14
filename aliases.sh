# ALIASES AND USEFUL STUFF

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."


alias mci="mvn clean install"
alias mcit="mvn clean test"
alias mvnf="mvn -e -B com.coveo:fmt-maven-plugin:format && mvn -e -B com.github.ekryd.sortpom:sortpom-maven-plugin:sort"

alias gcm="git checkout master"
alias gfpm="git fetch && git pull origin master"
alias gits="git status"
alias gitd="git diff"
alias glp="git log --pretty=oneline"

alias tailf="tail -n 100 -f"
