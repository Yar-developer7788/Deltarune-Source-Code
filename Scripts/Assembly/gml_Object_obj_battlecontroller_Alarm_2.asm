.localvar 2 arguments

:[0]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [3]

:[1]
pushi.e 697
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
pushi.e -5
push.v 697.myself
conv.v.i
push.v [array]self.mercymod
pushi.e 99
cmp.i.v GT
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 1
pop.v.i 697.endcon
b [end]

:[6]
pushi.e 0
pop.v.i self.reset
call.i gml_Script_scr_mnendturn(argc=0)
popz.v

:[end]