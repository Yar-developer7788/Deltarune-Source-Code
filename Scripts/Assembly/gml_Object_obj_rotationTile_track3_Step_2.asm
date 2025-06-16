.localvar 2 arguments

:[0]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
push.v self.tilemax
cmp.v.v LTE
bf [4]

:[3]
push.i 133617
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.tile
pushi.e -9
dup.i 4
push.v [stacktop]self.x
push.v self.x
push.v self.xprevious
sub.v.v
add.v.v
pop.i.v [stacktop]self.x
push.i 133618
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.tile
pushi.e -9
dup.i 4
push.v [stacktop]self.y
push.v self.y
push.v self.yprevious
sub.v.v
add.v.v
pop.i.v [stacktop]self.y
push.i 133653
setowner.e
push.v self.image_alpha
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.tile
pushi.e -9
pop.v.v [stacktop]self.image_alpha
push.i 133654
setowner.e
push.v self.image_blend
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.tile
pushi.e -9
pop.v.v [stacktop]self.image_blend
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [16]

:[5]
pushi.e 0
pop.v.i self.i

:[6]
push.v self.i
pushi.e 20
cmp.i.v LTE
bf [16]

:[7]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.staticTile
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [9]

:[8]
push.i 133617
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.staticTile
pushi.e -9
dup.i 4
push.v [stacktop]self.x
push.v self.x
push.v self.xprevious
sub.v.v
add.v.v
pop.i.v [stacktop]self.x

:[9]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.staticTile
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [11]

:[10]
push.i 133618
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.staticTile
pushi.e -9
dup.i 4
push.v [stacktop]self.y
push.v self.y
push.v self.yprevious
sub.v.v
add.v.v
pop.i.v [stacktop]self.y

:[11]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.staticTile
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [13]

:[12]
push.i 133653
setowner.e
push.v self.image_alpha
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.staticTile
pushi.e -9
pop.v.v [stacktop]self.image_alpha

:[13]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.staticTile
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [15]

:[14]
push.i 133654
setowner.e
push.v self.image_blend
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.staticTile
pushi.e -9
pop.v.v [stacktop]self.image_blend

:[15]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [6]

:[16]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
push.v self.hole
pushi.e -9
dup.i 4
push.v [stacktop]self.x
push.v self.x
push.v self.xprevious
sub.v.v
add.v.v
pop.i.v [stacktop]self.x
push.v self.hole
pushi.e -9
dup.i 4
push.v [stacktop]self.y
push.v self.y
push.v self.yprevious
sub.v.v
add.v.v
pop.i.v [stacktop]self.y
push.v self.image_alpha
push.v self.hole
pushi.e -9
pop.v.v [stacktop]self.image_alpha
push.v self.image_blend
push.v self.hole
pushi.e -9
pop.v.v [stacktop]self.image_blend

:[18]
push.v self.xprevious
pop.v.v self.remx
push.v self.yprevious
pop.v.v self.remy

:[end]