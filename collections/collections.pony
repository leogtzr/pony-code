use "collections"

actor Main
  new create(env: Env) =>
    let list_of_numbers = List[U32].from([1; 3; 4; 2])
    for x in list_of_numbers.values() do
      env.out.print(x.string())
    end