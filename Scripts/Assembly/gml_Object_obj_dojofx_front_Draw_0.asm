.localvar 2 arguments
.localvar 21109 lightHeight 8994

:[0]
pushi.e 202
pop.v.i self.depth
pushglb.v global.fighting
pushi.e 1
cmp.i.v EQ
bf [38]

:[1]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
bf [3]

:[2]
push.v self.image_alpha
push.d 0.02
add.d.v
pop.v.v self.image_alpha

:[3]
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [37]

:[5]
push.i 169396
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.myy
push.i 169394
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.exists
push.v self.i
pushi.e 2
cmp.i.v LTE
bf [12]

:[6]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 0
cmp.i.v NEQ
bf [12]

:[7]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.charinstance
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [12]

:[8]
pushi.e 1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.exists
push.i 169397
setowner.e
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.charinstance
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.instance
push.i 166104
setowner.e
pushi.e 80
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.width
push.i 169396
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.instance
pushi.e -9
push.v [stacktop]self.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.instance
pushi.e -9
push.v [stacktop]self.idlesprite
call.i sprite_get_height(argc=1)
pushi.e 2
mul.i.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.myy
push.i 169395
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.instance
pushi.e -9
push.v [stacktop]self.x
pushi.e 20
add.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.myx
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [10]

:[9]
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.myx
pushi.e 15
add.i.v
pop.i.v [array]self.myx

:[10]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [12]

:[11]
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.myx
pushi.e 15
add.i.v
pop.i.v [array]self.myx

:[12]
push.v self.i
pushi.e 3
cmp.i.v GTE
bf [14]

:[13]
push.v self.i
pushi.e 6
cmp.i.v LTE
b [15]

:[14]
push.e 0

:[15]
bf [20]

:[16]
pushi.e -5
push.v self.i
pushi.e 3
sub.i.v
conv.v.i
push.v [array]self.monsterinstance
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [18]

:[17]
push.i 169394
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.exists

:[18]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.exists
conv.v.b
bf [20]

:[19]
push.i 169397
setowner.e
pushi.e -5
push.v self.i
pushi.e 3
sub.i.v
conv.v.i
push.v [array]self.monsterinstance
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.instance
push.i 169395
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.instance
pushi.e -9
push.v [stacktop]self.x
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.instance
pushi.e -9
push.v [stacktop]self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.myx
push.i 169396
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.instance
pushi.e -9
push.v [stacktop]self.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.instance
pushi.e -9
push.v [stacktop]self.sprite_height
add.v.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.myy
push.i 166104
setowner.e
pushi.e -5
push.v self.i
pushi.e 3
sub.i.v
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
push.v [stacktop]self.sprite_width
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.width

:[20]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.exists
conv.v.b
bf [22]

:[21]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.instance
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [23]

:[22]
push.e 0

:[23]
bf [36]

:[24]
pushglb.v global.encounterno
pushi.e 90
cmp.i.v EQ
bt [29]

:[25]
pushglb.v global.encounterno
pushi.e 91
cmp.i.v EQ
bt [29]

:[26]
pushglb.v global.encounterno
pushi.e 92
cmp.i.v EQ
bt [29]

:[27]
pushglb.v global.encounterno
pushi.e 93
cmp.i.v EQ
bt [29]

:[28]
pushglb.v global.encounterno
pushi.e 94
cmp.i.v EQ
b [30]

:[29]
push.e 1

:[30]
bf [32]

:[31]
push.v self.i
pushi.e 2
cmp.i.v GT
b [33]

:[32]
push.e 0

:[33]
bf [35]

:[34]
b [36]

:[35]
pushi.e 280
pop.v.i local.lightHeight
push.d 0.25
conv.d.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.myy
pushi.e 2
sub.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.myx
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.myy
pushi.e 2
sub.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.myx
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pushi.e 2
add.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.myy
pushloc.v local.lightHeight
sub.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.myx
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.myy
pushloc.v local.lightHeight
sub.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.myx
pushi.e 0
conv.i.v
pushi.e 3243
conv.i.v
call.i draw_sprite_pos(argc=11)
popz.v
push.i 8421504
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.myy
pushi.e 10
sub.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.myx
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.myy
pushi.e 4
add.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.myx
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
call.i draw_ellipse(argc=5)
popz.v

:[36]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [4]

:[37]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
b [end]

:[38]
push.v self.image_alpha
pushi.e 0
cmp.i.v GT
bf [end]

:[39]
push.v self.image_alpha
push.d 0.02
sub.d.v
pop.v.v self.image_alpha

:[end]