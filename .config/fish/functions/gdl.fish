# Defined in - @ line 0
function gdl --description 'alias gdl=git diff --name-only'
	git diff --name-only $argv;
end
