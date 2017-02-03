# File management

:e              reload file
:q              quit
:q!             quit without saving changes
:w              write file
:w {file}       write new file
:w! {file}	Overwrite file
:x  or :wq      write file and exit

# Movement

    k
  h   l         basic motion
    j

w               next start of word
W               next start of whitespace-delimited word
e               next end of word
E               next end of whitespace-delimited word
b               previous start of word
B               previous start of whitespace-delimited word
0 or ^          start of line
$               end of line
gg              go to first line in file
G               go to end of file
:0 or 1G 	To move to beginning of file
:n or nG	To move to line n
:$ or G		To move to last line in file
H		move to the top of the screen
M		move to the middle of the screen
L		move to the bottom of the screen
Ctrl-i		jump to your previous navigation location
Ctrl-o		jump back to where you were

# Insertion
#   To exit from insert mode use Esc or Ctrl-C
#   Enter insertion mode and:

a               append after the cursor
A               append at the end of the line
i               insert before the cursor
I               insert at the beginning of the line
o               create a new line under the cursor
O               create a new line above the cursor
r		Replace character at current position
R               Replace text starting with current position; stop upon Escape key
:r file2	Read in file2 and insert at current position

# Editing

u               undo
Ctrl-r		redo
d		delete
c		change
y		yank (copy)

yy              yank (copy) a line
Nyy or yNy	Yank (copy) N lines and put it in buffer
y{motion}       yank text that {motion} moves over
p               paste after cursor
P               paste before cursor
<Del> or x      delete a character
Nx		Delete N characters, starting at current position
dw		Delete the word at the current position
D		Delete the rest of the current line
dd              delete a line
Ndd or dNd	Delete N lines
d{motion}       delete text that {motion} moves over
cw		change the word

# Preceding a motion or edition with a number repeats it n times
# Examples:
50k         moves 50 lines up
2dw         deletes 2 words
5yy         copies 5 lines
42G         go to line 42

# Search asnd replace
:%s/\<что_ищем\>/на_что_заменяем/gc

# Copy to system clipboard  
## selection buffer
"*y
## cut buffer
"+y

## Checking for X11-clipboard support in terminal:
## vim --version | grep clipboard 
## If you see +clipboard or +xterm_clipboard, you are good to go. If it's -clipboard and -xterm_clipboard, you will need to look for a version of Vim that was compiled with clipboard support. On Debian and Ubuntu, to obtain clipboard support install the packages vim-gtk or vim-gnome
## apt install vim-gtk


