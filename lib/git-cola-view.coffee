{View} = require 'atom'

module.exports =
class GitColaView extends View
  @content: ->
    @div class: 'git-cola overlay from-top', =>
      @div "The GitCola package is Alive! It's ALIVE!", class: "message"

  initialize: (serializeState) ->
    @git = atom.project.getRepo()
    atom.workspaceView.command "git-cola:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "GitColaView was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
