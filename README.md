# Progress color

Generates HTML hexadecimal color strings for percentages. These can be used to create HTML progress-bars colored according to the percentage represented. This library assumes that 0%..50%..100% maps to red..yellow..green.

## Usage

    require 'progress_color'
    ProgressColor.at(0.00)  # => "FF0000"
    ProgressColor.at(0.32)  # => "FFA300"
    ProgressColor.at(0.69)  # => "9EFF00"
    ProgressColor.at(1.00)  # => "00FF00"

## Instant rendering

    $ rake view
    $ firefox localhost:4567

