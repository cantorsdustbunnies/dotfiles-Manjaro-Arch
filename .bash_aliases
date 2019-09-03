alias bashrc="nvim ~/.bashrc && source ~/.bashrc" # edit bashrc and reload
alias vimrc="nvim ~/.vimrc" #edit vimrc 
alias i3config="nvim ~/.i3/config"
alias shortcuts="nvim ~/.bash_aliases && source ~/.bashrc" #edit aliases and reload 
alias gtktheme="sudo nvim /usr/share/theme/Adapta-Nokto-Eta-Maia/gtk-2.0/colors-dark.rc"
alias kittyconf="nvim ~/.config/kitty/kitty.conf"
alias pacman="sudo pacman"
alias defaults="nvim ~/.config/mimeapps.list"
alias lsfiles='for f in *; do [[ -f "$f" ]] && ls -- "$f"; done' 
alias vim='nvim'
alias git_ls='git ls-tree --full-tree -r --name-only HEAD'
alias gls='git ls-files'
alias gca='git commit -a'
alias profile='nvim ~/.profile'
alias home='cd ~/ && clear'

function projects() {
	root='/home/stelly/Documents/Projects'
	year=$(date +%Y)
	month=$(date +%B)
	cd $root/$year/$month 2> /dev/null 
	if [ $? -ne 0 ]; then 
		mkdir -p $root/$year/$month && 
		cd $root/$year/$month 
	fi
	clear; 
	echo "in a sea of symbols and signs...";
	ls -a;
}

function notes(){
    parent=${PWD##*/}
    file="${parent}-notes.md";
    if [[ ! -e $file ]]; then
        touch $file
        echo "#${parent} notes" >> $file; 
        echo "---" >> $file;
        echo "" >> $file; 
        echo "" >> $file; 
    fi
    echo "> $(date)" >> $file; 
    echo "---" >> $file; 
    echo "" >> $file; 
    echo "" >> $file; 
    nvim '+ normal GA' $file
}

function journal() {
	root='/home/stelly/Documents/Projects'
	year=$(date +%Y)
	month=$(date +%B)
	day=$(date +%d)
	cd $root/$year/$month/Writing/Journal 2> /dev/null
	if [ $? -ne 0 ]; then
		mkdir -p $root/$year/$month/Writing/Journal
	fi
	file=$root/$year/$month/Writing/Journal/$month-$day.md
	if [[ ! -e $file ]]; then
        
        touch $file;
	    echo "# $month $day" >> $file;
        echo "---" >> $file;
        echo "" >> $file; 
        echo "" >> $file; 
    fi
    nvim '+ normal GA' $file	
}

gatsby-dev() {
	project_dir=$1
	cd $project_dir
	code . 
	google-chrome-stable --new-window http://localhost:8000/___graphql
	google-chrome-stable http://localhost:8000/ 
	gatsby develop
}

function hello-gatsby(){
	new_project=$1
	gatsby new $new_project https://github.com/gatsbyjs/gatsby-starter-hello-world && gatsby-dev $new_project 
}

function dev-time(){
	project_dir=$1
	
}

function list-pictures(){
	#first lets just echo out the file and the count 
	count=0
	for file in $(lsfiles)
	do
		filename=${file%%.*}; 
		extension=$([[ "$file" = *.* ]] && echo ".${file##*.}" || echo '');  
		if [[ $extension =~ ^(.jpg|.png|.jpeg)$ ]]; then
			echo -e "\e[38;5;44m$filename\e[38;5;46m$extension";           
		else 
			echo -e "\e[38;5;27m$filename\e[38;5;162m$extension";      
		fi  
  		
		let "count+=1"; 
	done
}

function batch-rename-pictures(){
	firstFlag=$1
	secondFlag=$2
	thirdFlag=$3
	pic_count=0
	for file in $(lsfiles)
	do
		filename=${file%%.*}; 
		extension=$([[ "$file" = *.* ]] && echo ".${file##*.}" || echo ''); 
		if [[ $extension =~ ^(.jpg|.png|.jpeg)$ ]]; then
			if [[ $firstFlag = "-test" ]]; then 

				echo "copy $file to $secondFlag$thirdFlag-$pic_count$extension";
			else 
				cp $file $firstFlag$secondFlag-$pic_count$extension
			fi
 		
				let "pic_count+=1";
		fi
	done
}	


function command_workspace(){
	i3-msg "workspace 3;
	split horizontal;
	exec i3-sensible-terminal -e gotop;"
	sleep .2
	i3-msg "exec i3-sensible-terminal pipes.sh;"
	sleep .2
	i3-msg "split vertical;" 
	sleep .2
	i3-msg "exec i3-sensible-terminal"; 
	#sleep .2
	#i3-msg "split vertical; exec i3-sensible-terminal"; 
	#sleep .2
	#i3-msg "split horizontal; exec i3-sensible-terminal canva"
	#sleep .2
	#i3-msg "focus left; exec i3-sensible-terminal"
}

function ls_shortcuts(){
	echo " ------------------------------------------------------------------------------------------------";	
	echo "    shortcut   | args | type |    action   |            Affected Files / Description              "; 
	echo " ------------------------------------------------------------------------------------------------";
	echo "  bashrc       |      |   A  |    edit-r   |  ~/.bashrc and reload";
	echo "  defaults     |      |   A  |    edit     |  ~/.config/mimeapps.list";
	echo "  dev-time     |      |   F  |    i3-macro |  launch dev workspace";
	echo "  gatsby-dev   | dir  |   F  |    macro    |  code, chrome and gatsby-develop dir";
    echo "  gca          |      |   A  |    macro    |  'git commit -a'";      
    echo "  git_ls       |      |   A  |    macro    |  list all commited files tracked by git";
    echo "  gls          |      |   A  |    macro    |  list all files tracked by git";
	echo "  gtktheme     |      |   A  |    edit     |  /usr/share/theme/Adapta...-Maia/gtk-2.0/colors-dark.rc";
	echo "  hello-gatsby | name |   F  |    macro    |  gatsby new name hello starter, gatsby-dev";          
	echo "  home         |      |   A  |    macro    |  cd ~/";
    echo "  i3config     |      |   A  |    edit     |  ~/.i3/config";
	echo "  kittyconf    |      |   A  |    edit     |  ~/.config/kitty/kitty.conf"; 
	echo "  ls_shortcuts |      |   F  |    helper   |  list all shortcuts... but you knew that already ;)"; 
    echo "  notes        |      |   F  |    edit     |  create/edit a notes file in current directory";      
    echo "  pacman       | pkg  |   A  |    helper   |  sudo pacman pkg";
    echo "  profile      |      |   A  |    edit     |  ~/.profile";
	echo "  projects     |      |   F  |    helper   |  ~/Documents/Projects/\$year/\$month/ && ls -a"; 
	echo "  shortcuts    |      |   A  |    edit-r   |  ~/.bash_aliases";
	echo "  vimrc        |      |   A  |    edit     |  ~/.vimrc";
    echo "  vim          |      |   A  |    helper   |  launch nvim instead of vim";
    echo "-------------------------------------------------------------------------------------------------";  
    
}

