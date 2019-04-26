trait Named
  fun name(): String => "Bob"

trait Bald
  fun hasHair(): Bool => false

// Bob provides "Named"
// "Bob is Named"
class Bob is (Named & Bald)

actor Main
  new create(env: Env) =>
    var bob: Bob = Bob()
    env.out.print("Hello ... ")