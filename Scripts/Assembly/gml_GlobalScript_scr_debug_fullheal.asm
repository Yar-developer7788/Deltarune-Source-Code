.localvar 2 arguments

:[0]
b [10]

> gml_Script_scr_debug_fullheal (locals=0, argc=0)
:[1]
pushi.e 873
pushenv [4]

:[2]
push.v self.delaytimer
pushi.e 1
cmp.i.v GTE
bf [4]

:[3]
pushi.e 1
pop.v.i self.killactive

:[4]
popenv [2]
pushi.e 999
conv.i.v
call.i gml_Script_scr_healallitemspell(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[5]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [9]

:[6]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.charinstance
pushi.e -9
pushenv [8]

:[7]
push.v self.tu
push.e 1
sub.i.v
pop.v.v self.tu

:[8]
popenv [7]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [5]

:[9]
exit.i

:[10]
push.i [function]gml_Script_scr_debug_fullheal
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_debug_fullheal
popz.v

:[end]