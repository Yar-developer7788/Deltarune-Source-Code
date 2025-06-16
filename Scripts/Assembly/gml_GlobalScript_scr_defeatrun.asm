.localvar 2 arguments
.localvar 9144 __frozen 1505

:[0]
b [25]

> gml_Script_scr_defeatrun (locals=1, argc=0)
:[1]
pushi.e 392
conv.i.v
push.v self.object_index
call.i object_is_ancestor(argc=2)
conv.v.b
bf [16]

:[2]
pushi.e 0
pop.v.i local.__frozen
pushi.e -5
pushi.e 51
push.v self.myself
add.v.i
conv.v.i
push.v [array]self.flag
pushi.e 6
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i local.__frozen

:[4]
pushloc.v local.__frozen
pushi.e 1
cmp.i.v EQ
bf [8]

:[5]
pushi.e 865
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstery
pushi.e 40
sub.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterx
call.i gml_Script_instance_create(argc=3)
pop.v.v self._rtext
pushi.e 12
push.v self._rtext
pushi.e -9
pop.v.i [stacktop]self.image_index
push.v self.recruitable
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.i 30508836
setowner.e
pushi.e -1
conv.i.v
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 600
add.i.v
conv.v.i
pop.v.v [array]self.flag

:[7]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 63
pop.v.v [array]self.flag

:[8]
push.v self.recruitable
pushi.e 1
cmp.i.v EQ
bf [11]

:[9]
pushi.e -5
pushi.e 61
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
pushloc.v local.__frozen
pushi.e 0
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [15]

:[13]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 63
pop.v.v [array]self.flag
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 600
add.i.v
conv.v.i
push.v [array]self.flag
pushi.e -1
cmp.i.v NEQ
bf [15]

:[14]
pushi.e -1
conv.i.v
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstertype
pushi.e 600
add.i.v
conv.v.i
pop.v.v [array]self.flag
pushi.e 865
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstery
pushi.e 40
sub.i.v
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterx
call.i gml_Script_instance_create(argc=3)
pop.v.v self._rtext
pushi.e 7
push.v self._rtext
pushi.e -9
pop.v.i [stacktop]self.image_index

:[15]
b [17]

:[16]
pushi.e 0
pop.v.i self.fatal

:[17]
pushloc.v local.__frozen
conv.v.b
not.b
bf [22]

:[18]
push.v self.fatal
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
pushi.e 854
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.defeatanim
b [21]

:[20]
pushi.e 855
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.defeatanim

:[21]
b [24]

:[22]
pushloc.v local.__frozen
conv.v.b
bf [24]

:[23]
pushi.e 857
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.defeatanim
push.v self.depth
push.v self.defeatanim
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 1
push.v self.defeatanim
pushi.e -9
pop.v.i [stacktop]self.inbattle

:[24]
push.v self.sprite_index
push.v self.defeatanim
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.hurtsprite
push.v self.defeatanim
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e 0
push.v self.defeatanim
pushi.e -9
pop.v.i [stacktop]self.image_index
push.v self.image_xscale
push.v self.defeatanim
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.defeatanim
pushi.e -9
pop.v.v [stacktop]self.image_yscale
call.i instance_destroy(argc=0)
popz.v
exit.i

:[25]
push.i [function]gml_Script_scr_defeatrun
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_defeatrun
popz.v

:[end]