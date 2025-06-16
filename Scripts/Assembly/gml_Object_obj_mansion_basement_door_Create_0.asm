.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.image_speed
push.i 800000
pop.v.i self.depth
pushi.e 0
pop.v.i self.con
pushi.e -5
pushi.e 373
push.v [array]self.flag
pop.v.v self.closed_door
push.v self.closed_door
push.s "TILES_Door_Closed"@38092
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
push.v self.closed_door
conv.v.b
bf [2]

:[1]
pushi.e 1149
conv.i.v
pushi.e 280
conv.i.v
pushi.e 240
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.collider
pushi.e 2
push.v self.collider
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 133
conv.i.v
pushi.e 280
conv.i.v
pushi.e 240
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.interactable
pushi.e 4
push.v self.interactable
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.interactable
pushi.e -9
pop.v.i [stacktop]self.image_yscale
b [end]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[end]