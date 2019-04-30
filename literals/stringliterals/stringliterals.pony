use "format"

actor Main
  new create(env: Env) =>

    let pony = "🐎"
    let pony_hex_escaped = "p\xF6n\xFF"
    let pony_unicode_escape = "\U01F40E"

    env.out.print(pony + " " + pony_hex_escaped + " " + pony_unicode_escape)

    env.out.print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~>")
    for b in pony.values() do
      env.out.print(Format.int[U8](b, FormatHex))
    end

    env.out.print("########################################################")

    let stacked_ponies = "
🐎
🐎
🐎
"

    let u_umlaut = "ü"
    env.out.print(u_umlaut)

    let triple_quoted_string_docs =
    """
  Triple quoted strings are the way to go for long multiline text.
  They are extensively used as docstrings which are turned into api documentation.

  They get some special treatment, in order to keep pony code readable:

  * The string literal starts on the line after the opening triple quote.
  * Common indentation is removed from the string literal
    so it can be conveniently aligned with the enclosing indentation
    e.g. each line of this literal will get its first two whitespaces removed
  * Whitespace after the opening and before the closing triple quote will be
    removed as well. The first line will be completely removed if it only 
    contains whitespace. e.g. this strings first character is `T` not `\n`.
  """

    env.out.print(triple_quoted_string_docs)

    env.out.print("____________________________________________________________________")


    let another_pony = "🐎"

    if pony is another_pony then
      env.out.print("They are equal ... ")
    end