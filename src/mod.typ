#import "state.typ": *

#let good-news-text-args(..args, body) = context {
  good-news-text-args-state.update(good-news-text-args-state.get() + args.named())
  body
}

#let bad-news-text-args(..args, body) = context {
  bad-news-text-args-state.update(bad-news-text-args-state.get() + args.named())
  body
}

#let good-news(body) = context figure({
  image("assets/good-news.png")
  place(
    center + horizon,
    block(
      width: 80%,
      {
        set text(..((stroke: rgb("#fff64b") + 0.2em) + good-news-text-args-state.get()))
        body
      },
    ),
  )
  place(
    center + horizon,
    block(
      width: 80%,
      {
        let text-args = good-news-text-args-state.get()
        set text(..text-args.remove("stroke", default: text-args))
        body
      },
    ),
  )
})

#let bad-news(body) = context figure({
  image("assets/bad-news.png")
  place(
    center + horizon,
    block(
      width: 80%,
      {
        set text(..((stroke: rgb("#dadada") + 0.2em) + bad-news-text-args-state.get()))
        body
      },
    ),
  )
  place(
    center + horizon,
    block(
      width: 80%,
      {
        let text-args = bad-news-text-args-state.get()
        set text(..text-args.remove("stroke", default: text-args))
        body
      },
    ),
  )
})
