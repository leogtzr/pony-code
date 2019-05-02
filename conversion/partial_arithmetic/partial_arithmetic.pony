actor Main
  new create(env: Env) =>
    // let result =
    //   try
    //     USize.max_value() +? env.args.size()
    //   else
    //     env.out.print("overflow detected")
    //   end

      // let result =
      //   match USize.max_value().addc(env.args.size())
      //   | (let result: USize, false) =>
      //     // use result
      //     // ...
      //     env.out.print("we are fine")
      //   | (_, true) =>
      //     env.out.print("overflow detected")
      //   end

      let result =
        try
          I32.max_value() +? env.args.size()
        else
          env.out.print("overflow detected")
        end
