.localvar 2 arguments
.localvar 23100 _inst 14732

:[0]
push.v self.actor
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [11]

:[1]
push.v self.actor
pushi.e -9
pushenv [10]

:[2]
push.v self.visible
conv.v.b
bf [10]

:[3]
pushi.e 838
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v local._inst
push.v self.sprite_index
pushloc.v local._inst
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.image_index
pushloc.v local._inst
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.visible
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.v self.Nothing
pushloc.v local._inst
pushi.e -9
pop.v.v [stacktop]self.sprite_index

:[5]
push.v 789.drawflip
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e 2
pushloc.v local._inst
pushi.e -9
pop.v.i [stacktop]self.image_xscale

:[7]
push.v 789.drawflip
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushi.e -2
pushloc.v local._inst
pushi.e -9
pop.v.i [stacktop]self.image_xscale

:[9]
pushi.e 2
pushloc.v local._inst
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.d -0.5
pushloc.v local._inst
pushi.e -9
pop.v.d [stacktop]self.vspeed
push.v other.blend
pushloc.v local._inst
pushi.e -9
pop.v.v [stacktop]self.image_blend

:[10]
popenv [2]

:[11]
push.i 68097
setowner.e
push.v self.refresh
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm

:[end]