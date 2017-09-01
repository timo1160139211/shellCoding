# custom aliases for gaoyisheng
# www.gaoyisheng.site

#ls
alias la="ls -a"
alias ll="ls -l"
alias l="ls -CF"

#git 
alias gs="git status"
alias ga="git add ."
alias gm="git commit"
alias gp="git push"
alias gr="git reset"

#applications
alias pgadmin="python /usr/local/lib/python2.7/dist-packages/pgadmin4/pgAdmin4.py &> /dev/tty"
alias wildfly="bash /home/gaoyisheng/devel/wildfly-10.1.0.Final/bin/standalone.sh &> /dev/tty"
alias mcpwd="mvn clean package wildfly:deploy &> /dev/tty"

