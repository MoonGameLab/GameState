

-- Blank function 
__NULL__ = () ->

-- @local
loveCallbacks = {
  'draw',
  'update'
}

-- @local
stateInit = setmetatable {exit: __NULL__},
              {
                __index: -> error "Gamestate not initialized."
              }

class GameState

  @stack = {stateInit}
  @initializedStates = setmetatable {}, {__mode: "k"} -- weak keys
  @stateIsDirty = true

  new: (_verbose) =>
    @verbose = _verbose
