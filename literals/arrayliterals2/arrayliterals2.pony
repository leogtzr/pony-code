actor Main
  new create(env: Env) =>
    let my_immutable_array: Array[Stringable] val =
    [
      U64(0xBEEF)
      "0xBEEF"
    ]

    let my_as_array: Array[Stringable] ref =
    [
      as Stringable: U64(0xBEEF)
      "0xBEEF"
      U64(1 + 1)
    ]