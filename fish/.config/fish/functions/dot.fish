# Defined in - @ line 1
function dot --description 'alias dot git --git-dir=/home/cory/.dotfiles/.git --work-tree=/home/cory/.dotfiles'
	git --git-dir=/home/cory/.dotfiles/.git --work-tree=/home/cory/.dotfiles $argv;
end
