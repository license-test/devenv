# Defined in - @ line 0
function ds --description 'alias ds = Remove DS_Store file'
  find . -name .DS_Store  -exec rm -f '{}' \;
end
