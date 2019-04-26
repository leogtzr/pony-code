primitive OpenDoor
primitive ClosedDoor

// An "enumeration" type
type DoorState is (OpenDoor | ClosedDoor)

// A collection of functions
primitive BasicMath
  fun add(a: U64, b: U64): U64 =>
    a + b
  fun multiply(a: U64, b: U64): U64 =>
    a * b

actor Main
  new create(env: Env) =>
    let doorState: DoorState = ClosedDoor
    let isDoorOpen: Bool = match doorState
      | OpenDoor => true
      | ClosedDoor => true
    end

    env.out.print("Is door open? " + isDoorOpen.string())
    env.out.print("2 + 3 = " + BasicMath.add(2, 3).string())

    // env.out.print(((2 + 3): U64).string())
