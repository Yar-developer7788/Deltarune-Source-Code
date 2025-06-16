.localvar 2 arguments

:[0]
push.v self.mycater
pushi.e 0
cmp.i.v EQ
bf [5]

:[1]
pushi.e 276
pushenv [4]

:[2]
push.v self.name
push.s "noelle"@74
cmp.s.v EQ
bf [4]

:[3]
push.v self.id
pop.v.v other.mycater

:[4]
popenv [2]

:[5]
push.v self.idealPositionProgress
pushi.e 1
cmp.i.v LT
bf [8]

:[6]
push.v self.idealPositionProgress
push.d 0.08
add.d.v
pop.v.v self.idealPositionProgress
push.v self.idealPositionProgress
pushi.e 1
cmp.i.v GT
bf [8]

:[7]
pushi.e 1
pop.v.i self.idealPositionProgress

:[8]
pushi.e 82
pushenv [16]

:[9]
pushi.e 1231
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [13]

:[10]
push.v other.stickToKris
pushi.e 0
cmp.b.v EQ
bf [12]

:[11]
pushi.e 0
pop.v.i other.idealPositionProgress

:[12]
pushi.e 1
pop.v.b other.stickToKris
b [16]

:[13]
push.v other.stickToKris
pushi.e 1
cmp.b.v EQ
bf [15]

:[14]
pushi.e 0
pop.v.i other.idealPositionProgress

:[15]
pushi.e 0
pop.v.b other.stickToKris

:[16]
popenv [9]
push.v self.stickToKris
pushi.e 1
cmp.b.v EQ
bf [39]

:[17]
pushbltn.v builtin.room
pushi.e 133
cmp.i.v NEQ
bf [22]

:[18]
push.v 82.x
pushi.e 4
sub.i.v
pop.v.v self.idealX
push.v 82.y
pushi.e 30
add.i.v
pop.v.v self.idealY
pushbltn.v builtin.room
pushi.e 123
cmp.i.v EQ
bf [20]

:[19]
pushi.e 262
conv.i.v
pushi.e 0
conv.i.v
push.v self.idealY
call.i clamp(argc=3)
pop.v.v self.idealY

:[20]
pushbltn.v builtin.room
pushi.e 128
cmp.i.v EQ
bf [22]

:[21]
pushi.e 222
conv.i.v
pushi.e 0
conv.i.v
push.v self.idealY
call.i clamp(argc=3)
pop.v.v self.idealY

:[22]
pushbltn.v builtin.room
pushi.e 133
cmp.i.v EQ
bf [35]

:[23]
pushi.e 82
pushenv [28]

:[24]
push.v self.y
push.v self.yprevious
cmp.v.v GT
bf [26]

:[25]
push.s "down"@25524
pop.v.s other.pos

:[26]
push.v self.y
push.v self.yprevious
cmp.v.v LT
bf [28]

:[27]
push.s "up"@25520
pop.v.s other.pos

:[28]
popenv [24]
push.v self.pos
push.v self.prevpos
cmp.v.v NEQ
bf [30]

:[29]
pushi.e 0
pop.v.i self.idealPositionProgress

:[30]
push.v self.pos
push.s "up"@25520
cmp.s.v EQ
bf [32]

:[31]
push.v 82.x
pushi.e 4
sub.i.v
pop.v.v self.idealX
push.v 82.y
pushi.e 30
add.i.v
pop.v.v self.idealY

:[32]
push.v self.pos
push.s "down"@25524
cmp.s.v EQ
bf [34]

:[33]
push.v 82.x
pushi.e 4
sub.i.v
pop.v.v self.idealX
push.v 82.y
pushi.e 30
sub.i.v
pop.v.v self.idealY

:[34]
push.v self.pos
pop.v.v self.prevpos

:[35]
push.v self.idealPositionProgress
push.v self.idealX
push.v self.x
call.i lerp(argc=3)
pop.v.v self.x
push.v self.idealPositionProgress
push.v self.idealY
push.v self.y
call.i lerp(argc=3)
pop.v.v self.y
pushi.e 0
pop.v.i self.image_speed
push.v 82.image_index
pop.v.v self.image_index
push.v self.xprevious
push.v self.x
cmp.v.v GT
bf [37]

:[36]
pushi.e 1543
pop.v.i self.sprite_index

:[37]
push.v self.xprevious
push.v self.x
cmp.v.v LT
bf [39]

:[38]
pushi.e 1542
pop.v.i self.sprite_index

:[39]
push.v self.stickToKris
pushi.e 0
cmp.b.v EQ
bf [45]

:[40]
pushi.e 1151
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [42]

:[41]
push.s "ahhhh"@38077
conv.s.v
call.i gml_Script_debug_message(argc=1)
popz.v
push.v self.y
pushi.e 8
sub.i.v
pop.v.v self.y
b [45]

:[42]
push.v self.mycater
pushi.e -9
pushenv [44]

:[43]
push.v other.x
pop.v.v self.x
push.v other.y
pop.v.v self.y
pushi.e 1
pop.v.b self.visible
call.i gml_Script_scr_caterpillar_interpolate(argc=0)
popz.v

:[44]
popenv [43]
call.i instance_destroy(argc=0)
popz.v

:[45]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[end]