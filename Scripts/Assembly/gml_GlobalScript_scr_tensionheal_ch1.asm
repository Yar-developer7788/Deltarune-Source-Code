.localvar 2 arguments

:[0]
b [4]

> gml_Script_scr_tensionheal_ch1 (locals=0, argc=1)
:[1]
push.v global.tension
push.v arg.argument0
add.v.v
pop.v.v global.tension
pushglb.v global.tension
pushglb.v global.maxtension
cmp.v.v GT
bf [3]

:[2]
pushglb.v global.maxtension
pop.v.v global.tension

:[3]
exit.i

:[4]
push.i [function]gml_Script_scr_tensionheal_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_tensionheal_ch1
popz.v

:[end]