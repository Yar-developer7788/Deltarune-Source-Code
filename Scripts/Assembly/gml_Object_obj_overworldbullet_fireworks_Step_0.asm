.localvar 2 arguments
.localvar 20343 bulletcount 8599
.localvar 20344 randodir 8600
.localvar 107 i 8601

:[0]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [10]

:[1]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha
push.v self.image_xscale
push.v self.timer
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.2
mul.d.v
add.v.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.v self.timer
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.2
mul.d.v
add.v.v
pop.v.v self.image_yscale
push.v self.timer
pushi.e 30
cmp.i.v GTE
bf [10]

:[2]
pushi.e 16
pop.v.i local.bulletcount
pushi.e 60
conv.i.v
call.i random(argc=1)
pop.v.v local.randodir
pushi.e 0
pop.v.i local.i

:[3]
pushloc.v local.i
pushloc.v local.bulletcount
cmp.v.v LT
bf [9]

:[4]
pushi.e 255
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.shot
push.v self.sprite_index
push.v self.shot
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e 2
push.v self.shot
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.shot
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 1
push.v self.shot
pushi.e -9
pop.v.i [stacktop]self.speed
pushi.e 1
push.v self.shot
pushi.e -9
pop.v.i [stacktop]self.active
push.d -0.4
push.v self.shot
pushi.e -9
pop.v.d [stacktop]self.friction
pushi.e 3
push.v self.shot
pushi.e -9
pop.v.i [stacktop]self.target
pushi.e 15
push.v self.shot
pushi.e -9
pop.v.i [stacktop]self.damage
pushi.e 360
conv.i.d
pushloc.v local.bulletcount
div.v.d
pushloc.v local.i
mul.v.v
pushloc.v local.randodir
add.v.v
push.v self.shot
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e -5
pushi.e 8
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [8]

:[5]
pushi.e 255
conv.i.v
pushi.e 120
conv.i.v
pushi.e 255
conv.i.v
call.i random(argc=1)
call.i make_color_hsv(argc=3)
push.v self.shot
pushi.e -9
pop.v.v [stacktop]self.image_blend
push.v self.shot
pushi.e -9
pushenv [7]

:[6]
pushi.e 10
conv.i.v
push.i [function]gml_Script_scr_afterimage_grow
conv.i.v
call.i gml_Script_scr_script_delayed(argc=2)
popz.v

:[7]
popenv [6]

:[8]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [3]

:[9]
pushi.e 96
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[10]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [end]

:[11]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.image_alpha
push.d 0.1
add.d.v
pop.v.v self.image_alpha
push.v self.image_xscale
push.v self.timer
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.2
mul.d.v
add.v.v
pop.v.v self.image_xscale
push.v self.image_yscale
push.v self.timer
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.2
mul.d.v
add.v.v
pop.v.v self.image_yscale
push.v self.dir
push.s "right"@4637
cmp.s.v EQ
bf [13]

:[12]
push.v self.x
pushi.e 140
cmp.i.v GTE
b [14]

:[13]
push.e 0

:[14]
bt [19]

:[15]
push.v self.dir
push.s "left"@5994
cmp.s.v EQ
bf [17]

:[16]
push.v self.x
pushbltn.v builtin.room_width
pushi.e 140
sub.i.v
cmp.v.v LTE
b [18]

:[17]
push.e 0

:[18]
b [20]

:[19]
push.e 1

:[20]
bf [end]

:[21]
pushi.e 12
pop.v.i local.bulletcount
pushi.e 120
conv.i.v
call.i random(argc=1)
pop.v.v local.randodir
pushi.e 0
pop.v.i local.i

:[22]
pushloc.v local.i
pushloc.v local.bulletcount
cmp.v.v LT
bf [28]

:[23]
pushi.e 255
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.shot
pushi.e 3327
push.v self.shot
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.shot
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=8)
push.v self.shot
pushi.e -9
pop.v.v [stacktop]self.image_index
pushi.e 1
push.v self.shot
pushi.e -9
pop.v.i [stacktop]self.speed
pushi.e 1
push.v self.shot
pushi.e -9
pop.v.i [stacktop]self.active
push.d -0.4
push.v self.shot
pushi.e -9
pop.v.d [stacktop]self.friction
pushi.e 3
push.v self.shot
pushi.e -9
pop.v.i [stacktop]self.target
pushi.e 15
push.v self.shot
pushi.e -9
pop.v.i [stacktop]self.damage
pushi.e 360
conv.i.d
pushloc.v local.bulletcount
div.v.d
pushloc.v local.i
mul.v.v
pushloc.v local.randodir
add.v.v
push.v self.shot
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e -5
pushi.e 8
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [27]

:[24]
push.v self.shot
pushi.e -9
pushenv [26]

:[25]
pushi.e 10
conv.i.v
push.i [function]gml_Script_scr_afterimage_grow
conv.i.v
call.i gml_Script_scr_script_delayed(argc=2)
popz.v

:[26]
popenv [25]

:[27]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [22]

:[28]
push.d 1.4
conv.d.v
pushi.e 96
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]