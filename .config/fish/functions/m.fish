# Defined in - @ line 0
function m --description 'alias m=make > a 2>&1 ; less a'
	make > a 2>&1 ; less a $argv;
end
