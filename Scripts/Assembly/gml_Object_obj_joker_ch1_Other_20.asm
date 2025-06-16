.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [5]

:[2]
push.i 231132
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.remmaxhp
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.maxhp
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.hp
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.maxhp
cmp.v.v GTE
bf [4]

:[3]
push.i 231131
setowner.e
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.maxhp
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.hp

:[4]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[5]
push.v self.reminvc
pop.v.v global.invc
pushi.e 1592
pushenv [7]

:[6]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 3949
pop.v.i self.sprite_index
push.v self.sprite_index
pop.v.v self.sparedsprite
pushi.e 1
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[7]
popenv [6]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e 0
cmp.i.v GT
bf [11]

:[8]
pushi.e 1592
pushenv [10]

:[9]
push.v self.x
pushi.e 20
add.i.v
pop.v.v self.x
push.v self.y
pushi.e 18
add.i.v
pop.v.v self.y
call.i gml_Script_scr_spareanim_ch1(argc=0)
popz.v
push.v self.x
pushi.e 20
sub.i.v
pop.v.v self.x
push.v self.y
pushi.e 18
sub.i.v
pop.v.v self.y

:[10]
popenv [9]

:[11]
pushi.e 1517
pushenv [13]

:[12]
pushi.e 1
pop.v.i self.skipvictory

:[13]
popenv [12]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
pushi.e 4
push.v self.body
pushi.e -9
pop.v.i [stacktop]self.dancelv
pushi.e 0
push.v self.body
pushi.e -9
pop.v.i [stacktop]self.condition
pushi.e 1458
pushenv [15]

:[14]
pushi.e 0
pop.v.i self.on

:[15]
popenv [14]
call.i gml_Script_scr_monsterdefeat_ch1(argc=0)
popz.v
push.v self.reminvc
pop.v.v global.invc
call.i instance_destroy(argc=0)
popz.v

:[end]