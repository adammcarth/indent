# Indent [![Gem Version](https://badge.fury.io/rb/indent.svg)](https://rubygems.org/gems/indent)

``` ruby
require "indent"
```

**indent(spaces)**

``` ruby
"Hello, world!".indent(5)

#=> "     Hello, world!"
```

**code_indent(spaces)**

``` ruby
"<h1>Hey.</h1>\n<p>I'm Adam!</p>\n<a>Follow me...</a>".code_indent(4)

#=> "<h1>Hey.</h1>\n    <p>I'm Adam!</p>\n    <a>Follow me...</a>"
```
``` erb
<html>
  <body>
    <%= yield.code_indent(4) %>
  </body>
</html>

...

<html>
  <body>
    <h1>Hey.</h1>
    <p>I'm Adam!</p>
    <a>Follow me..</a>
  </body>
</html>
```

**html_indent(spaces)**

``` ruby
"whitespace_to_my_left".html_indent(2)

#=> "&nbsp;&nbsp;whitespace_to_my_left"
```
