// The following line is a type declaration (an actor)
// The difference between a class and an actor is that the actor can have
// asynchronous methods called behaviours.
actor Main                              // kind of the main method
    new create(env: Env) =>             // constructor and the body is what is after the =>
        //env.out.print("hello world")
        // env.out.print("hello world alv")
        // raw data string:
        env.out.print("""
            hello
            world!
""")
