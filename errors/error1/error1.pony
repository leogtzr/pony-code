actor Main
  new create(env: Env) =>

    try
      env.out.print("Hello ... ")
      error
      //env.out.print("Bye")
    else
      env.out.print("There was an error")
    end