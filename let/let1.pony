actor Main
  new create(env: Env) =>
    let x: U32 = 3        // let is only abbout reassignment, not immutability
    env.out.print(x.string())