trait Named
  fun name(): String => "Bob"

trait Bald is Named
  fun hasHair(): Bool => false

class Bob is Bald

actor Main
  new create(env: Env) =>
    let bob: Bob = Bob()
    env.out.print(bob)