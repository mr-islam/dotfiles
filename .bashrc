#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
# >>>>BEGIN ADDED BY CNCHI INSTALLER<<<< #
BROWSER=/usr/bin/firefox
EDITOR=/usr/bin/vim
# >>>>>END ADDED BY CNCHI INSTALLER<<<<< #

# added by Anaconda3 4.0.0 installer
export PATH="/home/naved/anaconda3/bin:$PATH"

# Reddit more cpopypasta

#TEXT COLORS
TXTBLK='\e[0;30m'           # Black - Regular
TXTRED='\e[0;31m'           # Red
TXTGRN='\e[0;32m'           # Green
TXTYLW='\e[0;33m'           # Yellow
TXTBLU='\e[0;34m'           # Blue
TXTPUR='\e[0;35m'           # Purple
TXTCYN='\e[0;36m'           # Cyan
TXTWHT='\e[0;37m'           # White
BLDBLK='\e[1;30m'           # Black - Bold
BLDRED='\e[1;31m'           # Red
BLDGRN='\e[1;32m'           # Green
BLDYLW='\e[1;33m'           # Yellow
BLDBLU='\e[1;34m'           # Blue
BLDPUR='\e[1;35m'           # Purple
BLDCYN='\e[1;36m'           # Cyan
BLDWHT='\e[1;37m'           # White
UNDBLK='\e[4;30m'           # Black - Underline
UNDRED='\e[4;31m'           # Red
UNDGRN='\e[4;32m'           # Green
UNDYLW='\e[4;33m'           # Yellow
UNDBLU='\e[4;34m'           # Blue
UNDPUR='\e[4;35m'           # Purple
UNDCYN='\e[4;36m'           # Cyan
UNDWHT='\e[4;37m'           # White
BAKBLK='\e[40m'             # Black - Background
BAKRED='\e[41m'             # Red
BAKGRN='\e[42m'             # Green
BAKYLW='\e[43m'             # Yellow
BAKBLU='\e[44m'             # Blue
BAKPUR='\e[45m'             # Purple
BAKCYN='\e[46m'             # Cyan
BAKWHT='\e[47m'             # White
TXTRST='\e[0m'              # Text Reset

TXT236='\e[38;5;236m'       # Darkest Grey - Regular
TXT238='\e[38;5;238m'       # Darker Grey
TXTDGY='\e[38;5;000m'       # Dark Grey
TXT232='\e[38;5;232m'       # Black
TXTBRD='\e[38;5;088m'       # Bright Red
TXTBBR='\e[38;5;196m'       # Brightest Red

BAK233='\e[48;5;233m'       # Darkest Grey - Background
BAK241='\e[48;5;241m'       # Darker Grey
BAK000='\e[48;5;000m'       # Dark Grey
BAKBRD='\e[48;5;130m'       # Bright Red
BAKBBR='\e[48;5;166m'       # Brightest Red

#PROMPT
# cool prompt stuff
# based on a function found in bashtstyle-ng 5.0b1
# Original author Christopher Roy Bratusek (http://www.nanolx.org)
# Last arranged by zach Fri Jan 18 17:03:08 EST 2013
function pre_prompt {
	    sPWD=$(echo -n $PWD | sed -e "s:^$HOME: ~:" -e "s:/: ⮁ :g" -e "s|:|/|g") #Should now properly sed home directory path
	        nPWD="$sPWD "
		    sHost=$(echo $HOSTNAME | cut -f 1 -d .)
		        p=$(echo -n ".....$USER.$sHost...$sPWD")
			    let pSize=${#p}
			        let fillsize=$COLUMNS-$pSize
				    fill=""
				        while [[ $fillsize > 0 ]]; do
						        fill="$fill "
							        let fillsize=$fillsize-1
								    done
								        if [[ $fillsize < 0 ]]; then
										        let cutt=1-$fillsize
											        nPWD=" $(echo -n $sPWD | sed -E "s/(^.{$cutt})(.*)/…\2/") "
												    fi
											    }

											    PROMPT_COMMAND=pre_prompt

											    PS1="\`if [ \$? = 0 ]; then echo \"${TXTBLK}${BAK241} \$ ${TXT236}${BAKBLK}\"; else echo \"${TXTBLK}${BAKRED} ! ${TXTBRD}${BAKBLK}\"; fi\`⮀${TXTGRN}${BAKBLK} \u${BLDBLK}@${BLDCYN}\h ${TXTBLK}${BAKBLU}⮀${TXTRST}${BAKBLU}${BLDBLU}\$nPWD\${fill}${TXTRST}\n"




[ -f ~/.fzf.bash ] && source ~/.fzf.bash
