# Defined in - @ line 1
function scrot --description 'alias scrot scrot ~/pix/scrot/scrot_%Y-%m-%d_%H-%M-%S.png'
	command scrot ~/pix/scrot/scrot_%Y-%m-%d_%H-%M-%S.png $argv;
end
