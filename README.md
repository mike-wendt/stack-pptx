# `stack.js` PPT convertor

Based on Mike Bostock's [stack.js](https://github.com/mbostock/stack) presentation library with intuitive, scroll-based navigation. With scripts to quickly convert PowerPoint presnetations to stack.js for embedding websites within existing slides.

## Usage

### Exporting Slides as Images
1. Export slide deck as **PNG** images saving each image in at least HD (1920x1080)
2. Move all images `Slide##.png` into a folder named `img` in the root of this directory

### Generating `stack.js` HTML Page
1. Run `./gen.sh ##` where **##** is the number of slide images located in the `img` directory
2. View/customize `index.html` to embed websites and other content
 * Use `example.html` for reference
