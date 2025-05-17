#import "@preview/xibao:0.1.0" as xibao: *
#import "@preview/zebraw:0.5.4": zebraw

= xibao

Xibao is a Typst template for creating "Good News" meme images, inspired by #link("https://github.com/vonbrank/good-news-generator")[#underline[good-news-generator]].

#let example(code) = grid(
  columns: (1fr, 1fr),
  gutter: 1em,
  code, eval(code.text, scope: dictionary(xibao), mode: "markup"),
)

#example(```typ
#show: good-news-text-args.with(
  size: 3em,
  font: "Noto Sans CJK SC",
  weight: "black"
)

#good-news[
  没人问你
]
```)

// #show: bad-news-text-args.with(size: 4em, font: "Noto Serif CJK SC", weight: "bold")

// #bad-news[
//   我问了
// ]

#example(```typ
#show: bad-news-text-args.with(
  size: 3em,
  font: "Noto Serif CJK SC",
  weight: "bold"
)
#bad-news[
  我问了
]
```)
