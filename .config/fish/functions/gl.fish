# Defined in - @ line 0
function gl --description 'alias gl=git ls-files --others --exclude-standard'
	git ls-files --others --exclude-standard $argv;
end
