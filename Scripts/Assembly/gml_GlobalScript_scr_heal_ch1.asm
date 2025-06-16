.localvar 2 arguments

:[0]
b [17]

> gml_Script_scr_heal_ch1 (locals=0, argc=2)
:[1]
pushi.e 0
pop.v.i self.abovemaxhp
pushi.e 0
pop.v.i self.belowzero
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [array]self.char
pop.v.v self.hltarget
pushi.e -5
push.v self.hltarget
conv.v.i
push.v [array]self.hp
pop.v.v self._curhp
pushi.e -5
push.v self.hltarget
conv.v.i
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
bf [3]

:[2]
pushi.e 1
pop.v.i self.belowzero

:[3]
pushi.e -5
push.v self.hltarget
conv.v.i
push.v [array]self.hp
pushi.e -5
push.v self.hltarget
conv.v.i
push.v [array]self.maxhp
cmp.v.v GT
bf [5]

:[4]
pushi.e 1
pop.v.i self.abovemaxhp

:[5]
push.v self.abovemaxhp
pushi.e 0
cmp.i.v EQ
bf [8]

:[6]
push.i 110331611
setowner.e
pushi.e -5
push.v self.hltarget
conv.v.i
dup.i 1
push.v [array]self.hp
push.v arg.argument1
add.v.v
pop.i.v [array]self.hp
pushi.e -5
push.v self.hltarget
conv.v.i
push.v [array]self.hp
pushi.e -5
push.v self.hltarget
conv.v.i
push.v [array]self.maxhp
cmp.v.v GT
bf [8]

:[7]
pushi.e -5
push.v self.hltarget
conv.v.i
push.v [array]self.maxhp
pushi.e -5
push.v self.hltarget
conv.v.i
pop.v.v [array]self.hp

:[8]
push.v self.belowzero
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
pushi.e -5
push.v self.hltarget
conv.v.i
push.v [array]self.hp
pushi.e 0
cmp.i.v GTE
b [11]

:[10]
push.e 0

:[11]
bf [15]

:[12]
pushi.e -5
push.v self.hltarget
conv.v.i
push.v [array]self.hp
pushi.e -5
push.v self.hltarget
conv.v.i
push.v [array]self.maxhp
pushi.e 6
conv.i.d
div.d.v
call.i ceil(argc=1)
cmp.v.v LT
bf [14]

:[13]
pushi.e -5
push.v self.hltarget
conv.v.i
push.v [array]self.maxhp
pushi.e 6
conv.i.d
div.d.v
call.i ceil(argc=1)
pushi.e -5
push.v self.hltarget
conv.v.i
pop.v.v [array]self.hp

:[14]
push.v arg.argument0
call.i gml_Script_scr_revive_ch1(argc=1)
popz.v

:[15]
pushi.e 431
conv.i.v
call.i gml_Script_snd_stop_ch1(argc=1)
popz.v
pushi.e 431
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e -5
push.v self.hltarget
conv.v.i
push.v [array]self.hp
push.v self._curhp
sub.v.v
ret.v

:[16]
exit.i

:[17]
push.i [function]gml_Script_scr_heal_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_heal_ch1
popz.v

:[end]