// var can be assigned to over and over again.
// let field is assigned to in the constructor and never again.

class Wombat
	let name: String
	var _hunger_level: U64

	new create(name': String, _hunger_level': U64) =>
		name = name'
		_hunger_level = _hunger_level'

actor Main
	new create(env: Env) =>
		env.out.print("Hello")