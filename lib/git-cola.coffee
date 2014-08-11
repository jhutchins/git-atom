GitColaView = require './git-cola-view'

module.exports =
  gitColaView: null

  activate: (state) ->
    @gitColaView = new GitColaView(state.gitColaViewState)

  deactivate: ->
    @gitColaView.destroy()

  serialize: ->
    gitColaViewState: @gitColaView.serialize()
