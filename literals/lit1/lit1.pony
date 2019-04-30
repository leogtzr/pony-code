actor Main
  new create(env: Env) =>
    // Numeric literals:
    let a: U32 = 42_123
    env.out.print(a.string())
    let b: U8 = U8(2)
    env.out.print(b.string())
    let c: F32 = F32(1.34)
    env.out.print(c.string())
    let binary: U8 = 0b1000
    env.out.print(binary.string())
    let d: I32 = 0x400
    env.out.print(d.string())
    let e: U128 = U128(23)
    env.out.print(e)