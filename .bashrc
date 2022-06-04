# bash custome
source ~/.git-prompt.sh
export PS1='\[\e[37m\]bash \[\e[0m\]\t \[\e[32m\]\u \[\e[36m\]\w \[\e[31m$(__git_ps1 "(%s)")\[\e[0m\]\$'

# use nvs
export NVS_HOME="$HOME/.nvs"
[ -s "$NVS_HOME/nvs.sh" ] && . "$NVS_HOME/nvs.sh"

# switch node.js
nvs use 14.15.0

export PATH="$HOME/go/bin:$PATH"

# Android Studio
export ANDROID_SDK_ROOT=/Users/k-15/Library/Android/sdk
export PATH=$ANDROID_SDK_ROOT/platform-tools:$PATH
export PATH=$ANDROID_SDK_ROOT/emulator:$PATH

# git_function
git(){
str1="$1"
str2="pull"
str3="merge"
if [ $str1 = $str2 ]; then
 date >> result.txt
 command git pull $3 $4 | tee -a result.txt
 echo "pull_count" >> result.txt
elif [ $str1 = $str3 ]; then
 date >> result.txt
 command git merge $2 | tee -a result.txt
 echo "merge_count" >> result.txt
else
 command git $1 $2 $3 $4 $5 $6 $7
fi

}

