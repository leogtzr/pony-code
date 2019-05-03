actor Main
  new create(env: Env) =>
    
    let friendly: Bool = true

    // x can be either String or Bool, x will save String or Bool
    var x: (String | Bool) = 
      if friendly then
        "Hello!"
      else
        false
      end

    env.out.print(x.string())