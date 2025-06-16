.localvar 2 arguments
.localvar 21481 boxcheck 9495
.localvar 19733 qualify 9496
.localvar 21482 xpush 9497

:[0]
push.v self.falling
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
call.i gml_Script_d_ex(argc=0)
conv.v.b
bf [5]

:[2]
push.v self.paused
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.v self.vspeed
pop.v.v self.remvspeed
push.v self.x
pop.v.v self.remx
push.v self.y
pop.v.v self.remy
pushi.e 1
pop.v.i self.paused

:[4]
push.v self.remy
push.v self.remx
call.i gml_Script_setxy(argc=2)
popz.v
b [8]

:[5]
push.v self.paused
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.remvspeed
pop.v.v self.vspeed
pushi.e 0
pop.v.i self.paused

:[7]
push.v self.vspeed
push.d 0.4
add.d.v
pop.v.v self.vspeed
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
push.v self.vspeed
call.i clamp(argc=3)
pop.v.v self.vspeed

:[8]
pushi.e 74
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [12]

:[9]
push.v self.y
push.v 74.bbox_bottom
pushi.e 20
sub.i.v
cmp.v.v LTE
bf [11]

:[10]
push.v 74.depth
pushi.e 100
add.i.v
pop.v.v self.depth
b [12]

:[11]
push.v 74.depth
pushi.e 100
sub.i.v
pop.v.v self.depth

:[12]
pushi.e 74
conv.i.v
push.v self.y
push.v self.x
call.i instance_place(argc=3)
pop.v.v local.boxcheck
pushloc.v local.boxcheck
pushi.e 100
cmp.i.v GTE
bf [23]

:[13]
pushi.e 0
pop.v.i local.qualify
pushi.e 0
pop.v.i local.xpush
push.v self.y
pushloc.v local.boxcheck
pushi.e -9
push.v [stacktop]self.bbox_top
pushi.e 8
sub.i.v
cmp.v.v GTE
bf [15]

:[14]
pushi.e 1
pop.v.i local.qualify

:[15]
push.v self.y
pushloc.v local.boxcheck
pushi.e -9
push.v [stacktop]self.bbox_bottom
pushi.e 20
sub.i.v
cmp.v.v GTE
bf [17]

:[16]
pushi.e 0
pop.v.i local.qualify

:[17]
push.v self.x
pushloc.v local.boxcheck
pushi.e -9
push.v [stacktop]self.bbox_left
pushi.e 4
add.i.v
cmp.v.v LTE
bf [19]

:[18]
pushi.e 0
pop.v.i local.qualify
pushi.e -4
pop.v.i local.xpush

:[19]
push.v self.x
pushloc.v local.boxcheck
pushi.e -9
push.v [stacktop]self.bbox_right
pushi.e 4
sub.i.v
cmp.v.v GTE
bf [21]

:[20]
pushi.e 0
pop.v.i local.qualify
pushi.e 4
pop.v.i local.xpush

:[21]
push.v self.x
pushloc.v local.xpush
add.v.v
pop.v.v self.x
pushloc.v local.qualify
conv.v.b
bf [23]

:[22]
push.v 74.miceheld
push.e 1
add.i.v
pop.v.v 74.miceheld
call.i gml_Script_scr_afterimage(argc=0)
pop.v.v self.cloud
push.v self.depth
pushi.e 200
sub.i.v
push.v self.cloud
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e -1
push.d 1.4
conv.d.v
call.i random(argc=1)
sub.v.i
push.v self.cloud
pushi.e -9
pop.v.v [stacktop]self.vspeed
push.d 0.2
push.v self.cloud
pushi.e -9
pop.v.d [stacktop]self.friction
push.v self.cloud
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushi.e 8
sub.i.v
pop.i.v [stacktop]self.y
pushi.e 2426
push.v self.cloud
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 111
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 52
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[23]
push.v self.y
push.v self.ythreshold
cmp.v.v GTE
bt [25]

:[24]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 480
add.i.v
cmp.v.v GT
b [26]

:[25]
push.e 1

:[26]
bf [end]

:[27]
push.v self.balloonid
pushi.e 0
cmp.i.v GTE
bf [29]

:[28]
push.i 235144
setowner.e
pushi.e 1
conv.i.v
pushi.e 349
push.v self.balloonid
conv.v.i
pop.v.v [array]self.balloondestroyed

:[29]
push.v 74.mousefailcon
pushi.e 0
cmp.i.v EQ
bf [31]

:[30]
push.v 349.minigame
pushi.e 1
cmp.i.v EQ
b [32]

:[31]
push.e 0

:[32]
bf [34]

:[33]
pushi.e 1
pop.v.i 74.mousefailcon

:[34]
pushi.e 177
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
call.i gml_Script_scr_afterimage(argc=0)
pop.v.v self.jumper
push.v self.jumper
pushi.e -9
pushenv [36]

:[35]
pushi.e 16
conv.i.v
pushi.e 20
conv.i.v
pushbltn.v builtin.room_height
push.v self.sprite_height
pushi.e 2
mul.i.v
add.v.v
push.v self.x
pushi.e 40
conv.i.v
pushi.e -40
conv.i.v
call.i random_range(argc=2)
add.v.v
call.i gml_Script_scr_jump_to_point(argc=4)
popz.v

:[36]
popenv [35]
call.i instance_destroy(argc=0)
popz.v

:[end]