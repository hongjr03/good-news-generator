#let good-news(body) = figure({
  image("assets/good-news.png")
  place(
    center + horizon,
    block(
      width: 80%,
      {
        set text(fill: rgb(220, 48, 35), size: 24pt, weight: "bold")
        body
      },
    ),
  )
})

#let bad-news(body) = figure({
  image("assets/bad-news.png")
  place(
    center + horizon,
    block(
      width: 80%,
      {
        set text(fill: rgb(90, 90, 90), size: 24pt, weight: "bold")
        body
      },
    ),
  )
})
