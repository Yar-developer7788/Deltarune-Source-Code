.localvar 2 arguments

:[0]
b [13]

> gml_Script_scr_spellconsumeb (locals=0, argc=0)
:[1]
push.v global.tension
push.v self.cost
sub.v.v
pop.v.v global.tension
push.i 27625707
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.faceaction
push.i 27625611
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.charaction
pushi.e -5
pushi.e 34
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.i 27625628
setowner.e
pushi.e -5
pushi.e -5
pushglb.v global.charturn
conv.v.i
push.v [array]self.char
conv.v.i
push.v [arraypushaf]self.spell
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
pushaf.e
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.charspecial

:[3]
pushi.e -5
pushi.e 34
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e -5
pushglb.v global.charturn
conv.v.i
push.v [arraypushaf]self.battlespell
pushi.e -5
pushi.e 2
push.v [arraypushaf]self.bmenucoord
pushglb.v global.charturn
conv.v.i
pushaf.e
conv.v.i
pushaf.e
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.charspecial

:[5]
pushi.e 0
pop.v.i global.tensionselect
push.v self.spellanim
pushi.e 1
cmp.i.v EQ
bf [9]

:[6]
pushi.e -5
pushglb.v global.charturn
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pushenv [8]

:[7]
pushi.e 0
pop.v.i self.spellframes
push.v self.spellreadysprite
pop.v.v self.spellsprite

:[8]
popenv [7]
b [12]

:[9]
pushi.e -5
pushglb.v global.charturn
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pushenv [11]

:[10]
push.v self.remspellframes
pop.v.v self.spellframes
push.v self.remspellsprite
pop.v.v self.spellsprite

:[11]
popenv [10]

:[12]
call.i gml_Script_scr_nexthero(argc=0)
popz.v
exit.i

:[13]
push.i [function]gml_Script_scr_spellconsumeb
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_spellconsumeb
popz.v

:[end]