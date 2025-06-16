.localvar 2 arguments

:[0]
push.v self.carhit
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.hitcheck
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 411
pushenv [6]

:[5]
pushi.e 100
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v

:[6]
popenv [5]
pushi.e 392
pushenv [9]

:[7]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e 100
cmp.i.v LT
bf [9]

:[8]
pushi.e 50
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v

:[9]
popenv [7]

:[end]