# Changelog

## v0.1.0 - Initial Release

### Added
- Basic syntax highlighting for Ren'Py (`.rpy`, `.rpyc`, `.rpym`, `.rpymc`)
- Keyword highlighting (`label`, `jump`, `call`, `return`, `menu`, 
  `scene`, `show`, `hide`, `pause`, `init`, `python`)
- String highlighting for dialogue and narrator lines
- Comment highlighting (`#`)
- Number highlighting
- Character name highlighting in say statements
- Image name highlighting in scene/show/hide statements
- Inline Python (`$`) keyword highlighting
- Auto-indentation after `:` in label, menu, python, and init blocks
- Powered by [tree-sitter-renpy](https://github.com/ZeynTheDev/tree-sitter-renpy)

### Known Limitations
- Menu block contents are not individually highlighted due to
  opaque block parsing. Planned fix in v0.2.0.
- Embedded Python blocks (`python:`, `init python:`) contents
  are not highlighted. Requires external scanner (v0.2.0).
- Multi-word image names (`show eileen happy`) are not supported.
  Use underscored names (`show eileen_happy`) as a workaround.
- `True`, `False`, `None` inside Python blocks are not highlighted.

### Planned for v0.2.0
- External scanner for proper indent/dedent block parsing
- Proper nested statement highlighting inside menu blocks
- Multi-word image name support
- Python keyword/value highlighting inside embedded blocks