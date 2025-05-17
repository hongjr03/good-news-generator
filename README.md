# Good News Typst Template

A Typst template for creating "Good News" meme images, inspired by [good-news-generator](https://github.com/vonbrank/good-news-generator).

## Usage

Import the template in your Typst document:

```typ
#import "lib.typ": good-news, bad-news
```

Then use the functions to create meme images:

```typ
#good-news[This is good news!]
#bad-news[This is bad news...]
```

## Functions

- `good-news(body)`: Creates a red text overlay on the good news template image
- `bad-news(body)`: Creates a gray text overlay on the bad news template image
