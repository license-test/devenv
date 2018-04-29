# Defined in - @ line 0
function sv --description 'alias sv=ssh -p 2022 {$USER}@localhost'
	ssh -p 2022 {$USER}@localhost $argv;
end
