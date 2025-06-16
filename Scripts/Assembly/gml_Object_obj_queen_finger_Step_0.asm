.localvar 2 arguments
.localvar 24716 lerpvalue 11686

:[0]
push.v self.timer
push.e 1
sub.i.v
pop.v.v self.timer
push.v 872.x
pushi.e 80
add.i.v
pop.v.v self.xx
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.b self.scrollPrep
pushi.e 0
pop.v.i self.timer
push.i 8421504
pop.v.i self.image_blend

:[2]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 3
conv.i.v
push.v self.timer
pushi.e 50
conv.i.d
div.d.v
call.i gml_Script_scr_ease_inout(argc=2)
push.v self.xstart
push.v self.xx
call.i lerp(argc=3)
pop.v.v self.x
pushi.e -1
conv.i.v
push.v self.timer
pushi.e 50
conv.i.d
div.d.v
call.i gml_Script_scr_ease_inout(argc=2)
push.v self.ystart
push.v self.yy
call.i lerp(argc=3)
pop.v.v self.y
b [9]

:[4]
push.v self.state
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e 3
conv.i.v
push.v self.timer
pushi.e 15
conv.i.d
div.d.v
call.i gml_Script_scr_ease_inout(argc=2)
push.v self.ystop
push.v self.yy
call.i lerp(argc=3)
pop.v.v self.y
b [9]

:[6]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [9]

:[7]
push.v self.y
push.v self.scrollSpeed
add.v.v
pop.v.v self.y
push.v self.y
pop.v.v self.ystop
push.v self.scrollSpeed
pushi.e 5
cmp.i.v LTE
bf [9]

:[8]
pushi.e 0
pop.v.i self.timer

:[9]
push.v self.state
pushi.e 3
cmp.i.v GTE
bf [11]

:[10]
push.v self.state
pushi.e 6
cmp.i.v NEQ
b [12]

:[11]
push.e 0

:[12]
bf [17]

:[13]
push.v self.trueScrollSpeed
pushi.e 10
cmp.i.v GT
bf [15]

:[14]
push.v self.trueScrollSpeed
push.d 0.5
sub.d.v
pop.v.v self.trueScrollSpeed
b [16]

:[15]
push.v self.trueScrollSpeed
push.d 0.2
sub.d.v
pop.v.v self.trueScrollSpeed

:[16]
pushi.e 20
conv.i.v
pushi.e 4
conv.i.v
push.v self.trueScrollSpeed
call.i clamp(argc=3)
pop.v.v self.scrollSpeed

:[17]
push.v self.state
pushi.e 5
cmp.i.v EQ
bf [19]

:[18]
pushi.e 3
conv.i.v
push.v self.timer
pushi.e 15
conv.i.d
div.d.v
call.i gml_Script_scr_ease_inout(argc=2)
push.v self.ystop
push.v self.yy
pushi.e 6
sub.i.v
call.i lerp(argc=3)
pop.v.v self.y

:[19]
push.v self.state
pushi.e 6
cmp.i.v EQ
bf [21]

:[20]
pushi.e 5
conv.i.v
push.v self.timer
pushi.e 20
conv.i.d
div.d.v
call.i gml_Script_scr_ease_in(argc=2)
pop.v.v local.lerpvalue
pushloc.v local.lerpvalue
push.v self.yy
push.v self.yy
pushi.e 6
sub.i.v
call.i lerp(argc=3)
pop.v.v self.y
pushloc.v local.lerpvalue
neg.v
pushi.e 4
mul.i.v
pop.v.v self.scrollSpeed
b [26]

:[21]
push.v self.state
pushi.e 7
cmp.i.v EQ
bf [23]

:[22]
pushi.e 5
conv.i.v
push.v self.timer
pushi.e 20
conv.i.d
div.d.v
call.i gml_Script_scr_ease_in(argc=2)
push.v self.yy
pushi.e 6
sub.i.v
push.v self.yy
pushi.e 130
add.i.v
call.i lerp(argc=3)
pop.v.v self.y
b [26]

:[23]
push.v self.state
pushi.e 8
cmp.i.v EQ
bf [26]

:[24]
push.v self.scrollSpeed
pushi.e 5
cmp.i.v LTE
bf [26]

:[25]
pushi.e 0
pop.v.i self.timer

:[26]
push.v self.timer
pushi.e 0
cmp.i.v LTE
bf [end]

:[27]
push.v self.state
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [36]

:[28]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [37]

:[29]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [38]

:[30]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [42]

:[31]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [45]

:[32]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [46]

:[33]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [47]

:[34]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [48]

:[35]
b [49]

:[36]
pushi.e 50
pop.v.i self.timer
b [49]

:[37]
pushi.e 8
pop.v.i self.scrollSpeed
pushi.e 8
pop.v.i self.trueScrollSpeed
pushi.e 1000
pop.v.i self.timer
push.i 16777215
pop.v.i self.image_blend

:[38]
pushi.e 8
pop.v.i self.scrollSpeed
pushi.e 8
pop.v.i self.trueScrollSpeed
pushi.e 1000
pop.v.i self.timer
push.v self.bigscrollcount
pushi.e 0
cmp.i.v EQ
bf [40]

:[39]
pushi.e 1
pop.v.b self.scrollPrep
pushi.e 1
conv.i.v
call.i irandom(argc=1)
pushi.e 1
add.i.v
pop.v.v self.bigscrollcount
b [41]

:[40]
push.v self.bigscrollcount
push.e 1
sub.i.v
pop.v.v self.bigscrollcount
pushi.e 0
pop.v.b self.scrollPrep

:[41]
push.i 16777215
pop.v.i self.image_blend
b [49]

:[42]
push.v self.scrollPrep
conv.v.b
not.b
bf [44]

:[43]
pushi.e 15
pop.v.i self.timer

:[44]
push.i 8421504
pop.v.i self.image_blend
b [49]

:[45]
pushi.e 15
pop.v.i self.timer
push.i 16777215
pop.v.i self.image_blend
b [49]

:[46]
pushi.e 1
pop.v.i self.scrollSpeed
pushi.e 20
pop.v.i self.timer
b [49]

:[47]
pushi.e 25
pop.v.i self.trueScrollSpeed
pushi.e 20
pop.v.i self.timer
b [49]

:[48]
pushi.e 0
pop.v.b self.scrollPrep
pushi.e 1000
pop.v.i self.timer
b [49]

:[49]
popz.v
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [51]

:[50]
push.v self.state
push.e 1
add.i.v
pop.v.v self.state

:[51]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [53]

:[52]
push.v self.scrollPrep
conv.v.b
not.b
b [54]

:[53]
push.e 0

:[54]
bf [56]

:[55]
pushi.e 2
pop.v.i self.state
b [end]

:[56]
push.v self.state
pushi.e 8
cmp.i.v EQ
bf [58]

:[57]
pushi.e 3
pop.v.i self.state
b [end]

:[58]
push.v self.state
push.e 1
add.i.v
pop.v.v self.state

:[end]