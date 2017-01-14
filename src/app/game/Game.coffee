class Game
  constructor: (@width, @height) ->
    canvas = @canvas = document.createElement 'canvas'
    canvas.width = @width
    canvas.height = @height

  launch: (parentElement) ->
    {canvas} = @
    parentElement.appendChild canvas
    onLoadComplete = @create.bind @
    @preload onLoadComplete

  preload: (onLoadComplete) ->
    window.console.log 'Game#preload()'
    onLoadComplete()

  create: (assets) ->
    window.console.log 'Game#create()'

module.exports = Game: Game
