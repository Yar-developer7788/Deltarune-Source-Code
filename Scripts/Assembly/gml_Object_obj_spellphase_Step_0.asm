.localvar 2 arguments

:[0]
pushglb.v global.encounterno
pushi.e 92
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.funny

:[2]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
push.v self.spelltimer
pushi.e 1
add.i.v
pop.v.v self.spelltimer
push.v self.spelltimer
pushglb.v global.spelldelay
cmp.v.v GTE
bf [5]

:[4]
push.v self.spellwriter
call.i gml_Script_i_ex(argc=1)
pushi.e 0
cmp.b.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [end]

:[7]
push.v self.char
pushi.e 3
cmp.i.v GTE
bt [9]

:[8]
push.v self.spelltotal
pushi.e 1
cmp.i.v EQ
b [10]

:[9]
push.e 1

:[10]
bf [14]

:[11]
call.i gml_Script_scr_attackphase(argc=0)
popz.v
push.v self.spellwriter
pushi.e -9
pushenv [13]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[13]
popenv [12]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[14]
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 0
cmp.i.v GT
bf [35]

:[15]
pushi.e -1
push.v self.char
conv.v.i
push.v [array]self.gotitem
pushi.e 1
cmp.i.v EQ
bf [21]

:[16]
pushi.e 1
pop.v.i self.re_castyet
pushi.e -5
push.v self.char
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pushenv [18]

:[17]
pushi.e 4
pop.v.i self.state

:[18]
popenv [17]
push.v self.spellwriter
pushi.e -9
pushenv [20]

:[19]
call.i instance_destroy(argc=0)
popz.v

:[20]
popenv [19]
push.v self.char
pushi.e -5
push.v self.char
conv.v.i
push.v [array]self.charspecial
call.i gml_Script_scr_spelltext(argc=2)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
pop.v.v self.spellwriter

:[21]
pushi.e -1
push.v self.char
conv.v.i
push.v [array]self.gotspell
pushi.e 1
cmp.i.v EQ
bf [27]

:[22]
pushi.e 1
pop.v.i self.re_castyet
pushi.e -5
push.v self.char
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pushenv [24]

:[23]
pushi.e 2
pop.v.i self.state

:[24]
popenv [23]
push.v self.spellwriter
pushi.e -9
pushenv [26]

:[25]
call.i instance_destroy(argc=0)
popz.v

:[26]
popenv [25]
push.v self.char
pushi.e -5
push.v self.char
conv.v.i
push.v [array]self.charspecial
call.i gml_Script_scr_spelltext(argc=2)
popz.v
call.i gml_Script_scr_battletext_default(argc=0)
pop.v.v self.spellwriter

:[27]
pushi.e 90
pop.v.i global.spelldelay
push.v self.re_castyet
pushi.e 0
cmp.i.v EQ
bf [29]

:[28]
pushi.e 1
pop.v.i global.spelldelay

:[29]
push.v self.char
pushi.e 1
add.i.v
pop.v.v self.char
pushi.e 2
dup.i 0
push.i 0
cmp.i.i LTE
bt [34]

:[30]
push.v self.char
pushi.e 3
cmp.i.v LT
bf [33]

:[31]
pushi.e -1
push.v self.char
conv.v.i
push.v [array]self.using
pushi.e 0
cmp.i.v EQ
bf [33]

:[32]
push.v self.char
pushi.e 1
add.i.v
pop.v.v self.char

:[33]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [30]

:[34]
popz.i
pushi.e 0
pop.v.i self.spelltimer
pushi.e 0
pop.v.i self.re_castyet
b [end]

:[35]
call.i gml_Script_scr_attackphase(argc=0)
popz.v
push.v self.spellwriter
pushi.e -9
pushenv [37]

:[36]
call.i instance_destroy(argc=0)
popz.v

:[37]
popenv [36]
call.i instance_destroy(argc=0)
popz.v

:[end]