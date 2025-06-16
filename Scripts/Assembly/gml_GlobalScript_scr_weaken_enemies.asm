.localvar 2 arguments
.localvar 11869 _miss 3514
.localvar 11870 _ex 3515

:[0]
b [11]

> gml_Script_scr_weaken_enemies (locals=2, argc=0)
:[1]
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [10]

:[3]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monster
conv.v.b
not.b
bf [5]

:[4]
b [9]

:[5]
pushi.e 873
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monstery
pushi.e 20
add.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.hittarget
pushi.e 20
mul.i.v
sub.v.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monsterx
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dm
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monsterhp
pushi.e 1
sub.i.v
push.v self.dm
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monsterhp
pushi.e 1
cmp.i.v EQ
pop.v.b local._miss
push.i 88443318
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.monsterhp
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.monsterinstance
pushi.e -9
pushenv [8]

:[6]
pushi.e 459
conv.i.v
push.v self.y
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local._ex
pushi.e 2275
pushloc.v local._ex
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
pushloc.v local._ex
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
pushloc.v local._ex
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v 873.depth
pushi.e 1
add.i.v
pushloc.v local._ex
pushi.e -9
pop.v.v [stacktop]self.depth
pushloc.v local._miss
conv.v.b
not.b
bf [8]

:[7]
pushi.e 9
pop.v.i self.shakex
pushi.e 3
pop.v.i self.state
pushi.e 30
pop.v.i self.hurttimer

:[8]
popenv [6]

:[9]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [2]

:[10]
exit.i

:[11]
push.i [function]gml_Script_scr_weaken_enemies
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_weaken_enemies
popz.v

:[end]