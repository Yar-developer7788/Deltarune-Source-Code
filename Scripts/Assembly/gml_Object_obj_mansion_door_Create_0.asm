.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.image_speed
call.i gml_Script_scr_depth(argc=0)
popz.v
push.v self.door_type
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2865
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale

:[2]
push.v self.door_type
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 2863
pop.v.i self.sprite_index
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[4]
push.v self.door_type
pushi.e 2
cmp.i.v EQ
bf [end]

:[5]
pushi.e 2909
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale

:[end]