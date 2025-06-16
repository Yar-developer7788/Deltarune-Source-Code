.localvar 2 arguments

:[0]
push.v self.door_type
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.sprite_index
pushi.e 2865
cmp.i.v NEQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 2865
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale

:[5]
push.v self.door_type
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.sprite_index
pushi.e 2863
cmp.i.v NEQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 2863
pop.v.i self.sprite_index
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[10]
push.v self.door_type
pushi.e 2
cmp.i.v EQ
bf [12]

:[11]
push.v self.sprite_index
pushi.e 2909
cmp.i.v NEQ
b [13]

:[12]
push.e 0

:[13]
bf [end]

:[14]
pushi.e 2909
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale

:[end]