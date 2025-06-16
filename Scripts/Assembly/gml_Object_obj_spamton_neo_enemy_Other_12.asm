.localvar 2 arguments

:[0]
pushglb.v global.inv
pushi.e 0
cmp.i.v LT
bf [end]

:[1]
push.v self.damage
pop.v.v self.remdamage
push.v self.target
pop.v.v self._temptarget
pushi.e 0
pop.v.i self.ti

:[2]
push.v self.ti
pushi.e 3
cmp.i.v LT
bf [15]

:[3]
pushi.e -1
pop.v.i global.inv
pushi.e -5
pushi.e -5
push.v self.ti
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.hp
pushi.e -5
pushi.e -5
push.v self.ti
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.maxhp
push.d 0.5
mul.d.v
cmp.v.v GT
bf [5]

:[4]
pushi.e -5
pushi.e -5
push.v self.ti
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.hp
pushi.e 5
conv.i.d
div.d.v
call.i floor(argc=1)
pop.v.v self.damage
b [9]

:[5]
pushi.e -5
pushi.e -5
push.v self.ti
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.hp
pushi.e -5
pushi.e -5
push.v self.ti
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.maxhp
push.d 0.15
mul.d.v
cmp.v.v GTE
bf [7]

:[6]
pushi.e -5
pushi.e -5
push.v self.ti
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.hp
pushi.e 10
conv.i.d
div.d.v
call.i floor(argc=1)
pop.v.v self.damage
b [9]

:[7]
pushi.e -5
pushi.e -5
push.v self.ti
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.hp
pushi.e -5
pushi.e -5
push.v self.ti
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.maxhp
push.d 0.15
mul.d.v
cmp.v.v LT
bf [9]

:[8]
pushi.e -5
pushi.e -5
push.v self.ti
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.hp
pushi.e 20
conv.i.d
div.d.v
call.i floor(argc=1)
pop.v.v self.damage

:[9]
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
bf [11]

:[10]
pushi.e -5
push.v self.ti
conv.v.i
push.v [array]self.char
pushi.e 0
cmp.i.v NEQ
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
call.i gml_Script_scr_damage_sneo_final_attack(argc=0)
popz.v

:[14]
push.v self.ti
pushi.e 1
add.i.v
pop.v.v self.ti
b [2]

:[15]
pushglb.v global.invc
pushi.e 40
mul.i.v
pop.v.v global.inv
push.v self._temptarget
pop.v.v self.target

:[end]