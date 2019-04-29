primitive Red
  fun apply(): U32 => 0xFF0000FF
primitive Blue
  fun apply(): U32 => 0x00FF00FF
primitive Green
  fun apply(): U32 => 0x0000FFFF

// "Union" type ... Colour is either Red, Blue or Green
type Colour is (Red | Blue | Green)

primitive ColourList
  fun apply(): Array[Colour] => [Red; Green; Blue]

actor Main
  new create(env: Env) =>

    // var c: Colour = Red
    // //var x: U32 = c.apply()

    // env.out.print(c.apply().string())
    // env.out.print(Red.apply().string())
    
    for colour in ColourList().values() do
      env.out.print(colour.apply().string())
    end