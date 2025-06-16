.localvar 2 arguments

:[0]
push.v self.zurasu
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.zurasucon
pushi.e 0
cmp.i.v GT
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
push.v self.zurasucon
pushi.e 1
cmp.i.v EQ
bf [10]

:[5]
push.v self.writer
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [7]

:[6]
push.v self.writer
pushi.e -9
push.v [stacktop]self.writingx
call.i gml_Script_camerax(argc=0)
sub.v.v
pop.v.v self.remwriterx
push.v self.writer
pushi.e -9
push.v [stacktop]self.writingy
call.i gml_Script_cameray(argc=0)
sub.v.v
pop.v.v self.remwritery

:[7]
pushglb.v global.fc
pushi.e 0
cmp.i.v NEQ
bf [9]

:[8]
push.v 61.x
call.i gml_Script_camerax(argc=0)
sub.v.v
pop.v.v self.remfacex
push.v 61.y
call.i gml_Script_cameray(argc=0)
sub.v.v
pop.v.v self.remfacey

:[9]
pushi.e 2
pop.v.i self.zurasucon

:[10]
push.v self.zurasucon
pushi.e 2
cmp.i.v EQ
bf [end]

:[11]
push.v self.writer
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [end]

:[12]
push.v self.remwriterx
call.i gml_Script_camerax(argc=0)
add.v.v
push.v self.writer
pushi.e -9
pop.v.v [stacktop]self.writingx
push.v self.remwritery
call.i gml_Script_cameray(argc=0)
add.v.v
push.v self.writer
pushi.e -9
pop.v.v [stacktop]self.writingy
pushglb.v global.fc
pushi.e 0
cmp.i.v NEQ
bf [end]

:[13]
push.v self.remfacex
call.i gml_Script_camerax(argc=0)
add.v.v
pop.v.v 61.x
push.v self.remfacey
call.i gml_Script_cameray(argc=0)
add.v.v
pop.v.v 61.y
push.v self.writer
pushi.e -9
dup.i 4
push.v [stacktop]self.writingx
pushi.e 58
push.v self.f
mul.v.i
add.v.v
pop.i.v [stacktop]self.writingx

:[end]