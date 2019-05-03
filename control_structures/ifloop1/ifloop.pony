actor Main
  new create(env: Env) =>
    var x: (String | None) =
      for name in ["Leo"; "Diana"; "Hermosa"].values() do
        name
      end

      // x = "Hermosa", it will get the last value from the array literal.
      match x |
        let s: String => env.out.print("x is " + s)
        | None => env.out.print("x is None")
      end
