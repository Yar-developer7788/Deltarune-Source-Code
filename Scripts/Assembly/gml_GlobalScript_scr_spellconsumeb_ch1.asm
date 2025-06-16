.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_spellconsumeb_ch1 (locals=0, argc=0)
:[1]
push.v global.tension
push.v self.cost
sub.v.v
pop.v.v global.tension
push.i 118065387
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.faceaction
push.i 118065291
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushglb.v global.charturn
conv.v.i
pop.v.v [array]self.charaction
push.i 118065308
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
pushi.e 0
pop.v.i global.tensionselect
call.i gml_Script_scr_nexthero_ch1(argc=0)
popz.v
exit.i

:[2]
push.i [function]gml_Script_scr_spellconsumeb_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_spellconsumeb_ch1
popz.v

:[end]