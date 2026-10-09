// Automatic text fitting. Both functions must be called inside `context`.

// Sizes from `largest` down to `smallest`, in half-point steps.
#let size_steps(largest, smallest) = {
  let count = int(calc.round((largest - smallest) / 0.5pt))
  range(count + 1).map(i => largest - i * 0.5pt)
}

// First value in `candidates` for which `make(value)` fits in the given width and height.
// Falls back to the last candidate when nothing fits.
#let fit(make, candidates, width: none, height: none) = {
  let chosen = candidates.last()
  for value in candidates {
    let size = measure(make(value))
    if (width == none or size.width <= width) and (height == none or size.height <= height) {
      chosen = value
      break
    }
  }
  chosen
}
