.localvar 2 arguments

:[0]
b [13]

> gml_Script_scr_healallitemspell_ch1 (locals=0, argc=1)
:[1]
push.v arg.argument0
call.i gml_Script_scr_healall_ch1(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [12]

:[3]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pushenv [11]

:[4]
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
pushenv [6]

:[5]
pushi.e 8
pop.v.i self.delay
pushi.e 3
pop.v.i self.type
push.v arg.argument0
pop.v.v self.damage

:[6]
popenv [5]
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
bf [10]

:[7]
push.v self.dmgwr
pushi.e -9
pushenv [9]

:[8]
pushi.e 3
pop.v.i self.specialmessage

:[9]
popenv [8]

:[10]
push.v self.tu
pushi.e 1
add.i.v
pop.v.v self.tu

:[11]
popenv [4]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[12]
pushi.e 20
pop.v.i global.spelldelay
exit.i

:[13]
push.i [function]gml_Script_scr_healallitemspell_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_healallitemspell_ch1
popz.v

:[end]