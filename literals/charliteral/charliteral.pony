actor Main
  new create(env: Env) =>
    let big_a: U8 = 'A'
    let c = big_a
    env.out.print(c.string())

    let hex_escaped_big_a: U8 = '\x41'
    env.out.print(hex_escaped_big_a.string())

    let newline: U32 = '\n'
    env.out.print(newline.string())
