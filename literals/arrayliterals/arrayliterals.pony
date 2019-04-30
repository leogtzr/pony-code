actor Main
  new create(env: Env) =>
    let my_literal_array = 
    [
      true; "hola"
    ]

    let my_literal_array2 =
    [
      "first"; "second"
      "third one on a new line"
    ]

    let my_heterogenous_array = 
    [
      U64(42)
      "42"
      U64.min_value()
    ]
    /*
    In the above example the resulting array type will be Array[(U64|String)] ref because the array contains String and U64 elements.
    */

    let my_stringable_array: Array[Stringable] ref =
      [
        U64(0xA)
        "0xA"
      ]
      // Stringable is a trait and U64 and String both implement it.

    let my_immutable_array: Array[Stringable] val =
      [
        U64(0xBEEF)
        "0xBEEF"
      ]
