actor Main
  new create(env: Env) =>

    // need to call values() to get an iterator, that is what the for loop needs.
    for name in ["Leo"; "Diana"; "Edgar"; "Maria"].values() do
      env.out.print(name)
    end

    env.out.print("~~~~~~~~~~~~~~")

    let it = ["Leo"; "Diana"; "Edgar"; "Maria"].values()
    while it.has_next() do
      let name = it.next()?
      env.out.print(name)
    end
