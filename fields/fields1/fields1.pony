class Wombat
  let name: String
  var _hunger_level: U32

  new create(hunger: U32) =>
    _hunger_level = hunger
    name = "Holis"        // Need to assign something either in the declaration or the constructor
