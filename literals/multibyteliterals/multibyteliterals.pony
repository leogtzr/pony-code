actor Main
  new create(env: Env) =>
    let multiByte: U64 = 'ABCD'
    env.out.print(multiByte.string())
    let x: U64 = 0x41424344
    env.out.print((x == multiByte).string())