{DEBUG_MODE, WIDTH, HEIGHT} = require './constants'
{Game} = require './Game'
Launcher =
  name: 'Coffee RTS'
  version: '1.0.0'
  start: (parentElement) ->
    game = new Game WIDTH, HEIGHT
    game.launch parentElement
    window.game = game if DEBUG_MODE
module.exports = Launcher: Launcher
