.localvar 2 arguments

:[0]
push.v self.target
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [15]

:[1]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [11]

:[2]
pushi.e 0
push.v self.target
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.target
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.v self.sprite
pushi.e 0
cmp.i.v GTE
bf [4]

:[3]
push.v self.sprite
push.v self.target
pushi.e -9
pop.v.v [stacktop]self.sprite_index

:[4]
push.v self.initframe
pushi.e 0
cmp.i.v GTE
bf [6]

:[5]
push.v self.initframe
push.v self.target
pushi.e -9
pop.v.v [stacktop]self.image_index

:[6]
push.v self.endframe
pop.v.v self.fake_image_index_max
push.v self.endframe
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
push.v self.target
pushi.e -9
push.v [stacktop]self.image_number
pushi.e 1
sub.i.v
push.v self.target
pushi.e -9
push.v [stacktop]self.image_index
sub.v.v
pop.v.v self.fake_image_index_max

:[8]
push.v self.endframe
pushi.e -1
cmp.i.v EQ
bf [10]

:[9]
push.v self.target
pushi.e -9
push.v [stacktop]self.image_number
push.v self.target
pushi.e -9
push.v [stacktop]self.image_index
sub.v.v
pop.v.v self.fake_image_index_max

:[10]
pushi.e 1
pop.v.i self.con

:[11]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [14]

:[12]
push.v self.fake_image_index
push.v self.fake_image_speed
add.v.v
pop.v.v self.fake_image_index
push.v self.fake_image_index
push.v self.target
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.fake_image_index
push.v self.fake_image_index_max
cmp.v.v GTE
bf [14]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[14]
b [end]

:[15]
call.i instance_destroy(argc=0)
popz.v

:[end]