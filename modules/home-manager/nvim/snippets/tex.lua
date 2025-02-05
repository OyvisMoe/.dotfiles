return {
  -- Greek letter snippets, autotriggered for efficiency
  s({trig=";a", snippetType="autosnippet"},
    {
      t("\\alpha "),
    }
  ),

  s({trig=";b", snippetType="autosnippet"},
    {
      t("\\beta "),
    }
  ),

  s({trig=";g", snippetType="autosnippet"},
    {
      t("\\gamma "),
    }
  ),

  s({trig=";R", dscr="Real numbers", snippetType="autosnippet"},
    {
      t("\\mathbb{R}"),
    }
  ),

  s({trig=";N", dscr="Natural numbers", snippetType="autosnippet"},
    {
      t("\\mathbb{N}"),
    }
  ),

  s({trig=";Z", dscr="Integers", snippetType="autosnippet"},
    {
      t("\\mathbb{Z}"),
    }
  ),

  s({trig=";Q", dscr="Rational numbers", snippetType="autosnippet"},
    {
      t("\\mathbb{Q}"),
    }
  ),

  s({trig=";C", dscr="Complex numbers", snippetType="autosnippet"},
    {
      t("\\mathbb{C}"),
    }
  ),

  s({trig="->", dscr="Rightarrow", snippetType="autosnippet"},
    {
      t("\\rightarrow "),
    }
  ),

  s({trig=":lr", dscr="Long right arrow", snippetType="autosnippet"},
    {
      t("\\longrightarrow "),
    }
  ),

  s({trig="=>", dscr="Double rightarrow", snippetType="autosnippet"},
    {
      t("\\Rightarrow "),
    }
  ),

  s({trig="<-", dscr="leftarrow", snippetType="autosnippet"},
    {
      t("\\leftarrow "),
    }
  ),

  s({trig=":ll", dscr="Long left arrow", snippetType="autosnippet"},
    {
      t("\\longleftarrow "),
    }
  ),


  s({trig=":DL", dscr="Double leftarrow", snippetType="autosnippet"},
    {
      t("\\Leftarrow "),
    }
  ),

  s({trig=":lr", dscr="Leftright arrow", snippetType="autosnippet"},
    {
      t("\\leftrightarrow "),
    }
  ),

  s({trig=":LR", dscr="Double Leftright arrow", snippetType="autosnippet"},
    {
      t("\\Leftrightarrow "),
    }
  ),


  s({trig="eq", dscr="Latex equation environment"},
    fmta(
      [[
        \begin{equation}
          <>
        \end{equation}
      ]],
      { i(0) }
    )
  ),

  s({trig="ff", dscr="Fraction", snippetType="autosnippet"},
    fmta(
      [[\frac{<>}{<>} ]],
      { i(1), i(2) }
    )
  ),

  s({trig="nn", snippetType="autosnippet"},
    fmta(
      [[
        \begin{<>}
          <>
        \end{<>}
      ]],
    { i(1), i(2), rep(1) }
    ),
    {condition = line_begin}
  ),

  s({trig="hr", dscr="The hyperref package's href{}{} command (for url links)"},
    fmta(
      [[\href{<>}{<>} ]],
      { i(1, "url"), i(2, "display name") } 
    )
  ),

  s({trig="mm", dscr="Inline math ($)", snippetType="autosnippet"},
    fmta(
      [[$<>$ ]],
      { i(1) }
    )
  ),

  s({trig="ee", dscr="Expands into e^{<>}", snippetType="autosnippet"},
    fmta(
      [[e^{<>} ]],
      { i(1) }
    )
  ),

  s({trig="h1", dscr="Top-level section", snippetType="autosnippet"},
    fmta(
      [[\section{<>} ]],
      { i(1) }
    ),
    {condition = line_begin}
  ),

  s({trig="dv", dscr="Expands into \\dv{<>}", snippetType="autosnippet"},
    fmta(
      [[\dv{<>} ]],
      { i(1) }
    )
  ),

  s({trig="dV", dscr="Expands into \\dv{<>}{<>}", snippetType="autosnippet"},
    fmta(
      [[\dv{<>}{<>} ]],
      { i(1), i(2) }
    )
  ),

  s({trig="Dv", dscr="Expands into \\dv[<>]{<>}", snippetType="autosnippet"},
    fmta(
      [[\dv[<>]{<>} ]],
      { i(1), i(2) }
    )
  ),

  s({trig="DV", dscr="Expands into \\dv[<>]{<>}{<>}", snippetType="autosnippet"},
    fmta(
      [[\dv[<>]{<>}{<>} ]],
      { i(1), i(2), i(3) }
    )
  ),

  s({trig="dd", dscr="Expands into \\dd{<>}", snippetType="autosnippet"},
    fmta(
      [[\dd{<>}]],
      { i(1) }
    )
  ),

  s({trig="DD", dscr="Expands into \\dd[<>]{<>}", snippetType="autosnippet"},
    fmta(
      [[\dd[<>]{<>}]],
      { i(1), i(2) }
    )
  ),

  s({trig="rm", snippetType="autosnippet"},
    fmta(
      [[\mathrm{<>} ]],
      { i(1) }
    )
  ),

  s({trig="id", dscr="Expands into \\int_{<>}^{<>}", snippetType="autosnippet"},
    fmta(
      [[\int_{<>}^{<>} ]],
      { i(1), i(2) }
    )
  ),

  s({trig="ii", dscr="Expands into \\int", snippetType="autosnippet"},
    {
      t("\\int "),
    }
  ),

}
