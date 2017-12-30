# Defined in - @ line 0
function fix-git-pathspec-issue --description 'alias fix-git-pathspec-issue=git remote update ; git fetch ; git checkout --track -b origin/$argv'
	git remote update ; git fetch ; git checkout --track -b origin/$argv;
end
