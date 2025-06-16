.localvar 2 arguments
.localvar 20281 redscreen 8520

:[0]
pushi.e 27
pop.v.i local.redscreen
push.v self.id
call.i gml_Script_scr_onscreen(argc=1)
conv.v.b
bf [7]

:[1]
call.i @@Other@@(argc=0)
call.i gml_Script_scr_onscreen(argc=1)
conv.v.b
bf [7]

:[2]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [7]

:[3]
push.v other.aligned
pushi.e 1
cmp.i.v EQ
bf [7]

:[4]
push.v other.image_index
pushloc.v local.redscreen
cmp.v.v NEQ
bf [7]

:[5]
push.v other.image_index
pushi.e 9
cmp.i.v NEQ
bf [7]

:[6]
push.v other.sprite_index
pushi.e 510
cmp.i.v NEQ
b [8]

:[7]
push.e 0

:[8]
bf [end]

:[9]
pushi.e 0
pop.v.i self.make_simple_bullet
pushi.e 0
pop.v.i self.simple_bullet_index
pushi.e 0
pop.v.i self.cause_explosion
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.active
pushi.e 1
pop.v.i self.exploded
pushi.e 0
pop.v.i other.extflag
pushi.e 1
pop.v.i self.make_simple_bullet
push.s "dancer"@20285
pop.v.s self.btype
push.v self.make_simple_bullet
pushi.e 1
cmp.i.v EQ
bf [13]

:[10]
pushi.e 255
conv.i.v
push.v other.y
push.v other.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.b
pushi.e 2327
push.v self.b
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 0.25
push.v self.b
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushi.e 10
push.v self.b
pushi.e -9
pop.v.i [stacktop]self.tolerance
pushi.e 1
push.v self.b
pushi.e -9
pop.v.i [stacktop]self.active
pushi.e 3
push.v self.b
pushi.e -9
pop.v.i [stacktop]self.target
pushi.e 16
push.v self.b
pushi.e -9
pop.v.i [stacktop]self.damage
pushi.e 200
push.v self.b
pushi.e -9
pop.v.i [stacktop]self.depth
push.i 133633
setowner.e
pushi.e -10
conv.i.v
push.v self.b
pushi.e -9
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 2
push.v self.b
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.b
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v self.b
pushi.e -9
pushenv [12]

:[11]
pushi.e 4
conv.i.v
push.v 82.y
pushi.e 4
add.i.v
push.v 82.x
pushi.e 2
add.i.v
call.i move_towards_point(argc=3)
popz.v

:[12]
popenv [11]
push.d -0.2
push.v self.b
pushi.e -9
pop.v.d [stacktop]self.friction

:[13]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [15]

:[14]
pushi.e 0
pop.v.b self.dance_active
pushi.e 510
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed
pushloc.v local.redscreen
pop.v.v self.image_index

:[15]
popenv [14]
pushi.e 0
pop.v.i self.active
push.d 2.5
conv.d.v
pushi.e 160
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
popz.v

:[end]