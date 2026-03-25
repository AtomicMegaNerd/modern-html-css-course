# Course Notes

## Tables

- Only use HTML tables for tabular data never for layout.
- Today he recommends other methods even for that which can be flexible
- `colspan` tells how many `<td>`s to group under a `<th>`
- `colgroup` allows you to define styles against an entire column easily

## Iframe

- Can embed documents, videos (YouTube), web pages, etc. Ggole allows many services
  to be embedded.
- There is an embed element as well.
- object uses data instead of source.
- Use `<iframe>` and ignore the rest.

## Global Attributes

- Common to all html elements.
- i.e. `class` attribute is universal. `id` as well.
- accesskey (ctrl+option+*key*).

## SVG

- XML-based vector image format with interactivity and animation (think Flash). They don't lose
quality when resized or zoomed in.

## CSS Selectors

**NOTE:** instructor recommends using classes exclusively for styling, tailwind always use classes

## Web Fonts

- Need to import using `@font-face` rule or a service like `Google Fonts`.
- He uses the link html option not the @import css option.

[Google Fonts](https://fonts.google.com/?preview.script=Latn&preview.lang=en_Latn)

## Font Styles

## Colors

### Properties

- `color`
- `background-color`
- `border`
- `outline`
- `box-shadow`
- `text-shadow`
- `fill`

### Color Names

There are 147 color names available:

[HTML Color Codes - Names](https://htmlcolorcodes.com/color-names/)

### Hex Values

I am very familiar with this method:

```
#RRGGBB
```

### RGB Values

3 pairs of 3 digits

Can also specify alpha transparency:

```
rgba(0, 0, 0, 0.5)
```

### HSL Values

Specify by hue, saturation, lightness

- Hue measured by degrees from 0 to 360
- Lightness and saturation from 0 to 100%

I am ignoring this as he is not using that

### Opacity

**NOTE:** there is a separate `opacity` property we can use if we do not want to use `rgba` or
`hsla1`.

## Specificity

1. Inline CSS (style attribute)
2. ID #
3. Class .
4. Element

Also in the CSS file the last declaration wins if the specificity is otherwise the same. So you can 
overwrite earlier declarations as long as the specificity is the same.

**NOTE:** `! important` is an overrride that makes anything win, but limit its use.

## Backgrounds

- Background iamges repeat by default which is useful for textures.

## Styling Links

### States

- `a:link` - normal unvisited link
- `a:hover` - link when hovererd
- `a:active` - moment link is clicked
- `a:focus` - moment link receives focus
- `a:visited` - link user has visited

**NOTE:** regular `a` and `a:hover` are the most commonly used.

## Font Awesome

[Font Awesome](https://fontawesome.com) - icon library (free and premium).

These are fonts. You can apply 

### CDNJS

Use [cdnjs](https://cdnjs.com/) without registering on the font awesome site. Looks like this CDN 
is operated by cloudeflare.

Search for `font awesome`, select latest version and then copy the link for the css we want (i.e.
all.min.css).

#### Example

```html
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css" integrity="sha512-2SwdPD6INVrV/lHTZbO2nodKhrnDdJK9/kg2XD1r9uGqPo1cUbujc+IYdlYdEErWNu69gVcYgdxlmVmzTWnetw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
```

