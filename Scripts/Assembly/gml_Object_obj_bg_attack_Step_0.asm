.localvar 2 arguments
.localvar 27237 end_timer 14319
.localvar 27238 obj_bgattack_piece_timer 14320

:[0]
pushi.e 121
pop.v.i local.end_timer
pushi.e 30
pop.v.i local.obj_bgattack_piece_timer
push.v self.variant
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 121
pop.v.i local.end_timer
pushi.e 24
pop.v.i local.obj_bgattack_piece_timer

:[2]
push.v self.variant
pushi.e 2
cmp.i.v EQ
bf [7]

:[3]
pushi.e 127
pop.v.i local.end_timer
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 5
pop.v.i local.obj_bgattack_piece_timer

:[5]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e 24
pop.v.i local.obj_bgattack_piece_timer

:[7]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [end]

:[8]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushloc.v local.obj_bgattack_piece_timer
cmp.v.v GTE
bf [10]

:[9]
push.v self.timer_end_attack
pushloc.v local.end_timer
cmp.v.v LT
b [11]

:[10]
push.e 0

:[11]
bf [33]

:[12]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=3)
pop.v.v self.invis

:[14]
pushi.e 0
pop.v.i self.i

:[15]
push.v self.i
pushi.e 5
cmp.i.v LT
bf [25]

:[16]
push.i 167765
setowner.e
pushi.e 781
conv.i.v
pushi.e 120
conv.i.v
pushi.e 280
pushi.e 20
push.v self.i
mul.v.i
add.v.i
call.i gml_Script_instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.piece
push.i 234464
setowner.e
push.d 0.1
push.v self.i
push.d 0.2
mul.d.v
add.v.d
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.piece
pushi.e -9
pop.v.v [stacktop]self.xrange
push.i 236476
setowner.e
push.v self.variant
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.piece
pushi.e -9
pop.v.v [stacktop]self.variant
push.v self.i
pushi.e 0
cmp.i.v EQ
bf [18]

:[17]
push.i 237679
setowner.e
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.piece
pushi.e -9
pop.v.i [stacktop]self.playsounds

:[18]
push.v self.variant
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
push.i 133628
setowner.e
push.d 0.08
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.piece
pushi.e -9
pop.v.d [stacktop]self.gravity

:[20]
push.v self.variant
pushi.e 2
cmp.i.v EQ
bf [22]

:[21]
push.d 0.16
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.piece
pushi.e -9
pop.v.d [stacktop]self.gravity

:[22]
push.v self.invis
push.v self.i
cmp.v.v EQ
bf [24]

:[23]
push.i 133635
setowner.e
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.piece
pushi.e -9
pop.v.i [stacktop]self.visible

:[24]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [15]

:[25]
push.v self.invis
pushi.e 2
cmp.i.v EQ
bf [27]

:[26]
push.i 133635
setowner.e
pushi.e 1
pushi.e -1
pushi.e 2
push.v [array]self.piece
pushi.e -9
pop.v.i [stacktop]self.visible
push.i 133642
setowner.e
pushi.e 2122
pushi.e -1
pushi.e 2
push.v [array]self.piece
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[27]
push.v self.variant
pushi.e 2
cmp.i.v EQ
bf [32]

:[28]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [30]

:[29]
pushi.e 1
pop.v.i self.state
pushi.e 5
pop.v.i local.obj_bgattack_piece_timer
b [32]

:[30]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [32]

:[31]
pushi.e 0
pop.v.i self.state
pushi.e 24
pop.v.i local.obj_bgattack_piece_timer

:[32]
pushi.e 0
pop.v.i self.timer

:[33]
push.v self.timer_end_attack
push.e 1
add.i.v
pop.v.v self.timer_end_attack
push.v self.timer_end_attack
pushloc.v local.end_timer
cmp.v.v GTE
bf [35]

:[34]
pushi.e 781
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [36]

:[35]
push.e 0

:[36]
bf [end]

:[37]
call.i instance_destroy(argc=0)
popz.v

:[end]