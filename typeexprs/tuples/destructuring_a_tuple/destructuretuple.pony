actor Main
  new create(env: Env) =>
    var name: (String, String) = ("Leo", "Gtz")
    (var mainName, var lastName) = name

    env.out.print(mainName)
    env.out.print(lastName)
    