.localvar 2 arguments

:[0]
pushi.e 276
pushenv [4]

:[1]
push.v self.image_alpha
pushi.e 0
cmp.i.v LTE
bf [3]

:[2]
pushi.e 0
pop.v.b self.visible
b [4]

:[3]
pushi.e 1
pop.v.b self.visible

:[4]
popenv [1]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [22]

:[5]
pushi.e 276
pushenv [8]

:[6]
push.v self.image_alpha
pushi.e 1
cmp.i.v NEQ
bf [8]

:[7]
push.d 0.125
conv.d.v
pushi.e 1
conv.i.v
push.v self.image_alpha
call.i lerp(argc=3)
pop.v.v self.image_alpha

:[8]
popenv [6]
push.v 82.battlemode
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[10]
pushi.e 274
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [16]

:[11]
pushi.e 274
pushenv [15]

:[12]
push.d 0.25
conv.d.v
pushi.e 0
conv.i.v
push.v self.image_alpha
call.i lerp(argc=3)
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[14]
pushi.e 0
pop.v.i self.timer

:[15]
popenv [12]

:[16]
pushi.e 255
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [22]

:[17]
pushi.e 255
pushenv [21]

:[18]
push.d 0.25
conv.d.v
pushi.e 0
conv.i.v
push.v self.image_alpha
call.i lerp(argc=3)
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v EQ
bf [20]

:[19]
call.i instance_destroy(argc=0)
popz.v

:[20]
pushi.e 0
pop.v.i self.timer

:[21]
popenv [18]

:[22]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [end]

:[23]
pushi.e 276
pushenv [26]

:[24]
push.v self.image_alpha
pushi.e 0
cmp.i.v NEQ
bf [26]

:[25]
push.d 0.3
conv.d.v
pushi.e 0
conv.i.v
push.v self.image_alpha
call.i lerp(argc=3)
pop.v.v self.image_alpha

:[26]
popenv [24]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 20
cmp.i.v GTE
bf [31]

:[27]
call.i gml_Script_cameray(argc=0)
pushi.e 120
conv.i.v
pushi.e 0
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.py
pushi.e 2920
conv.i.v
pushi.e 360
conv.i.v
push.v self.py
call.i clamp(argc=3)
pop.v.v self.py
pushi.e 2920
conv.i.v
call.i gml_Script_cameray(argc=0)
push.v self.py
call.i clamp(argc=3)
pop.v.v self.py
push.v self.shotcount
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [29]

:[28]
pushi.e -40
conv.i.v
pushi.e -20
conv.i.v
call.i random_range(argc=2)
pop.v.v self.px
b [30]

:[29]
pushbltn.v builtin.room_width
pushi.e 40
add.i.v
pushbltn.v builtin.room_width
pushi.e 20
add.i.v
call.i random_range(argc=2)
pop.v.v self.px

:[30]
pushi.e 274
conv.i.v
push.v self.py
push.v self.px
call.i gml_Script_instance_create(argc=3)
pop.v.v self.pipis
push.v self.depth
pushi.e 50
sub.i.v
push.v self.pipis
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.shotcount
push.e 1
add.i.v
pop.v.v self.shotcount
pushi.e 5
conv.i.v
pushi.e -5
conv.i.v
call.i random_range(argc=2)
pop.v.v self.timer

:[31]
push.v 82.battlemode
pushi.e 0
cmp.i.v EQ
bf [end]

:[32]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[end]