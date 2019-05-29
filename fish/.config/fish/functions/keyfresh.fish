# Defined in - @ line 1
function keyfresh --description 'alias keyfresh systemctl --user reload sxhkd'
	systemctl --user reload sxhkd $argv;
end
