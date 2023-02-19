Script that produces a custom sound pack for [Mechvibes](https://github.com/hainguyents13/mechvibes).  Each keypress produces its byte(s) transmitted as audio.  Relies on [Sound eXchange](https://sox.sourceforge.net/) and [Minimodem](http://www.whence.com/minimodem/).

| ID | Key | Note | ASCII Byte |
| -: | :-: | :-: | :-- |
| 14 | Backspace |  | 08 |
| 15 | Tab |  | 09 |
| 28 | Carriage Return | Return/Enter | 0d |
| 1 | Escape |  | 1b |
| 57 | Space |  | 20 |
| 40 | Apostrophe |  | 27 |
| 51 | Comma |  | 2c |
| 12 | Hyphen |  | 2d |
| 52 | Period |  | 2e |
| 53 | Slash |  | 2f |
| 11 | Zero |  | 30 |
| 2 | One |  | 31 |
| 3 | Two |  | 32 |
| 4 | Three |  | 33 |
| 5 | Four |  | 34 |
| 6 | Five |  | 35 |
| 7 | Six |  | 36 |
| 8 | Seven |  | 37 |
| 9 | Eight |  | 38 |
| 10 | Nine |  | 39 |
| 39 | Semicolon |  | 3b |
| 13 | Equals Sign |  | 3d |
| 30 | Alpha |  | 41 |
| 48 | Bravo |  | 42 |
| 46 | Charlie |  | 43 |
| 32 | Delta |  | 44 |
| 18 | Echo |  | 45 |
| 33 | Foxtrot |  | 46 |
| 34 | Golf |  | 47 |
| 35 | Hotel |  | 48 |
| 23 | India |  | 49 |
| 36 | Juliet |  | 4a |
| 37 | Kilo |  | 4b |
| 38 | Lima |  | 4c |
| 50 | Mike |  | 4d |
| 49 | November |  | 4e |
| 24 | Oscar |  | 4f |
| 25 | Papa |  | 50 |
| 16 | Quebec |  | 51 |
| 19 | Romeo |  | 52 |
| 31 | Sierra |  | 53 |
| 20 | Tango |  | 54 |
| 22 | Uniform |  | 55 |
| 47 | Victor |  | 56 |
| 17 | Whiskey |  | 57 |
| 45 | X-Ray |  | 58 |
| 21 | Yankee |  | 59 |
| 44 | Zulu |  | 5a |
| 26 | Left Bracket |  | 5b |
| 43 | Backslash |  | 5c |
| 27 | Right Bracket |  | 5d |
| 41 | Grave |  | 60 |
| 3667 | Delete |  | 7f |
| 3612 | Line Feed | Number Pad Enter | 0a |
| 55 | Asterisk | Number Pad * | 2a |
| 78 | Plus Sign | Number Pad + | 2b |
| 74 | Minus Sign | Number Pad - | 2d |
| 83 | Decimal Sign | Number Pad . | 2e |
| 3637 | Slash | Number Pad / | 2f |
| 82 | Zero | Number Pad 0 | 30 |
| 79 | One | Number Pad 1 | 31 |
| 80 | Two | Number Pad 2 | 32 |
| 81 | Three | Number Pad 3 | 33 |
| 75 | Four | Number Pad 4 | 34 |
| 76 | Five | Number Pad 5 | 35 |
| 77 | Six | Number Pad 6 | 36 |
| 71 | Seven | Number Pad 7 | 37 |
| 72 | Eight | Number Pad 8 | 38 |
| 73 | Nine | Number Pad 9 | 39 |
| 3597 | Equals Sign | Number Pad = | 3d |
| 61011 | Delete | Number Pad Delete | 7f |

| ID | Key | Note | C0/C1 Byte |
| -: | :-: | :-: | :-- |
| 42 | Shift | Left | 0e |
| 54 | Shift | Right | 0e |
| 58 | Caps Lock |  | 0f |
| 3639 | Print Screen |  | 10 |
| 69 | Num Lock | Number Pad Clear | 1a |
| 3653 | Pause |  | 82 |
| 70 | Scroll Lock |  | 93 |
| 3666 | Insert |  | 9a |
| 61010 | Insert | Number Pad Insert | 9a |

| ID | Key | Note | ANSI Byte Sequence |
| -: | :-: | :-: | :-- |
| 3663 | End |  | 1b 5b 30 47 |
| 57416 | Cursor Up |  | 1b 5b 31 41 |
| 57424 | Cursor Down |  | 1b 5b 31 42 |
| 57419 | Cursor Left |  | 1b 5b 31 43 |
| 57421 | Cursor Right |  | 1b 5b 31 44 |
| 3655 | Home |  | 1b 5b 31 47 |
| 3657 | Page Up |  | 1b 5b 32 35 53 |
| 3665 | Page Down |  | 1b 5b 32 35 54 |
| 61007 | End | Number Pad | 1b 5b 30 47 |
| 61000 | Cursor Up | Number Pad | 1b 5b 31 41 |
| 61008 | Cursor Down | Number Pad | 1b 5b 31 42 |
| 61003 | Cursor Left | Number Pad | 1b 5b 31 43 |
| 61005 | Cursor Right | Number Pad | 1b 5b 31 44 |
| 60999 | Home | Number Pad | 1b 5b 31 47 |
| 61001 | Page Up | Number Pad | 1b 5b 32 35 53 |
| 61009 | Page Down | Number Pad | 1b 5b 32 35 54 |
| 56 | Alternate | Left | 1b 4e |
| 3640 | Alternate | Right | 1b 4f |
| 29 | Control | Left | 1b 5b |
| 3613 | Control | Right | 1b 5b |
| 3675 | Meta | Left | 1b 5d |
| 3676 | Meta | Right | 1b 5d |
| 3677 | Hyper |  | 1b 5f |

| ID | Key | Note | Arbitrary Byte Sequence |
| -: | :-: | :-: | :-- |
| 59 | Function | 1 | 1b 01 |
| 60 | Function | 2 | 1b 02 |
| 61 | Function | 3 | 1b 03 |
| 62 | Function | 4 | 1b 04 |
| 63 | Function | 5 | 1b 05 |
| 64 | Function | 6 | 1b 06 |
| 65 | Function | 7 | 1b 07 |
| 66 | Function | 8 | 1b 08 |
| 67 | Function | 9 | 1b 09 |
| 68 | Function | 10 | 1b 0a |
| 87 | Function | 11 | 1b 0b |
| 88 | Function | 12 | 1b 0c |
| 91 | Function | 13 | 1b 0d |
| 92 | Function | 14 | 1b 0e |
| 93 | Function | 15 | 1b 0f |
