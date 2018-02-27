# Defined in - @ line 0
function speed-up-time-machine-backups --description 'Speed up Time Machine backups'
  sudo sysctl debug.lowpri_throttle_enabled=0
end
