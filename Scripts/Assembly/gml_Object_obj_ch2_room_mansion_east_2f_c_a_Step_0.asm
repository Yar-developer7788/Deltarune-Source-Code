.localvar 2 arguments

:[0]
push.v self.dothis
pushi.e 1
cmp.b.v EQ
bf [24]

:[1]
pushi.e 0
pop.v.i self.saucerCount
pushi.e 260
pushenv [7]

:[2]
push.v self.mode
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
push.v other.saucerCount
push.e 1
add.i.v
pop.v.v other.saucerCount

:[7]
popenv [2]
push.v self.saucerCount
pushi.e 1
cmp.i.v EQ
bf [15]

:[8]
pushi.e 260
pushenv [14]

:[9]
push.v self.mode
pushi.e 2
cmp.i.v EQ
bf [11]

:[10]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 260
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.treasure
pushi.e 0
push.v self.treasure
pushi.e -9
pop.v.i [stacktop]self.mode
pushi.e 1
push.v self.treasure
pushi.e -9
pop.v.i [stacktop]self.makecontent
pushi.e 1027
push.v self.treasure
pushi.e -9
pop.v.i [stacktop]self.contentsprite
call.i instance_destroy(argc=0)
popz.v

:[14]
popenv [9]

:[15]
pushi.e 129
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [24]

:[16]
pushi.e 129
pushenv [23]

:[17]
push.v self.sprite_index
pushi.e 1027
cmp.i.v EQ
bf [23]

:[18]
pushi.e 136
conv.i.v
push.v self.y
pushi.e 12
add.i.v
push.v self.x
pushi.e 30
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.box
push.v self.box
pushi.e -9
pushenv [20]

:[19]
push.v other.depth
pushi.e 10
sub.i.v
pop.v.v self.depth

:[20]
popenv [19]
push.v other.complete
pushi.e 0
cmp.i.v EQ
bf [22]

:[21]
pushi.e 1
pop.v.i other.complete

:[22]
call.i instance_destroy(argc=0)
popz.v

:[23]
popenv [17]

:[24]
push.v self.complete
pushi.e 1
cmp.i.v EQ
bf [end]

:[25]
pushi.e 262
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [29]

:[26]
pushi.e 262
pushenv [28]

:[27]
pushi.e 0
pop.v.i self.active

:[28]
popenv [27]

:[29]
pushi.e 266
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[30]
pushi.e 266
pushenv [32]

:[31]
pushi.e 2
pop.v.i self.con
pushi.e 24
pop.v.i self.hspeed

:[32]
popenv [31]

:[end]