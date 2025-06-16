.localvar 2 arguments

:[0]
b [12]

> gml_Script_scr_damage_all (locals=0, argc=0)
:[1]
pushglb.v global.inv
pushi.e 0
cmp.i.v LT
bf [11]

:[2]
push.v self.damage
pop.v.v self.remdamage
push.v self.target
pop.v.v self._temptarget
pushi.e 0
pop.v.i self.ti

:[3]
push.v self.ti
pushi.e 3
cmp.i.v LT
bf [10]

:[4]
pushi.e -1
pop.v.i global.inv
push.v self.remdamage
pop.v.v self.damage
push.v self.ti
pop.v.v self.target
pushi.e -5
pushi.e -5
push.v self.ti
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.hp
pushi.e 0
cmp.i.v GT
bf [6]

:[5]
pushi.e -5
push.v self.ti
conv.v.i
push.v [array]self.char
pushi.e 0
cmp.i.v NEQ
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
call.i gml_Script_scr_damage(argc=0)
popz.v

:[9]
push.v self.ti
pushi.e 1
add.i.v
pop.v.v self.ti
b [3]

:[10]
pushglb.v global.invc
pushi.e 40
mul.i.v
pop.v.v global.inv
push.v self._temptarget
pop.v.v self.target

:[11]
exit.i

:[12]
push.i [function]gml_Script_scr_damage_all
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_damage_all
popz.v

:[end]