for file in ~/.{bash_prompt,aliases}; do
    [ -r "$file" ] && source "$file"
done
unset file

export MYSQL_HOME=/usr/local/mysql-5.6.14-osx10.7-x86_64

export PATH=$MYSQL_HOME/bin:$PATH
export PATH=/usr/local/bin:$PATH

if [ -f ~/dotfiles/completion/git-completion.bash ]; then
	.  ~/dotfiles/completion/git-completion.bash
fi

if [ -f ~/dotfiles/completion/maven-completion.bash ]; then
	. ~/dotfiles/completion/maven-completion.bash
fi

if [ -f ~/dotfiles/completion/npm-completion.bash ]; then
	. ~/dotfiles/completion/npm-completion.bash
fi

function gi() { curl http://www.gitignore.io/api/$@ ;}

export NVM_DIR="/Users/guilherme/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion

#THIS MUST BE AT THE END OF THE FILE FOR JENV TO WORK!!!
[[ -s "/Users/guilhermesousa/.jenv/bin/jenv-init.sh" ]] && source "/Users/guilhermesousa/.jenv/bin/jenv-init.sh" && source "/Users/guilhermesousa/.jenv/commands/completion.sh"
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export M2_HOME=/opt/apache-maven-3.3.3
export M2=$M2_HOME/bin
export MAVEN_OPTS="-Xms256m -Xmx512m"
export PATH=$M2:$PATH
