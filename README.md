# Typst Good News Generator

A Typst package for creating "Good News" meme images, inspired by [good-news-generator](https://github.com/vonbrank/good-news-generator).

## Usage

Import the package in your Typst document:

```typ
#import "lib.typ": good-news, bad-news
```

Then use the functions to create meme images:

```typ
#good-news[This is good news!]
#bad-news[This is bad news...]
```

## Example

```typ
#show: good-news-text-args.with(
  size: 3em,
  font: "Noto Sans CJK SC",
  weight: "black"
)

#good-news[
  没人问你
]
```

![example1](assets/frame_0.svg)

```typ
#show: bad-news-text-args.with(
  size: 3em,
  font: "Noto Serif CJK SC",
  weight: "bold"
)
#bad-news[
  我问了
]
```

![example2](assets/frame_1.svg)

## Functions

- `good-news(body)`: Creates a red text overlay on the good news template image
- `bad-news(body)`: Creates a gray text overlay on the bad news template image
- `good-news-text-args`: Arguments for customizing the good news text
- `bad-news-text-args`: Arguments for customizing the bad news text
