.localvar 2 arguments
.localvar 21289 pile 9290
.localvar 21290 pile_dark 9291
.localvar 21291 pile_collider 9292

:[0]
pushi.e -5
pushi.e 335
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [6]

:[1]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.b self.shovel_start
pushi.e 2852
conv.i.v
push.v self.y
pushi.e 85
add.i.v
push.v self.x
pushi.e 10
sub.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v local.pile
push.v self.depth
pushi.e 10
sub.i.v
pushloc.v local.pile
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 2864
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v local.pile_dark
push.v self.depth
pushi.e 5
sub.i.v
pushloc.v local.pile_dark
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 1144
conv.i.v
pushloc.v local.pile
pushi.e -9
push.v [stacktop]self.y
pushi.e 10
add.i.v
pushloc.v local.pile
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v local.pile_collider
pushi.e 3
pushloc.v local.pile_collider
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2863
pop.v.i self.sprite_index
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 82
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [5]

:[2]
pushi.e 82
pushenv [4]

:[3]
push.v self.y
pushi.e 20
add.i.v
pop.v.v self.y

:[4]
popenv [3]

:[5]
b [end]

:[6]
call.i event_inherited(argc=0)
popz.v

:[end]