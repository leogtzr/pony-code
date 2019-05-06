actor Main
  new create(env: Env) =>
    try
      env.out.print("sdf")
      error
    end

    env.out.print("Holis")