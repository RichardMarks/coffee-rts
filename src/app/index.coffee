{Launcher} = require './game/Launcher'
boot = ->
  {name, version, start} = Launcher
  container = document.getElementById 'container'
  document.title = "#{name} #{version}"
  start container
document.addEventListener 'DOMContentLoaded', boot, false
