actor Main
  new create(env: Env) =>
    var x: (String, U32) = ("Leo", 3)
    env.out.print(x._1)
    env.out.print(x._2.string())
    