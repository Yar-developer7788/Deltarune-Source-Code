.localvar 2 arguments

:[0]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushi.e 0
pop.v.i self.timer
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 3
cmp.i.v GTE
bf [2]

:[1]
pushi.e 2865
conv.i.v
pushi.e 160
conv.i.v
pushi.e 540
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.door
pushi.e 1144
conv.i.v
pushi.e 240
conv.i.v
pushi.e 540
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.doorsolid
pushi.e 3
push.v self.doorsolid
pushi.e -9
pop.v.i [stacktop]self.image_xscale
push.i 500000
push.v self.door
pushi.e -9
pop.v.i [stacktop]self.depth

:[2]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 3
cmp.i.v LT
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[4]
pushi.e -5
pushi.e 915
push.v [array]self.flag
pushi.e 9
cmp.i.v LT
bf [6]

:[5]
pushi.e 0
pop.v.i self.con
b [end]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[end]