## Aarons reel guhd bashin stuff

# Alias make is more easiers to be qwik n sich
alias si='ssh -p 8704 bott'
alias fenics='source fenics.conf'
alias list='ls -la'
alias funny='vim /Users/Aaron/funny/funny.txt'
alias c='clear'
alias getip0='ipconfig getifaddr en0'
alias getip1='ipconfig getifaddr en1'
alias ..='cd ..'
alias memory='~/you/Memory.py'
alias speedtest='~/you/SpeedTest.sh'
alias portal='ssh -p 8704 -L 5901:localhost:5901 -N -f aaron@bott.ices.utexas.edu'
alias portal2='ssh -p 8704 -L 5901:localhost:5902 -N -f aaron@bott.ices.utexas.edu'
alias lsg='ls -la | grep'
alias slp='pmset displaysleepnow'
alias sp='searchps'
alias lsf='ls -ld ./*' #Search for only folders
alias ls='ls -G'
alias jabref='JavaApplicationStub'
alias deepload='git clone git@gitlab.com:Aaronnoah/DeepWork.git'
alias sqls='/usr/local/bin/mysql.server start' 
alias sqlq='/usr/local/bin/mysql.server stop' 
alias getfile='~/you/getfile.sh'
alias getextip='dig +short myip.opendns.com @resolver1.opendns.com'
alias rubp='rubber --pdf'
alias servstart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias servend='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
alias latexit='/Applications/LaTeXiT.app/Contents/MacOS/LaTeXiT'
alias work='cd $WORK'
alias nicelog='git log --graph --decorate --all --oneline'
alias cdw='cd $WORK'
alias kill5901='lsof -ti:5901 | xargs kill -9'
alias pipPython='/usr/bin/python'
alias pushappprod='git subtree push --prefix app heroku master'
alias pushappstag='git subtree push --prefix app staging master'
alias fenicsenv='source activate fenicsproject'


# Gon' dun export sum stuffs
export PATH=$PATH:/Applications/MATLAB_R2013a.app/bin
export PATH=$PATH:/Applications/MATLAB_R2017a.app/bin
export PATH=$PATH:/Applications/Julia-0.3.8.app/Contents/Resources/julia/bin/
export PATH=$PATH:/Applications/FEniCS.app/Contents/Resources/share/fenics/
export EDITOR=vim
export PATH=$PATH:/Applications/JabRef.app/Contents/MacOS/
export PATH=$PATH:/usr/local/Cellar/urlview/0.9/bin/ #urlview for mutt 
export WORK=/Users/aaronmyers/PhD/
export MUTTF=/Users/aaronmyers/.mutt
export PATH=$PATH:/Library/TeX/texbin

## LINKS
#ln -sfv /usr/local/opt/elasticsearch/*.plist ~/Library/LaunchAgents

## Functions that are more gooders n sich
searchps() {
	ps -A| grep $1
}

scpf() {
	scp $1 aaron@ehrenfest.ices.utexas.edu:/h1/aaron/$2
}

ot() {
	tmux a -t $1
}

sendip() {
	echo "Clearing old ip file..."
	rm ~/ip.txt
	getip0 -> ~/ip.txt
	echo "Checking if wifi or ethernet..."
	if [ -s ~/ip.txt ]
	then
		echo "Connected to Ethernet..."
	else
		echo "Connected to Wifi..."
		getip1 -> ~/ip.txt
	fi
	echo "Sending file..."
	scpf ~/ip.txt /
	echo "Done!"
}

madg() {
	source /Users/Aaron/madagascar/share/madagascar/etc/env.sh
}
export PYTHONSTARTUP=~/.pythonrc

###   Adjusting styling
#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
LS_COLORS=$LS_COLORS:'di=0;35:'
#export LS_COLORS
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

# to run docker:
#docker create -it --name new-container <image>
#docker start new-container
#docker exec -it new-container bash

# docker run -it <image> bash

### AARON notes on locations of important files
# Hadoop install location
#/usr/local/Cellar/hadoop/2.7.2
# this site https://hadoop.apache.org/docs/r2.4.1/hadoop-project-dist/hadoop-common/SingleCluster.html
# start with 'Execution', skip format
# skip mkdir 
# skip copy input files -already in there

#had to create input dirctory in the file system then copy all libexec/etc/hadoop files into the /input file on the filesystem
#bin/hdfs dfs -mkdir /input 
#bin/hdfs dfs -put libexec/etc/hadoop/* /input
# run step 6
# then 7 slight change bin/hdfs dfs -get output output/
# then vim output/output/part-r-00000
#check here for the localhost sites to check on health http://zhongyaonan.com/hadoop-tutorial/setting-up-hadoop-2-6-on-mac-osx-yosemite.html

#-----------------Encryption stuff---------------------------------
## encrypt file.txt to file.enc using 256-bit AES in CBC mode
#openssl enc -aes-256-cbc -salt -in file.txt -out file.enc
#
## the same, only the output is base64 encoded for, e.g., e-mail
#openssl enc -aes-256-cbc -a -salt -in file.txt -out file.enc
#
## decrypt binary file.enc
#openssl enc -d -aes-256-cbc -in file.enc -out file.txt
#
## decrypt base64-encoded version
#openssl enc -d -aes-256-cbc -a -in file.enc -out file.txt
#------------------------------------------done with encryption stuff
 
# trace the route of packets on the internet, through your lan and wans
# > traceroute google.com

#find all ip addresses on your local area network
# > arp -a

# added by Anaconda3 5.1.0 installer
export PATH="/Users/aaronmyers/anaconda3/bin:$PATH"
