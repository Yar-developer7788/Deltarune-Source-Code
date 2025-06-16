.localvar 2 arguments

:[0]
b [38]

> gml_Script_scr_damage_all_overworld_ch1 (locals=0, argc=0)
:[1]
pushglb.v global.inv
pushi.e 0
cmp.i.v LT
bf [37]

:[2]
push.v self.damage
pop.v.v self.remdamage
push.v self.target
pop.v.v self.remtarget
pushi.e 1468
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [4]

:[3]
pushi.e 1468
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v

:[4]
pushi.e 1633
pushenv [6]

:[5]
pushi.e 1
pop.v.i self.killactive

:[6]
popenv [5]
pushi.e 439
conv.i.v
call.i gml_Script_snd_stop_ch1(argc=1)
popz.v
pushi.e 439
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 0
pop.v.i self.ti

:[7]
push.v self.ti
pushi.e 3
cmp.i.v LT
bf [19]

:[8]
pushi.e -1
pop.v.i global.inv
push.v self.remdamage
pop.v.v self.damage
push.v self.ti
pop.v.v self.target
push.v self.damage
pop.v.v self.tdamage
pushi.e -5
push.v self.target
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pushenv [10]

:[9]
pushi.e 1
pop.v.i self.hurt
pushi.e 0
pop.v.i self.hurttimer

:[10]
popenv [9]
push.v self.tdamage
pop.v.v self.hpdiff
push.v self.hpdiff
pushi.e -5
pushi.e -5
push.v self.target
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.hp
cmp.v.v GTE
bf [12]

:[11]
pushi.e -5
pushi.e -5
push.v self.target
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.hp
pushi.e 1
sub.i.v
pop.v.v self.hpdiff

:[12]
pushi.e 0
pop.v.i self.d_cancel
push.v self.hpdiff
pushi.e 1
cmp.i.v LTE
bf [14]

:[13]
pushi.e 1
pop.v.i self.d_cancel
pushi.e 0
pop.v.i self.hpdiff

:[14]
push.v self.d_cancel
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
pushi.e -1
pop.v.i self.doomtype
push.i 109807323
setowner.e
pushi.e -5
pushi.e -5
push.v self.target
conv.v.i
push.v [array]self.char
conv.v.i
dup.i 1
push.v [array]self.hp
push.v self.hpdiff
sub.v.v
pop.i.v [array]self.hp
pushi.e 1633
conv.i.v
pushi.e -5
push.v self.target
conv.v.i
push.v [array]self.charinstance
pushi.e -9
push.v [stacktop]self.y
pushi.e -5
push.v self.target
conv.v.i
push.v [array]self.charinstance
pushi.e -9
push.v [stacktop]self.myheight
add.v.v
pushi.e 24
sub.i.v
pushi.e -5
push.v self.target
conv.v.i
push.v [array]self.charinstance
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.dmgwriter
push.v self.hpdiff
push.v self.dmgwriter
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.doomtype
push.v self.dmgwriter
pushi.e -9
pop.v.v [stacktop]self.type

:[16]
pushi.e -5
pushi.e -5
push.v self.target
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.hp
pushi.e 1
cmp.i.v LT
bf [18]

:[17]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e -5
push.v self.target
conv.v.i
push.v [array]self.char
conv.v.i
pop.v.v [array]self.hp

:[18]
push.v self.ti
pushi.e 1
add.i.v
pop.v.v self.ti
b [7]

:[19]
pushi.e 1
pop.v.i self.gameover
pushi.e -5
pushi.e 0
push.v [array]self.char
pushi.e 0
cmp.i.v NEQ
bf [21]

:[20]
pushi.e -5
pushi.e -5
pushi.e 0
push.v [array]self.char
conv.v.i
push.v [array]self.hp
pushi.e 1
cmp.i.v GT
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
pushi.e 0
pop.v.i self.gameover

:[24]
pushi.e -5
pushi.e 1
push.v [array]self.char
pushi.e 0
cmp.i.v NEQ
bf [26]

:[25]
pushi.e -5
pushi.e -5
pushi.e 1
push.v [array]self.char
conv.v.i
push.v [array]self.hp
pushi.e 1
cmp.i.v GT
b [27]

:[26]
push.e 0

:[27]
bf [29]

:[28]
pushi.e 0
pop.v.i self.gameover

:[29]
pushi.e -5
pushi.e 2
push.v [array]self.char
pushi.e 0
cmp.i.v NEQ
bf [31]

:[30]
pushi.e -5
pushi.e -5
pushi.e 2
push.v [array]self.char
conv.v.i
push.v [array]self.hp
pushi.e 1
cmp.i.v GT
b [32]

:[31]
push.e 0

:[32]
bf [34]

:[33]
pushi.e 0
pop.v.i self.gameover

:[34]
push.v self.gameover
pushi.e 1
cmp.i.v EQ
bf [36]

:[35]
call.i gml_Script_scr_gameover_ch1(argc=0)
popz.v

:[36]
push.v self.remtarget
pop.v.v self.target
pushglb.v global.invc
pushi.e 40
mul.i.v
pop.v.v global.inv

:[37]
exit.i

:[38]
push.i [function]gml_Script_scr_damage_all_overworld_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_damage_all_overworld_ch1
popz.v

:[end]