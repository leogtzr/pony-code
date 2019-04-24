// var can be assigned to over and over again.
// let field is assigned to in the constructor and never again.

// the _ means that a field is private and can be only accessed by
// code in the same type.

class Wombat
	let name: String
	var _hunger_level: U64
  var _thirst_level: U64 = 1

  // name' another of this but not the same ... 
	new hungry(name': String, _hunger_level': U64) =>
		name = name'
		_hunger_level = _hunger_level'

	new create(name': String) =>
		name = name'
		_hunger_level = 0

	// Function:
	fun foo(env: Env) =>
		env.out.print("alv")

  fun hunger(): U64 => _hunger_level

  // called before the GC collects data.
  fun _final() =>


  // a ref type is a reference type, meaning that the object is mutable.
  // to: U64 = 0 is a default argument, if it is not included 0 will be used.
  fun ref set_hunger(to: U64 = 0): U64 => _hunger_level = to

actor Main
	new create(env: Env) =>
    let defaultWombat = Wombat("Leo")
    env.out.print(defaultWombat.name)

    let hungryWombat = Wombat("Juan")
    env.out.print(hungryWombat.name)

    defaultWombat.foo(env)