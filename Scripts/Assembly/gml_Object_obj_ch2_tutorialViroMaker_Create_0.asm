.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.havenoelle
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[1]
pushi.e 276
pushenv [4]

:[2]
push.v self.name
push.s "noelle"@74
cmp.s.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.b other.havenoelle

:[4]
popenv [2]

:[5]
pushi.e 1
pop.v.i self.makeviro
pushbltn.v builtin.room
pushi.e 127
cmp.i.v EQ
bf [7]

:[6]
pushi.e -5
pushi.e 438
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bt [18]

:[9]
pushbltn.v builtin.room
pushi.e 124
cmp.i.v EQ
bf [11]

:[10]
pushi.e -5
pushi.e 438
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bt [18]

:[13]
pushi.e -5
pushi.e 531
push.v [array]self.flag
pushi.e 0
cmp.i.v NEQ
bf [15]

:[14]
pushi.e -5
pushi.e 531
push.v [array]self.flag
pushi.e 6
cmp.i.v NEQ
b [16]

:[15]
push.e 0

:[16]
bt [18]

:[17]
push.v self.havenoelle
pushi.e 0
cmp.i.v EQ
b [19]

:[18]
push.e 1

:[19]
bf [21]

:[20]
pushi.e 0
pop.v.i self.makeviro

:[21]
push.v self.makeviro
conv.v.b
bf [27]

:[22]
pushi.e 240
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.viro
pushi.e 73
push.v self.viro
pushi.e -9
pop.v.i [stacktop]self.myencounter
pushbltn.v builtin.room
pushi.e 127
cmp.i.v EQ
bf [24]

:[23]
pushi.e 1797
push.v self.viro
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[24]
pushbltn.v builtin.room
pushi.e 124
cmp.i.v EQ
bf [26]

:[25]
pushi.e 1798
push.v self.viro
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[26]
pushi.e 2
push.v self.viro
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.viro
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 1799
push.v self.viro
pushi.e -9
pop.v.i [stacktop]self.touchsprite
pushi.e 120
push.v self.viro
pushi.e -9
pop.v.i [stacktop]self.radius
pushi.e 0
push.v self.viro
pushi.e -9
pop.v.i [stacktop]self.moveradius
pushi.e 17
push.v self.viro
pushi.e -9
pop.v.i [stacktop]self.pacetype
pushi.e 3
push.v self.viro
pushi.e -9
pop.v.i [stacktop]self.chasetype
pushi.e 1
push.v self.viro
pushi.e -9
pop.v.i [stacktop]self.alertskip
pushi.e 0
push.v self.viro
pushi.e -9
pop.v.i [stacktop]self.ignoresolid
pushi.e 0
push.v self.viro
pushi.e -9
pop.v.i [stacktop]self.eraser
push.s "tutViro"@20085
push.v self.viro
pushi.e -9
pop.v.s [stacktop]self.extflag
pushi.e 531
push.v self.viro
pushi.e -9
pop.v.i [stacktop]self.encounterflag
b [end]

:[27]
call.i instance_destroy(argc=0)
popz.v

:[end]