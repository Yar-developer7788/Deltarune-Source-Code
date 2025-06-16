.localvar 2 arguments

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
pop.v.i self.init
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 8
pop.v.i self.movemax
push.i 166013
setowner.e
pushi.e -12
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.xx
pushi.e -6
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.xx
pushi.e -2
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.xx
pushi.e 4
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.xx
pushi.e 6
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.xx
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.xx
push.i 169496
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.image
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.image
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.image
pushi.e 3
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.image

:[3]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 8
pop.v.i self.movemax
push.i 166013
setowner.e
pushi.e -10
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.xx
push.i 166014
setowner.e
pushi.e -3
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.yy
push.i 166013
setowner.e
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.xx
push.i 166014
setowner.e
pushi.e -1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.yy
push.i 166013
setowner.e
pushi.e -3
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.xx
push.i 166014
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.yy
push.i 166013
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.xx
push.i 166014
setowner.e
pushi.e 3
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.yy
push.i 166013
setowner.e
pushi.e -1
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.xx
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.xx
push.i 169496
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.image
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.image
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.image
pushi.e 3
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.image

:[5]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
pushi.e 8
pop.v.i self.movemax
push.i 166014
setowner.e
pushi.e -6
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.yy
pushi.e -2
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.yy
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.yy
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.yy
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.yy
pushi.e 3
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.yy
pushi.e 4
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.yy
push.i 169496
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.image
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.image
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.image
pushi.e 3
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.image

:[7]
push.v self.target
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [13]

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
pushi.e 1
pop.v.i self.moved

:[end]