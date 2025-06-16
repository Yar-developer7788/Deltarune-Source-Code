.localvar 2 arguments

:[0]
b [10]

> gml_Script_scr_healitemspell_ch1 (locals=0, argc=1)
:[1]
push.v arg.argument0
push.v self.star
call.i gml_Script_scr_heal_ch1(argc=2)
popz.v
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pushenv [9]

:[2]
pushi.e 1622
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.ha
push.v self.id
push.v self.ha
pushi.e -9
pop.v.v [stacktop]self.target
call.i gml_Script_scr_dmgwriter_selfchar_ch1(argc=0)
pop.v.v self.dmgwr
push.v self.dmgwr
pushi.e -9
pushenv [4]

:[3]
pushi.e 8
pop.v.i self.delay
pushi.e 3
pop.v.i self.type
push.v arg.argument0
pop.v.v self.damage

:[4]
popenv [3]
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.hp
pushi.e -5
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.maxhp
cmp.v.v GTE
bf [8]

:[5]
push.v self.dmgwr
pushi.e -9
pushenv [7]

:[6]
pushi.e 3
pop.v.i self.specialmessage

:[7]
popenv [6]

:[8]
push.v self.tu
pushi.e 1
add.i.v
pop.v.v self.tu

:[9]
popenv [2]
pushi.e 15
pop.v.i global.spelldelay
exit.i

:[10]
push.i [function]gml_Script_scr_healitemspell_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_healitemspell_ch1
popz.v

:[end]