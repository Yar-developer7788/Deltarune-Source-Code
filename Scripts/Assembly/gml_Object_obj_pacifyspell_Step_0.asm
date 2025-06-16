.localvar 2 arguments
.localvar 21744 zobj 9819

:[0]
push.s "I was born today"@21738
conv.s.v
call.i gml_Script_debug_message(argc=1)
popz.v
push.s "x:"@21739
push.v self.x
call.i string(argc=1)
add.v.s
call.i gml_Script_debug_message(argc=1)
popz.v
push.s "y:"@21740
push.v self.y
call.i string(argc=1)
add.v.s
call.i gml_Script_debug_message(argc=1)
popz.v
push.s "con:"@21741
push.v self.con
call.i string(argc=1)
add.v.s
call.i gml_Script_debug_message(argc=1)
popz.v
push.v self.target
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [2]

:[1]
push.v self.con
pushi.e 20
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.s "target does not exist"@21742
conv.s.v
call.i gml_Script_debug_message(argc=1)
popz.v
pushi.e 99
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v
exit.i

:[5]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [11]

:[6]
push.v self.fail
pushi.e 0
cmp.i.v EQ
bf [10]

:[7]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.d 0.1
conv.d.v
push.v self.flashcolor
push.v self.target
pushi.e -9
push.v [stacktop]self.image_blend
call.i merge_color(argc=3)
push.v self.target
pushi.e -9
pop.v.v [stacktop]self.image_blend
push.v self.siner
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
pushi.e 352
conv.i.v
push.v self.target
pushi.e -9
push.v [stacktop]self.y
push.v self.target
pushi.e -9
push.v [stacktop]self.sprite_height
add.v.v
pushi.e 20
sub.i.v
push.v self.target
pushi.e -9
push.v [stacktop]self.x
push.v self.target
pushi.e -9
push.v [stacktop]self.sprite_width
call.i random(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ai
push.d 0.5
push.v self.ai
pushi.e -9
pop.v.d [stacktop]self.gravity
pushi.e 1314
push.v self.ai
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 0.2
push.v self.ai
pushi.e -9
pop.v.d [stacktop]self.image_speed

:[9]
push.v self.target
pushi.e -9
dup.i 4
push.v [stacktop]self.x
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 10
mul.i.v
add.v.v
add.v.v
pop.i.v [stacktop]self.x
push.v self.target
pushi.e -9
dup.i 4
push.v [stacktop]self.y
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
sub.v.v
pop.i.v [stacktop]self.y
b [11]

:[10]
pushi.e 0
pop.v.i self.siner
pushi.e 5
pop.v.i self.con

:[11]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [15]

:[12]
push.v self.target
pushi.e -9
pushenv [14]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[14]
popenv [13]
call.i instance_destroy(argc=0)
popz.v

:[15]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [17]

:[16]
pushi.e 6
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 8
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[17]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [19]

:[18]
push.d 0.12
conv.d.v
push.v self.flashcolor
push.v self.target
pushi.e -9
push.v [stacktop]self.image_blend
call.i merge_color(argc=3)
push.v self.target
pushi.e -9
pop.v.v [stacktop]self.image_blend

:[19]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [21]

:[20]
pushi.e 8
pop.v.i self.con
pushi.e 8
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[21]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [23]

:[22]
push.d 0.16
conv.d.v
push.i 16777215
conv.i.v
push.v self.target
pushi.e -9
push.v [stacktop]self.image_blend
call.i merge_color(argc=3)
push.v self.target
pushi.e -9
pop.v.v [stacktop]self.image_blend

:[23]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [25]

:[24]
push.i 16777215
push.v self.target
pushi.e -9
pop.v.i [stacktop]self.image_blend
call.i instance_destroy(argc=0)
popz.v

:[25]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [end]

:[26]
push.v self.timer
pushi.e 0
cmp.i.v EQ
bf [28]

:[27]
push.v self.zcounter
pushi.e 0
cmp.i.v EQ
b [29]

:[28]
push.e 0

:[29]
bf [31]

:[30]
pushi.e 330
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[31]
push.v self.timer
push.e 1
sub.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 0
cmp.i.v LTE
bf [33]

:[32]
pushi.e 353
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v local.zobj
pushi.e 2111
pushloc.v local.zobj
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 12
pushloc.v local.zobj
pushi.e -9
pop.v.i [stacktop]self.speed
push.v self.zcounter
pushi.e 40
mul.i.v
pushloc.v local.zobj
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 1
pushloc.v local.zobj
pushi.e -9
pop.v.i [stacktop]self.friction
pushi.e 2
pop.v.i self.timer
push.v self.zcounter
push.e 1
add.i.v
pop.v.v self.zcounter

:[33]
push.v self.zcounter
pushi.e 9
cmp.i.v GTE
bf [end]

:[34]
push.v self.con
push.e 1
add.i.v
pop.v.v self.con
call.i instance_destroy(argc=0)
popz.v

:[end]