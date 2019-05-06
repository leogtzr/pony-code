actor Main
  new create(env: Env) =>

    var x: U32 = try
      var y: U32 = 3
      y
      error
    else
      4
    end

    env.out.print(x.string())