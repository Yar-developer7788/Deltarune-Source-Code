.localvar 2 arguments
.localvar 6386 menu 3722
.localvar 12080 xoff 3723
.localvar 12081 yoff 3724
.localvar 12082 xstep 3725
.localvar 12083 ystep 3726
.localvar 723 str 3732

:[0]
b [28]

> gml_Script_scr_84_name_input_setup (locals=6, argc=0)
:[1]
pushi.e 0
pop.v.i local.menu
pushi.e 0
pop.v.i local.xoff
pushi.e 0
pop.v.i local.yoff
pushi.e 0
pop.v.i local.xstep
pushi.e 0
pop.v.i local.ystep
push.v self.LANGSUBTYPE
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 68
pop.v.i local.xoff
pushi.e 70
pop.v.i local.yoff
pushi.e 20
pop.v.i local.xstep
pushi.e 20
pop.v.i local.ystep
pushi.e 40
pop.v.i self.PLAYERNAMEY
push.i 47090366
setowner.e
push.s "ABCDEFGHIJ"@12086
conv.s.v
pushi.e -7
pushi.e 0
pop.v.v [array]self.menu
push.s "KLMNOPQRST"@12087
conv.s.v
pushi.e -7
pushi.e 1
pop.v.v [array]self.menu
push.s "UVWXYZ < <"@12088
conv.s.v
pushi.e -7
pushi.e 2
pop.v.v [array]self.menu
pushi.e 0
pop.v.i self.CURX
pushi.e 0
pop.v.i self.CURY
b [9]

:[3]
push.v self.LANGSUBTYPE
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 28
pop.v.i local.xoff
pushi.e 80
pop.v.i local.yoff
pushi.e 16
pop.v.i local.xstep
pushi.e 15
pop.v.i local.ystep
pushi.e 60
pop.v.i self.PLAYERNAMEY
push.i 47090366
setowner.e
push.s "あいうえお　まみむめも　ぁぃぅぇぉ"@12091
conv.s.v
pushi.e -7
pushi.e 0
pop.v.v [array]self.menu
push.s "かきくけこ　や　ゆ　よ　がぎぐげご"@12092
conv.s.v
pushi.e -7
pushi.e 1
pop.v.v [array]self.menu
push.s "さしすせそ　らりるれろ　ざじずぜぞ"@12093
conv.s.v
pushi.e -7
pushi.e 2
pop.v.v [array]self.menu
push.s "たちつてと　わをんー　　だぢづでど"@12094
conv.s.v
pushi.e -7
pushi.e 3
pop.v.v [array]self.menu
push.s "なにぬねの　ゃゅょっゎ　ばびぶべぼ"@12095
conv.s.v
pushi.e -7
pushi.e 4
pop.v.v [array]self.menu
push.s "はひふへほ　　　　　　　ぱぴぷぺぽ"@12096
conv.s.v
pushi.e -7
pushi.e 5
pop.v.v [array]self.menu
push.s ">> << >> << >> <<"@12097
conv.s.v
pushi.e -7
pushi.e 6
pop.v.v [array]self.menu
push.s ">>>> <<<>>>> <<<<"@12098
conv.s.v
pushi.e -7
pushi.e 7
pop.v.v [array]self.menu
b [9]

:[5]
push.v self.LANGSUBTYPE
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
pushi.e 28
pop.v.i local.xoff
pushi.e 80
pop.v.i local.yoff
pushi.e 16
pop.v.i local.xstep
pushi.e 15
pop.v.i local.ystep
pushi.e 60
pop.v.i self.PLAYERNAMEY
push.i 47090366
setowner.e
push.s "アイウエオ　マミムメモ　ァィゥェォ"@12099
conv.s.v
pushi.e -7
pushi.e 0
pop.v.v [array]self.menu
push.s "カキクケコ　ヤ　ユ　ヨ　ガギグゲゴ"@12100
conv.s.v
pushi.e -7
pushi.e 1
pop.v.v [array]self.menu
push.s "サシスセソ　ラリルレロ　ザジズゼゾ"@12101
conv.s.v
pushi.e -7
pushi.e 2
pop.v.v [array]self.menu
push.s "タチツテト　ワヲンー　　ダヂヅデド"@12102
conv.s.v
pushi.e -7
pushi.e 3
pop.v.v [array]self.menu
push.s "ナニヌネノ　ャュョッヮ　バビブベボ"@12103
conv.s.v
pushi.e -7
pushi.e 4
pop.v.v [array]self.menu
push.s "ハヒフヘホ　　　　　　　パピプペポ"@12104
conv.s.v
pushi.e -7
pushi.e 5
pop.v.v [array]self.menu
push.s ">> << >> << >> <<"@12097
conv.s.v
pushi.e -7
pushi.e 6
pop.v.v [array]self.menu
push.s ">>>> <<<>>>> <<<<"@12098
conv.s.v
pushi.e -7
pushi.e 7
pop.v.v [array]self.menu
b [9]

:[7]
push.v self.LANGSUBTYPE
pushi.e 3
cmp.i.v EQ
bf [9]

:[8]
pushi.e 28
pop.v.i local.xoff
pushi.e 80
pop.v.i local.yoff
pushi.e 32
pop.v.i local.xstep
pushi.e 15
pop.v.i local.ystep
pushi.e 60
pop.v.i self.PLAYERNAMEY
push.i 47090366
setowner.e
push.s "ABCDEFGHI"@12105
conv.s.v
pushi.e -7
pushi.e 0
pop.v.v [array]self.menu
push.s "JKLMNOPQR"@12106
conv.s.v
pushi.e -7
pushi.e 1
pop.v.v [array]self.menu
push.s "STUVWXYZ "@12107
conv.s.v
pushi.e -7
pushi.e 2
pop.v.v [array]self.menu
push.s "         "@12108
conv.s.v
pushi.e -7
pushi.e 3
pop.v.v [array]self.menu
push.s "         "@12108
conv.s.v
pushi.e -7
pushi.e 4
pop.v.v [array]self.menu
push.s "         "@12108
conv.s.v
pushi.e -7
pushi.e 5
pop.v.v [array]self.menu
push.s "> <> <> <"@12109
conv.s.v
pushi.e -7
pushi.e 6
pop.v.v [array]self.menu
push.s ">> <>> <<"@12110
conv.s.v
pushi.e -7
pushi.e 7
pop.v.v [array]self.menu

:[9]
pushloc.v local.menu
call.i array_length_1d(argc=1)
pushi.e 1
sub.i.v
pop.v.v self.YMAX
pushi.e 0
pop.v.i self.j

:[10]
push.v self.j
push.v self.YMAX
cmp.v.v LTE
bf [15]

:[11]
pushi.e -7
push.v self.j
conv.v.i
push.v [array]self.menu
pop.v.v local.str
pushloc.v local.str
call.i string_length(argc=1)
pushi.e 1
sub.i.v
pop.v.v self.XMAX
pushi.e 0
pop.v.i self.i

:[12]
push.v self.i
push.v self.XMAX
cmp.v.v LTE
bf [14]

:[13]
push.i 47091196
setowner.e
push.v self.i
pushi.e 1
add.i.v
pushloc.v local.str
call.i string_char_at(argc=2)
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.NAME
push.v self.j
conv.v.i
popaf.e
push.i 47091197
setowner.e
pushloc.v local.xoff
push.v self.i
pushloc.v local.xstep
mul.v.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.NAMEX
push.v self.j
conv.v.i
popaf.e
push.i 47091198
setowner.e
pushloc.v local.yoff
push.v self.j
pushloc.v local.ystep
mul.v.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.NAMEY
push.v self.j
conv.v.i
popaf.e
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [12]

:[14]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [10]

:[15]
push.v self.LANGSUBTYPE
pushi.e 0
cmp.i.v EQ
bf [17]

:[16]
push.i 47091196
setowner.e
push.s "(B)BACK"@12116
conv.s.v
pushi.e -1
pushi.e 6
push.v [arraypopaf]self.NAME
pushi.e 2
popaf.e
push.s "(E)END"@12117
conv.s.v
pushi.e -1
pushi.e 8
push.v [arraypopaf]self.NAME
pushi.e 2
popaf.e
b [27]

:[17]
push.v self.LANGSUBTYPE
pushi.e 1
cmp.i.v EQ
bt [19]

:[18]
push.v self.LANGSUBTYPE
pushi.e 2
cmp.i.v EQ
b [20]

:[19]
push.e 1

:[20]
bf [25]

:[21]
push.i 47091196
setowner.e
push.s "(1)ひらがな"@12118
conv.s.v
pushi.e -1
pushi.e 2
push.v [arraypopaf]self.NAME
pushi.e 6
popaf.e
push.i 47091197
setowner.e
pushloc.v local.xoff
pushi.e 32
add.i.v
pushi.e 20
sub.i.v
pushi.e -1
pushi.e 2
push.v [arraypopaf]self.NAMEX
pushi.e 6
popaf.e
push.i 47091198
setowner.e
pushloc.v local.yoff
pushi.e 90
add.i.v
pushi.e 8
add.i.v
pushi.e -1
pushi.e 2
push.v [arraypopaf]self.NAMEY
pushi.e 6
popaf.e
push.i 47091196
setowner.e
push.s "(2)カタカナ"@12119
conv.s.v
pushi.e -1
pushi.e 8
push.v [arraypopaf]self.NAME
pushi.e 6
popaf.e
push.i 47091197
setowner.e
pushloc.v local.xoff
pushi.e 128
add.i.v
pushi.e 24
sub.i.v
pushi.e -1
pushi.e 8
push.v [arraypopaf]self.NAMEX
pushi.e 6
popaf.e
push.i 47091198
setowner.e
pushloc.v local.yoff
pushi.e 90
add.i.v
pushi.e 8
add.i.v
pushi.e -1
pushi.e 8
push.v [arraypopaf]self.NAMEY
pushi.e 6
popaf.e
push.i 47091196
setowner.e
push.s "(3)アルファベット"@12120
conv.s.v
pushi.e -1
pushi.e 14
push.v [arraypopaf]self.NAME
pushi.e 6
popaf.e
push.i 47091197
setowner.e
pushloc.v local.xoff
pushi.e 224
add.i.v
pushi.e 40
sub.i.v
pushi.e -1
pushi.e 14
push.v [arraypopaf]self.NAMEX
pushi.e 6
popaf.e
push.i 47091198
setowner.e
pushloc.v local.yoff
pushi.e 90
add.i.v
pushi.e 8
add.i.v
pushi.e -1
pushi.e 14
push.v [arraypopaf]self.NAMEY
pushi.e 6
popaf.e
push.i 47091196
setowner.e
push.s "(B)さくじょ"@12121
conv.s.v
pushi.e -1
pushi.e 4
push.v [arraypopaf]self.NAME
pushi.e 7
popaf.e
push.i 47091197
setowner.e
pushloc.v local.xoff
pushi.e 64
add.i.v
pushi.e 8
sub.i.v
pushi.e -1
pushi.e 4
push.v [arraypopaf]self.NAMEX
pushi.e 7
popaf.e
push.i 47091198
setowner.e
pushloc.v local.yoff
pushi.e 105
add.i.v
pushi.e 16
add.i.v
pushi.e -1
pushi.e 4
push.v [arraypopaf]self.NAMEY
pushi.e 7
popaf.e
push.i 47091196
setowner.e
push.s "(E)けってい"@12122
conv.s.v
pushi.e -1
pushi.e 12
push.v [arraypopaf]self.NAME
pushi.e 7
popaf.e
push.i 47091197
setowner.e
pushloc.v local.xoff
pushi.e 180
add.i.v
pushi.e 32
sub.i.v
pushi.e -1
pushi.e 12
push.v [arraypopaf]self.NAMEX
pushi.e 7
popaf.e
push.i 47091198
setowner.e
pushloc.v local.yoff
pushi.e 105
add.i.v
pushi.e 16
add.i.v
pushi.e -1
pushi.e 12
push.v [arraypopaf]self.NAMEY
pushi.e 7
popaf.e
push.v self.LANGSUBTYPE
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
pushi.e 2
pop.v.i self.CURX
pushi.e 6
pop.v.i self.CURY
b [24]

:[23]
pushi.e 8
pop.v.i self.CURX
pushi.e 6
pop.v.i self.CURY

:[24]
b [27]

:[25]
push.v self.LANGSUBTYPE
pushi.e 3
cmp.i.v EQ
bf [27]

:[26]
push.i 47091196
setowner.e
push.s "(1)ひらがな"@12118
conv.s.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.NAME
pushi.e 6
popaf.e
push.i 47091197
setowner.e
pushloc.v local.xoff
pushi.e 32
add.i.v
pushi.e 20
sub.i.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.NAMEX
pushi.e 6
popaf.e
push.i 47091198
setowner.e
pushloc.v local.yoff
pushi.e 90
add.i.v
pushi.e 8
add.i.v
pushi.e -1
pushi.e 1
push.v [arraypopaf]self.NAMEY
pushi.e 6
popaf.e
push.i 47091196
setowner.e
push.s "(2)カタカナ"@12119
conv.s.v
pushi.e -1
pushi.e 4
push.v [arraypopaf]self.NAME
pushi.e 6
popaf.e
push.i 47091197
setowner.e
pushloc.v local.xoff
pushi.e 128
add.i.v
pushi.e 24
sub.i.v
pushi.e -1
pushi.e 4
push.v [arraypopaf]self.NAMEX
pushi.e 6
popaf.e
push.i 47091198
setowner.e
pushloc.v local.yoff
pushi.e 90
add.i.v
pushi.e 8
add.i.v
pushi.e -1
pushi.e 4
push.v [arraypopaf]self.NAMEY
pushi.e 6
popaf.e
push.i 47091196
setowner.e
push.s "(3)アルファベット"@12120
conv.s.v
pushi.e -1
pushi.e 7
push.v [arraypopaf]self.NAME
pushi.e 6
popaf.e
push.i 47091197
setowner.e
pushloc.v local.xoff
pushi.e 224
add.i.v
pushi.e 40
sub.i.v
pushi.e -1
pushi.e 7
push.v [arraypopaf]self.NAMEX
pushi.e 6
popaf.e
push.i 47091198
setowner.e
pushloc.v local.yoff
pushi.e 90
add.i.v
pushi.e 8
add.i.v
pushi.e -1
pushi.e 7
push.v [arraypopaf]self.NAMEY
pushi.e 6
popaf.e
push.i 47091196
setowner.e
push.s "(B)さくじょ"@12121
conv.s.v
pushi.e -1
pushi.e 2
push.v [arraypopaf]self.NAME
pushi.e 7
popaf.e
push.i 47091197
setowner.e
pushloc.v local.xoff
pushi.e 64
add.i.v
pushi.e 8
sub.i.v
pushi.e -1
pushi.e 2
push.v [arraypopaf]self.NAMEX
pushi.e 7
popaf.e
push.i 47091198
setowner.e
pushloc.v local.yoff
pushi.e 105
add.i.v
pushi.e 16
add.i.v
pushi.e -1
pushi.e 2
push.v [arraypopaf]self.NAMEY
pushi.e 7
popaf.e
push.i 47091196
setowner.e
push.s "(E)けってい"@12122
conv.s.v
pushi.e -1
pushi.e 6
push.v [arraypopaf]self.NAME
pushi.e 7
popaf.e
push.i 47091197
setowner.e
pushloc.v local.xoff
pushi.e 180
add.i.v
pushi.e 32
sub.i.v
pushi.e -1
pushi.e 6
push.v [arraypopaf]self.NAMEX
pushi.e 7
popaf.e
push.i 47091198
setowner.e
pushloc.v local.yoff
pushi.e 105
add.i.v
pushi.e 16
add.i.v
pushi.e -1
pushi.e 6
push.v [arraypopaf]self.NAMEY
pushi.e 7
popaf.e
pushi.e 7
pop.v.i self.CURX
pushi.e 6
pop.v.i self.CURY

:[27]
pushi.e -1
push.v self.CURX
conv.v.i
push.v [arraypushaf]self.NAMEX
push.v self.CURY
conv.v.i
pushaf.e
pushi.e -1
push.v self.CURX
conv.v.i
push.v [arraypushaf]self.NAME
push.v self.CURY
conv.v.i
pushaf.e
call.i string_width(argc=1)
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 10
sub.i.v
pop.v.v self.HEARTX
pushi.e -1
push.v self.CURX
conv.v.i
push.v [arraypushaf]self.NAMEY
push.v self.CURY
conv.v.i
pushaf.e
pop.v.v self.HEARTY
exit.i

:[28]
push.i [function]gml_Script_scr_84_name_input_setup
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_84_name_input_setup
popz.v

:[end]