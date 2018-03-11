# Defined in - @ line 0
function flush-dns-cache-osx --description 'Flush DNS Cache for Mac OS X'
  sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder; say cache flushed
end
