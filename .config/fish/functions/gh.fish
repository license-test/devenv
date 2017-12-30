# Defined in - @ line 0
function gh --description 'alias gh=git config remote.origin.push HEAD'
	git config remote.origin.push HEAD $argv;
end
