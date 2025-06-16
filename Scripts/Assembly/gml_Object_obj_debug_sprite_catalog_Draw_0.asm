.localvar 2 arguments
.localvar 10407 last 15811
.localvar 30011 spriteCount 15812
.localvar 30013 findString 15813

:[0]
pushi.e 1
pop.v.i self.oldway
pushi.e 0
pop.v.i self.yy
pushi.e 100
pop.v.i self.topy
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
call.i gml_Script_cameray(argc=0)
pop.v.v self.cy
push.v self.oldway
conv.v.b
bf [47]

:[1]
pushi.e 0
pop.v.i self.i
push.v self.sy
pushi.e 480
conv.i.d
div.d.v
call.i round(argc=1)
pop.v.v self.starti
pushi.e 1
pop.v.i self.displaymode
push.v self.displaymode
pushi.e 0
cmp.i.v EQ
bf [12]

:[2]
pushi.e 0
pop.v.i self.i

:[3]
push.v self.i
push.v self.myLastSprite
cmp.v.v LT
bf [12]

:[4]
push.v self.yy
push.v self.sy
add.v.v
push.v self.cy
pushi.e 200
sub.i.v
cmp.v.v GT
bf [6]

:[5]
push.v self.yy
push.v self.sy
add.v.v
push.v self.cy
pushi.e 700
add.i.v
cmp.v.v LT
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.yy
push.v self.topy
add.v.v
push.v self.sy
add.v.v
pushi.e 5
add.i.v
pushi.e 100
conv.i.v
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mySprite
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mySpriteName
push.v self.yy
push.v self.topy
add.v.v
push.v self.sy
add.v.v
pushi.e 5
sub.i.v
pushi.e 22
conv.i.v
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mySpriteName
push.v self.yy
push.v self.topy
add.v.v
push.v self.sy
add.v.v
pushi.e 3
sub.i.v
pushi.e 20
conv.i.v
call.i draw_text(argc=3)
popz.v
b [11]

:[9]
push.v self.yy
push.v self.sy
add.v.v
push.v self.cy
pushi.e 700
add.i.v
cmp.v.v GT
bf [11]

:[10]
b [12]

:[11]
push.v self.yy
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mySpriteHeight
pushi.e 2
mul.i.v
pushi.e 10
add.i.v
add.v.v
pop.v.v self.yy
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [3]

:[12]
pushi.e -1
pop.v.i self.i
push.v self.displaymode
pushi.e 1
cmp.i.v EQ
bf [31]

:[13]
push.v self.i
push.v self.myLastSprite
cmp.v.v LT
bf [30]

:[14]
push.v self.yy
push.v self.sy
add.v.v
push.v self.cy
pushi.e 200
sub.i.v
cmp.v.v GT
bf [16]

:[15]
push.v self.yy
push.v self.sy
add.v.v
push.v self.cy
pushi.e 700
add.i.v
cmp.v.v LT
b [17]

:[16]
push.e 0

:[17]
bf [26]

:[18]
pushi.e 0
pop.v.i self.j

:[19]
push.v self.j
pushi.e 3
cmp.i.v LT
bf [25]

:[20]
push.v self.i
push.v self.myLastSprite
pushi.e 1
sub.i.v
cmp.v.v LT
bf [22]

:[21]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i

:[22]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.yy
push.v self.topy
add.v.v
push.v self.sy
add.v.v
pushi.e 5
add.i.v
pushi.e 100
push.v self.j
pushi.e 130
mul.i.v
add.v.i
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mySprite
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.yy
push.v self.topy
add.v.v
push.v self.sy
add.v.v
pushi.e 5
add.i.v
pushi.e 80
add.i.v
push.v self.j
pushi.e 130
mul.i.v
pushi.e 200
add.i.v
push.v self.yy
push.v self.topy
add.v.v
push.v self.sy
add.v.v
pushi.e 5
add.i.v
push.v self.j
pushi.e 130
mul.i.v
pushi.e 100
add.i.v
pushbltn.v builtin.mouse_y
pushbltn.v builtin.mouse_x
call.i point_in_rectangle(argc=6)
conv.v.b
bf [24]

:[23]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mySpriteName
push.v self.yy
push.v self.topy
add.v.v
push.v self.sy
add.v.v
pushi.e 15
sub.i.v
push.v self.j
pushi.e 130
mul.i.v
pushi.e 100
add.i.v
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mySpriteName
push.v self.yy
push.v self.topy
add.v.v
push.v self.sy
add.v.v
pushi.e 17
sub.i.v
push.v self.j
pushi.e 130
mul.i.v
pushi.e 100
add.i.v
call.i draw_text(argc=3)
popz.v

:[24]
push.v self.j
push.e 1
add.i.v
pop.v.v self.j
b [19]

:[25]
b [27]

:[26]
push.v self.i
pushi.e 3
add.i.v
pop.v.v self.i

:[27]
push.v self.yy
pushi.e 100
add.i.v
pop.v.v self.yy
push.v self.i
push.v self.myLastSprite
pushi.e 1
sub.i.v
cmp.v.v GTE
bf [29]

:[28]
b [30]

:[29]
b [13]

:[30]
pushbltn.v builtin.mouse_y
pushbltn.v builtin.mouse_x
pushi.e 0
conv.i.v
pushi.e 1751
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[31]
push.v self.sy
call.i string(argc=1)
push.s " "@353
add.s.v
push.v self.yy
call.i string(argc=1)
add.v.v
push.s " "@353
add.s.v
push.v self.sy
push.v self.yy
add.v.v
call.i string(argc=1)
add.v.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 40
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [33]

:[32]
push.v self.sy
pushi.e 30
sub.i.v
pop.v.v self.sy

:[33]
pushi.e 38
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [35]

:[34]
push.v self.sy
pushi.e 30
add.i.v
pop.v.v self.sy

:[35]
pushi.e 39
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [37]

:[36]
push.v self.sy
pushi.e 120
sub.i.v
pop.v.v self.sy

:[37]
pushi.e 37
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [39]

:[38]
push.v self.sy
pushi.e 120
add.i.v
pop.v.v self.sy

:[39]
pushi.e 33
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [41]

:[40]
pushi.e 0
pop.v.i self.sy

:[41]
pushi.e 34
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [43]

:[42]
push.v self.sy
pushi.e 480
sub.i.v
pop.v.v self.sy

:[43]
call.i mouse_wheel_down(argc=0)
conv.v.b
bf [45]

:[44]
push.v self.sy
pushi.e 200
sub.i.v
pop.v.v self.sy

:[45]
call.i mouse_wheel_up(argc=0)
conv.v.b
bf [47]

:[46]
push.v self.sy
pushi.e 200
add.i.v
pop.v.v self.sy

:[47]
push.v self.oldway
conv.v.b
not.b
bf [79]

:[48]
pushi.e 0
pop.v.i self.yy
push.v self.sy
pushi.e 0
cmp.i.v LT
bf [50]

:[49]
pushi.e 0
pop.v.i self.sy

:[50]
push.v self.sy
pushi.e 15
add.i.v
pop.v.v local.last
pushloc.v local.last
push.v self.myLastSprite
pushi.e 1
sub.i.v
cmp.v.v GT
bf [52]

:[51]
push.v self.myLastSprite
pushi.e 1
sub.i.v
pop.v.v local.last

:[52]
push.v self.sy
pop.v.v self.i

:[53]
push.v self.i
pushloc.v local.last
cmp.v.v LT
bf [57]

:[54]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.yy
push.v self.topy
add.v.v
pushi.e 100
conv.i.v
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mySprite
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mySpriteName
push.v self.yy
push.v self.topy
add.v.v
pushi.e 6
sub.i.v
pushi.e 22
conv.i.v
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mySpriteName
push.v self.yy
push.v self.topy
add.v.v
pushi.e 7
sub.i.v
pushi.e 20
conv.i.v
call.i draw_text(argc=3)
popz.v
push.v self.yy
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mySpriteHeight
pushi.e 10
add.i.v
add.v.v
pop.v.v self.yy
push.v self.i
pushi.e 1
add.i.v
pushloc.v local.last
cmp.v.v LT
bf [56]

:[55]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.yy
push.v self.topy
add.v.v
pushi.e 400
conv.i.v
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mySprite
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mySpriteName
push.v self.yy
push.v self.topy
add.v.v
pushi.e 6
sub.i.v
pushi.e 322
conv.i.v
call.i draw_text(argc=3)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mySpriteName
push.v self.yy
push.v self.topy
add.v.v
pushi.e 7
sub.i.v
pushi.e 320
conv.i.v
call.i draw_text(argc=3)
popz.v
push.v self.yy
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mySpriteHeight
pushi.e 10
add.i.v
add.v.v
pop.v.v self.yy

:[56]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [53]

:[57]
pushi.e 38
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [59]

:[58]
push.v self.siner
pushi.e 6
mod.i.v
pushi.e 0
cmp.i.v EQ
b [60]

:[59]
push.e 0

:[60]
bf [62]

:[61]
push.v self.sy
pushi.e 2
sub.i.v
pop.v.v self.sy

:[62]
pushi.e 40
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [64]

:[63]
push.v self.siner
pushi.e 6
mod.i.v
pushi.e 0
cmp.i.v EQ
b [65]

:[64]
push.e 0

:[65]
bf [67]

:[66]
push.v self.sy
pushi.e 2
add.i.v
pop.v.v self.sy

:[67]
pushi.e 37
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [69]

:[68]
push.v self.sy
pushi.e 2
sub.i.v
pop.v.v self.sy

:[69]
pushi.e 39
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [71]

:[70]
push.v self.sy
pushi.e 2
add.i.v
pop.v.v self.sy

:[71]
pushi.e 33
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [73]

:[72]
pushi.e 0
pop.v.i self.sy

:[73]
pushi.e 34
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bf [75]

:[74]
push.v self.myLastSprite
pushi.e 1
sub.i.v
pop.v.v self.sy

:[75]
push.v self.sy
pushi.e 0
cmp.i.v LT
bf [77]

:[76]
pushi.e 0
pop.v.i self.sy

:[77]
push.v self.sy
push.v self.myLastSprite
pushi.e 2
sub.i.v
cmp.v.v GT
bf [79]

:[78]
push.v self.myLastSprite
pushi.e 2
sub.i.v
pop.v.v self.s

:[79]
pushi.e 70
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [85]

:[80]
pushi.e 0
pop.v.i self.sy
pushi.e 1
pop.v.i self.myLastSprite
push.i 168689
setowner.e
pushi.e 832
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.mySprite
push.i 172985
setowner.e
push.s "Nothing found."@30010
conv.s.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.mySpriteName
pushi.e 0
pop.v.i local.spriteCount
push.s ""@157
conv.s.v
push.s "Search term!"@30012
conv.s.v
call.i get_string(argc=2)
pop.v.v local.findString
pushi.e 0
pop.v.i self.i

:[81]
push.v self.i
push.v self.lastSprite
cmp.v.v LT
bf [85]

:[82]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spriteName
pushloc.v local.findString
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [84]

:[83]
push.i 168689
setowner.e
push.v self.i
pushi.e -1
pushloc.v local.spriteCount
conv.v.i
pop.v.v [array]self.mySprite
push.i 172985
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spriteName
pushi.e -1
pushloc.v local.spriteCount
conv.v.i
pop.v.v [array]self.mySpriteName
push.i 172986
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.spriteHeight
pushi.e -1
pushloc.v local.spriteCount
conv.v.i
pop.v.v [array]self.mySpriteHeight
push.v local.spriteCount
push.e 1
add.i.v
pop.v.v local.spriteCount
push.v self.myLastSprite
push.e 1
add.i.v
pop.v.v self.myLastSprite

:[84]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [81]

:[85]
pushi.e 68
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [94]

:[86]
pushi.e 0
pop.v.i self.sy
pushi.e 0
pop.v.i self.found
pushi.e 0
pop.v.i local.spriteCount
push.s ""@157
conv.s.v
push.s "Search in your search!"@30014
conv.s.v
call.i get_string(argc=2)
pop.v.v local.findString
pushi.e 0
pop.v.i self.i

:[87]
push.v self.i
push.v self.myLastSprite
cmp.v.v LTE
bf [91]

:[88]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mySpriteName
pushloc.v local.findString
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [90]

:[89]
pushi.e 1
pop.v.i self.found
push.i 168689
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mySprite
pushi.e -1
pushloc.v local.spriteCount
conv.v.i
pop.v.v [array]self.mySprite
push.i 172985
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mySpriteName
pushi.e -1
pushloc.v local.spriteCount
conv.v.i
pop.v.v [array]self.mySpriteName
push.i 172986
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.mySpriteHeight
pushi.e -1
pushloc.v local.spriteCount
conv.v.i
pop.v.v [array]self.mySpriteHeight
push.v local.spriteCount
push.e 1
add.i.v
pop.v.v local.spriteCount

:[90]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [87]

:[91]
push.v self.found
pushi.e 0
cmp.i.v EQ
bf [93]

:[92]
push.i 168689
setowner.e
pushi.e 832
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.mySprite
push.i 172985
setowner.e
push.s "Nothing found."@30010
conv.s.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.mySpriteName
pushi.e 1
pop.v.i self.myLastSprite
b [94]

:[93]
pushloc.v local.spriteCount
pop.v.v self.myLastSprite

:[94]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "Arrows/Pageup/Pagedown: Move\nF: Search all sprites!\nD: Search again in current sprites!\nMouseover for names."@30015
conv.s.v
pushi.e 80
conv.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 400
add.i.v
call.i draw_text(argc=3)
popz.v

:[end]