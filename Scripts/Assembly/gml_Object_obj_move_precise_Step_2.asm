.localvar 2 arguments

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[2]
push.v self.movecount
push.v self.movemax
cmp.v.v GTE
bt [4]

:[3]
push.v self.target
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [5]

:[4]
push.e 1

:[5]
bf [7]

:[6]
call.i instance_destroy(argc=0)
popz.v
b [14]

:[7]
push.v self.moved
pushi.e 0
cmp.i.v EQ
bf [14]

:[8]
push.v self.target
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushi.e -1
push.v self.movecount
conv.v.i
push.v [array]self.xx
push.v self.xOrientation
mul.v.v
add.v.v
pop.i.v [stacktop]self.x
push.v self.target
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushi.e -1
push.v self.movecount
conv.v.i
push.v [array]self.yy
push.v self.yOrientation
mul.v.v
add.v.v
pop.i.v [stacktop]self.y
pushi.e -1
push.v self.movecount
conv.v.i
push.v [array]self.image
pushi.e -1
cmp.i.v NEQ
bf [10]

:[9]
push.v 777.wireframe_boxing
pushi.e 0
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
pushi.e -1
push.v self.movecount
conv.v.i
push.v [array]self.image
push.v self.target
pushi.e -9
pop.v.v [stacktop]self.image_index

:[13]
push.v self.movecount
push.e 1
add.i.v
pop.v.v self.movecount

:[14]
pushi.e 0
pop.v.i self.moved

:[end]