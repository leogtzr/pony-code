class Foo
  new create() ? =>
    var x: U32 = 2
    error

actor Main
  new create(env: Env) =>
    
    try
      let x: Foo = Foo.create()?
    end

    env.out.print("Alv")