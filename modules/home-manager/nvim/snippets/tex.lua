return {
  -- Greek letter snippets, autotriggered for efficiency
  s({trig=";a", snippetType="autosnippet"},
    {
      t("\\alpha"),
    }
  ),
  s({trig=";b", snippetType="autosnippet"},
    {
      t("\\beta"),
    }
  ),
  s({trig=";g", snippetType="autosnippet"},
    {
      t("\\gamma"),
    }
  ),


  s({trig="eq", dscr="Latex equation environment"},
    fmt(
      [[
        \begin{equation}
          <>
        \end{equation}
      ]],
      { i(1) },
      { delimiters="<>" }
    )
  ),
}
