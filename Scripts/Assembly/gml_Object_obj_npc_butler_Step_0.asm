.localvar 2 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
call.i gml_Script_scr_depth(argc=0)
popz.v
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2
pop.v.i self.con
call.i gml_Script_scr_shakeobj(argc=0)
popz.v
pushi.e 1812
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed

:[2]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [5]

:[3]
push.v self.closetimer
push.e 1
add.i.v
pop.v.v self.closetimer
push.v self.closetimer
pushi.e 30
cmp.i.v GT
bf [5]

:[4]
pushi.e 3
pop.v.i self.con
pushi.e 0
pop.v.i self.closetimer
pushi.e 1225
pop.v.i self.sprite_index

:[5]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [end]

:[6]
pushi.e 4
pop.v.i self.con
push.v self.image_xscale
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
pushi.e -2
pop.v.i self.image_xscale

:[8]
push.v self.x
pushi.e 10
add.i.v
pop.v.v self.x
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 1700
add.i.v
cmp.v.v GT
bf [end]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[end]