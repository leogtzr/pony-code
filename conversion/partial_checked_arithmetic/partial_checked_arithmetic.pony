actor Main
  new create(env: Env) =>
    let result =
      try
        I32.max_value() +? 2
      else
        env.out.print("overflow detected ... ")
      end

      let result2 =
        match U64.max_value().addc(3)
        | (let x: U64, false) => 
          env.out.print(x.string())
        | (_, true) =>
          env.out.print("overflow detected")
        end

      var x: (U64, Bool) = U64.max_value().addc(3)
      env.out.print(x._1.string())
      env.out.print(x._2.string())

// Partial Operator  Method  Description
// +?  add_partial() errors on overflow/underflow
// -?  sub_partial() errors on overflow/underflow
// *?  mul_partial() errors on overflow/underflow
// /?  div_partial() errors on overflow/underflow and division by zero
// %?  rem_partial() errors on overflow/underflow and division by zero
// %%? mod_partial() errors on overflow/underflow and division by zero