.localvar 2 arguments

:[0]
pushi.e 82
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [2]

:[1]
push.v 82.depth
pushi.e 10
sub.i.v
pop.v.v self.depth

:[2]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.v self.falling
pushi.e -2
cmp.i.v EQ
bf [8]

:[3]
pushi.e 0
pop.v.i self.visible
push.v 82.y
pushi.e 240
cmp.i.v GTE
bf [5]

:[4]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 80
sub.i.v
pop.v.v self.y
pushi.e 1
pop.v.i self.visible
pushi.e -1
pop.v.i self.falling

:[8]
push.v self.falling
pushi.e -1
cmp.i.v EQ
bf [12]

:[9]
pushi.e 1
pop.v.i global.interact
push.v 82.x
pushi.e 20
add.i.v
pop.v.v self.x
push.v self.y
push.v 82.y
cmp.v.v LTE
bf [11]

:[10]
push.v self.y
pushi.e 10
add.i.v
pop.v.v self.y
b [12]

:[11]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.i self.falling
push.v 82.y
pushi.e 5
add.i.v
pop.v.v self.y
pushi.e 173
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[12]
push.v self.falling
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [26]

:[16]
push.v self.x
pop.v.v self.nowx
push.v self.y
pop.v.v self.nowy
push.v 82.x
pushi.e 20
add.i.v
pop.v.v self.x
push.v 82.y
pushi.e 5
add.i.v
pop.v.v self.y
push.v self.inittimer
pushi.e 1
cmp.i.v LT
bf [18]

:[17]
push.v self.inittimer
push.d 0.02
add.d.v
pop.v.v self.inittimer

:[18]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [24]

:[19]
push.v self.nowx
push.v self.x
cmp.v.v NEQ
bf [21]

:[20]
push.v self.balancespeed
push.v self.x
push.v self.nowx
sub.v.v
pushi.e 16
conv.i.d
div.d.v
add.v.v
pop.v.v self.balancespeed
push.v self.balance
push.v self.x
push.v self.nowx
sub.v.v
pushi.e 4
conv.i.d
div.d.v
add.v.v
pop.v.v self.balance

:[21]
push.v self.balancespeed
call.i abs(argc=1)
pushi.e 3
cmp.i.v LT
bf [23]

:[22]
push.v self.balancespeed
push.v self.balance
pushi.e 192
conv.i.d
div.d.v
add.v.v
pop.v.v self.balancespeed

:[23]
push.v self.balance
push.v self.balance
pushi.e 64
conv.i.d
div.d.v
push.v self.inittimer
mul.v.v
add.v.v
pop.v.v self.balance
push.v self.balance
push.v self.balancespeed
pushi.e 2
conv.i.d
div.d.v
push.v self.inittimer
mul.v.v
add.v.v
pop.v.v self.balance
push.v self.balance
pop.v.v self.image_angle

:[24]
pushi.e 1
pop.v.i self.init
push.v self.balance
call.i abs(argc=1)
pushi.e 90
cmp.i.v GTE
bf [26]

:[25]
pushi.e 1
pop.v.i self.falling
push.v self.y
pop.v.v self.remy

:[26]
push.v self.falling
pushi.e 1
cmp.i.v EQ
bf [37]

:[27]
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
push.v self.vspeed
pushi.e 2
add.i.v
pop.v.v self.vspeed
push.v self.balance
push.v self.balance
pushi.e 16
conv.i.d
div.d.v
add.v.v
pop.v.v self.balance
push.v self.balance
pop.v.v self.image_angle
push.v self.balance
pushi.e 0
cmp.i.v LT
bf [29]

:[28]
push.v self.hspeed
pushi.e 1
add.i.v
pop.v.v self.hspeed

:[29]
push.v self.balance
pushi.e 0
cmp.i.v GT
bf [31]

:[30]
push.v self.hspeed
pushi.e 1
sub.i.v
pop.v.v self.hspeed

:[31]
push.v self.y
push.v self.remy
pushi.e 60
add.i.v
cmp.v.v GTE
bf [37]

:[32]
pushi.e 166
conv.i.v
pushi.e 165
conv.i.v
call.i choose(argc=2)
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.sprite_index
push.v self.y
push.v self.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.brokenpot
pushi.e 1
push.v self.brokenpot
pushi.e -9
pop.v.i [stacktop]self.image_index
push.i 800000
push.v self.brokenpot
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 2
pop.v.i self.falling
pushi.e 0
pop.v.i self.timer
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [34]

:[33]
pushi.e 0
pop.v.i global.interact

:[34]
pushi.e -5
pushi.e 385
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [36]

:[35]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 385
pop.v.v [array]self.flag

:[36]
pushi.e 0
pop.v.b self.visible
call.i instance_destroy(argc=0)
popz.v

:[37]
push.v self.falling
pushi.e 3
cmp.i.v EQ
bf [39]

:[38]
pushi.e 0
pop.v.i self.vspeed
push.v 82.x
pushi.e 20
add.i.v
pop.v.v self.x
push.v 82.y
pushi.e 10
add.i.v
pop.v.v self.y

:[39]
push.v self.falling
pushi.e -99
cmp.i.v EQ
bf [42]

:[40]
pushi.e 868
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [42]

:[41]
push.v self.memfalling
pop.v.v self.falling

:[42]
pushi.e 868
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [44]

:[43]
pushi.e -99
pop.v.i self.falling
b [end]

:[44]
push.v self.falling
pop.v.v self.memfalling

:[end]