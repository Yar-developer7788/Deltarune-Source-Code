.localvar 2 arguments

:[0]
b [5]

> gml_Script_scr_itemshift_temp (locals=0, argc=2)
:[1]
push.i 9668798
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 12
push.v [arraypopaf]self.tempitem
push.v arg.argument1
conv.v.i
popaf.e
push.v arg.argument0
pop.v.v self.i

:[2]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [4]

:[3]
pushi.e -1
push.v self.i
pushi.e 1
add.i.v
conv.v.i
push.v [arraypushaf]self.tempitem
push.v arg.argument1
conv.v.i
pushaf.e
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.tempitem
push.v arg.argument1
conv.v.i
popaf.e
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
exit.i

:[5]
push.i [function]gml_Script_scr_itemshift_temp
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_itemshift_temp
popz.v

:[end]