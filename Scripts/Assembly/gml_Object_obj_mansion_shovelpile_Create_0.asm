.localvar 2 arguments
.localvar 21289 pile 9283
.localvar 21290 pile_dark 9284
.localvar 21291 pile_collider 9285

:[0]
push.i 100000
pop.v.i self.depth
pushi.e -5
pushi.e 335
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
pop.v.b self.shovel_start
pushi.e 15
pop.v.i self.shovel_time
push.v self.shovel_time
pop.v.v self.shovel_timer
pushi.e -5
pushi.e 335
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2863
pop.v.i self.sprite_index
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
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
push.i 98000
pushloc.v local.pile
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 2864
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v local.pile_dark
push.i 99000
pushloc.v local.pile_dark
pushi.e -9
pop.v.i [stacktop]self.depth
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

:[2]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.setdepth
pushi.e 0
pop.v.i self.read
pushi.e 0
pop.v.i self.depthbonus
pushi.e 0
pop.v.i self.skip
pushi.e 0
pop.v.i self.extflag
pushi.e 0
pop.v.i self.docon
pushi.e 0
pop.v.i self.doafter
pushi.e 0
pop.v.i self.glow_alpha
pushi.e 0
pop.v.i self.fade

:[end]