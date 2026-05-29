# Changelog

>[!NOTE]
> Current Version: 0.2.0

## Table of Contents

[v0.2.0](#v020---python-injection--advanced-block-parsing) | [v0.1.0](#v010---initial-release)

## v0.2.0 - Python Injection & Advanced Block Parsing

### Added
- **Python Language Injection:** Embedded Python blocks (`python:`, `init python:`, and inline `$`) are now fully injected with Zed's native Python syntax highlighting (correctly coloring `True`, `False`, numbers, and variables).
- Syntax highlighting for multi-word image names (e.g., `show eileen happy`).
- Syntax highlighting for transform properties (e.g., the `at` keyword and `right` property).
- Function highlighting for label identifiers in `jump` and `call` statements.
- Keyword highlighting for the `python` keyword in `init python` statements.
- Auto-indentation support for nested `menu_choice` blocks.

### Fixed
- Updated underlying [tree-sitter-renpy](https://github.com/ZeynTheDev/tree-sitter-renpy) to v0.2.0, which introduces a custom C scanner for robust indent/dedent handling.
- Menu blocks and their contents are no longer opaque; nested statements inside menus are now structurally parsed and indented correctly.

### Known Limitations (Planned for v0.3.0)
- Missing syntax highlighting for variable declaration statements (`define`, `default`).
- Missing syntax highlighting for audio control statements (`play`, `stop`, `queue`).
- GUI and layout blocks (`screen`, `style`, `transform`, `image`) are not yet parsed or highlighted.
- Transition statements (`with`) are not yet explicitly mapped.

---

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