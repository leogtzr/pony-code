actor Main
  new create(env: Env) =>
    env.out.print(("Leo", "Gtz")._1)
    env.out.print(("Leo", "Ramirez")._1.string())

    var x: (String, U64) = ("Leo", 28)
    env.out.print(x._1)
    env.out.print(x._2.string())
