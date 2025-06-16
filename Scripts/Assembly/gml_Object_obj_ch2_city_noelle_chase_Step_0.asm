.localvar 2 arguments

:[0]
pushbltn.v builtin.room
pushi.e 123
cmp.i.v EQ
bf [10]

:[1]
push.v self.noellemarker
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_camerax(argc=0)
sub.v.v
pushi.e 640
cmp.i.v LT
bf [3]

:[2]
push.v self.leavecon
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 1
pop.v.i self.leavecon
push.d 0.25
push.v self.noellemarker
pushi.e -9
pop.v.d [stacktop]self.image_speed

:[6]
push.v self.leavecon
pushi.e 1
cmp.i.v EQ
bf [10]

:[7]
push.v self.noellemarker
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [10]

:[8]
push.v self.noellemarker
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushi.e 6
add.i.v
pop.i.v [stacktop]self.x
push.v self.noellemarker
pushi.e -9
push.v [stacktop]self.x
pushbltn.v builtin.room_width
cmp.v.v GTE
bf [10]

:[9]
pushi.e 2
pop.v.i self.leavecon
pushi.e 68
pop.v.i global.plot
push.v self.noellemarker
call.i instance_destroy(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[10]
pushbltn.v builtin.room
pushi.e 124
cmp.i.v EQ
bf [end]

:[11]
push.v self.leavecon
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
push.v self.noellemarker
pushi.e -9
push.v [stacktop]self.y
call.i gml_Script_cameray(argc=0)
sub.v.v
pushi.e 480
cmp.i.v LT
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
pushi.e 1
pop.v.i self.leavecon
push.d 0.25
push.v self.noellemarker
pushi.e -9
pop.v.d [stacktop]self.image_speed

:[16]
push.v self.leavecon
pushi.e 1
cmp.i.v EQ
bf [end]

:[17]
push.v self.noellemarker
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [end]

:[18]
push.v self.noellemarker
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushi.e 6
add.i.v
pop.i.v [stacktop]self.x
push.v self.noellemarker
pushi.e -9
push.v [stacktop]self.x
pushi.e 1330
cmp.i.v GTE
bf [end]

:[19]
pushi.e 2
pop.v.i self.leavecon
pushi.e 69
pop.v.i global.plot
push.v self.noellemarker
call.i instance_destroy(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]