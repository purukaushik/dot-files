# Path to your oh-my-zsh installation.
export ZSH=/Users/pswaminathan/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="clean"
# Plugins
plugins=(git bundler brew docker emoji mvn node npm pip sbt python scala sudo javac scalac java gradle spark-shell hadoop hdfs mongo gunicorn)

# User configuration

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
export MANPATH="/usr/local/man:$MANPATH"

# ZSH source
source $ZSH/oh-my-zsh.sh

# MONGO
export MONGODB_URI='mongodb://localhost:27017/db'

# POSTGRES APP
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

# SPARK_HOME
export SPARK_HOME=/usr/local/spark

# SPARK IN PATH
export PATH=$PATH:$SPARK_HOME/bin
export PATH="/usr/local/bin:$PATH"

#HADOOP 
export HADOOP_HOME=/usr/local/hadoop
export PATH=$PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin

#SPARK-NOTEBOOK
export SPARK_NOTEBOOK_HOME=/Users/pswaminathan/Desktop/spark-notebook/
export PATH=$PATH:$SPARK_NOTEBOOK_HOME/bin
export JAVA_OPTS="-Xms256m -Xmx4g"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export NVM_DIR="/Users/pswaminathan/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

DISABLE_LS_COLORS="true"


export PATH=$PATH:$HOME/
export HADOOP_CLASSPATH=$(hadoop classpath)

# added by travis gem
[ -f /Users/pswaminathan/.travis/travis.sh ] && source /Users/pswaminathan/.travis/travis.sh
