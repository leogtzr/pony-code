class Aardvark
  var buddy: Wombat iso

  fun ref test(a: Wombat iso) =>
    var b: Wombat iso = buddy = consume a // Allowed!

// Here, we consume a, assign it to the field buddy, and assign the old value of buddy to b.