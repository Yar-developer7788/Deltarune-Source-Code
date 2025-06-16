.localvar 2 arguments
.localvar 38118 newMarker 19743

:[0]
push.v self.destroyoncomplete
conv.v.b
not.b
bf [2]

:[1]
push.v self.endanimation
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v self.endanimation
push.v self.y
push.v self.x
call.i gml_Script_scr_battle_marker(argc=3)
pop.v.v local.newMarker
pushi.e 1
pushloc.v local.newMarker
pushi.e -9
pop.v.i [stacktop]self.destroyoncomplete
push.v self.sourceobject
pushloc.v local.newMarker
pushi.e -9
pop.v.v [stacktop]self.sourceobject
push.v self.depth
pushloc.v local.newMarker
pushi.e -9
pop.v.v [stacktop]self.depth
push.d 0.5
pushloc.v local.newMarker
pushi.e -9
pop.v.d [stacktop]self.image_speed
b [end]

:[5]
push.v self.sourceobject
conv.v.b
bf [end]

:[6]
pushi.e 1
push.v self.sourceobject
pushi.e -9
pop.v.i [stacktop]self.image_alpha

:[end]