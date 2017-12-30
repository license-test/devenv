# Defined in - @ line 0
function gru --description 'alias gru=git fetch origin -v; git fetch upstream -v; git merge upstream/master; git push'
	git fetch origin -v; git fetch upstream -v; git merge upstream/master; git push $argv;
end
