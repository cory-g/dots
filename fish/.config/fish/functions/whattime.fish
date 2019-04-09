# Defined in - @ line 1
function whattime --description 'alias whattime tty-clock -c -C 3 -t -D'
	tty-clock -c -C 3 -t -D $argv;
end
