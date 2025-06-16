.localvar 2 arguments
.localvar 6360 $$$$temp$$$$ 669

:[0]
b [15]

> gml_Script_scr_healitemspell (locals=1, argc=1)
:[1]
push.v arg.argument0
push.v self.star
call.i gml_Script_scr_heal(argc=2)
popz.v
pushi.e 15
pop.v.i global.spelldelay
pushi.e -5
push.v self.star
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pushenv [14]

:[2]
pushi.e 858
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ha
push.v self.id
push.v self.ha
pushi.e -9
pop.v.v [stacktop]self.target
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
pushi.e 777
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
push.v 777.id
push.v self.ha
pushi.e -9
pop.v.v [stacktop]self.target

:[7]
call.i gml_Script_scr_dmgwriter_selfchar(argc=0)
pop.v.v self.dmgwr
push.v self.dmgwr
pushi.e -9
pushenv [9]

:[8]
pushi.e 8
pop.v.i self.delay
pushi.e 3
pop.v.i self.type
push.v arg.argument0
pop.v.v self.damage

:[9]
popenv [8]
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
bf [13]

:[10]
push.v self.dmgwr
pushi.e -9
pushenv [12]

:[11]
pushi.e 3
pop.v.i self.specialmessage

:[12]
popenv [11]

:[13]
push.v self.tu
pushi.e 1
add.i.v
pop.v.v self.tu
push.v self.ha
pop.v.v local.$$$$temp$$$$
popenv <drop>
push.v local.$$$$temp$$$$
ret.v

:[14]
popenv [2]
exit.i

:[15]
push.i [function]gml_Script_scr_healitemspell
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_healitemspell
popz.v

:[end]