; Keywords - use the actual statement node types
(label_statement "label" @keyword)
(jump_statement "jump" @keyword)
(call_statement "call" @keyword)
(return_statement) @keyword
(pause_statement "pause" @keyword)
(menu_statement "menu" @keyword)
(scene_statement "scene" @keyword)
(show_statement "show" @keyword)
(hide_statement "hide" @keyword)
(init_statement "init" @keyword)
(init_statement "python" @keyword)
(python_block "python" @keyword)
(python_line "$" @keyword)

; New transfrom keywords (e.g. 'at' in 'show eileen at right')
"at" @keyword

; Label names
(label_statement (identifier) @function)
(jump_statement (identifier) @function)
(call_statement (identifier) @function)

; Say statements - character name should be variable, not string
(say_statement
  (identifier) @variable
  (string) @string)

; Narrator say (string only, no character)
(say_statement
  (string) @string)

; Strings
(string) @string

; Numbers
(number) @number

; Comments
(comment) @comment

; Image names and Transform propertion
(image_name (identifier) @string.special)
(transform_property (identifier) @constant)
