.localvar 2 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushglb.v global.inv
pushi.e 0
cmp.i.v LT
bf [end]

:[2]
pushi.e 1468
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 439
conv.i.v
call.i gml_Script_snd_stop_ch1(argc=1)
popz.v
pushi.e 439
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushglb.v global.invc
pushi.e 40
mul.i.v
pop.v.v global.inv
pushi.e 0
pop.v.i self.i

:[3]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [7]

:[4]
push.i 175672
setowner.e
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.hp
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.temphp
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.temphp
pushi.e 0
cmp.i.v LT
bf [6]

:[5]
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.temphp

:[6]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [3]

:[7]
pushi.e -1
pushi.e 0
push.v [array]self.temphp
pushi.e -1
pushi.e 1
push.v [array]self.temphp
add.v.v
pushi.e -1
pushi.e 2
push.v [array]self.temphp
add.v.v
call.i ceil(argc=1)
pushi.e 3
conv.i.d
div.d.v
pushi.e 10
cmp.i.v GTE
bf [14]

:[8]
pushi.e 0
pop.v.i self.i

:[9]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [13]

:[10]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.temphp
pushi.e 0
cmp.i.v GT
bf [12]

:[11]
push.i 231131
setowner.e
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.hp
push.d 0.7
mul.d.v
call.i ceil(argc=1)
pushi.e -5
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
conv.v.i
pop.v.v [array]self.hp

:[12]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [9]

:[13]
b [end]

:[14]
call.i gml_Script_scr_damage_all_ch1(argc=0)
popz.v

:[end]