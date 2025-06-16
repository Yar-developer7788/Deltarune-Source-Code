.localvar 2 arguments

:[0]
b [7]

> gml_Script_scr_healall (locals=0, argc=1)
:[1]
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [6]

:[3]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 0
cmp.i.v NEQ
bf [5]

:[4]
push.v arg.argument0
push.v self.i
call.i gml_Script_scr_heal(argc=2)
popz.v

:[5]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[6]
exit.i

:[7]
push.i [function]gml_Script_scr_healall
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_healall
popz.v

:[end]