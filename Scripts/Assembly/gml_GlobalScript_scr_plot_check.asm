.localvar 2 arguments
.localvar 10855 __plot 2783

:[0]
b [12]

> gml_Script_scr_plot_check (locals=1, argc=1)
:[1]
push.v arg.argument0
pop.v.v local.__plot
pushloc.v local.__plot
pushi.e 0
cmp.i.v GT
bf [7]

:[2]
pushglb.v global.plot
pushloc.v local.__plot
cmp.v.v GTE
bf [5]

:[3]
pushi.e 1
conv.b.v
ret.v

:[4]
b [6]

:[5]
pushi.e 0
conv.b.v
ret.v

:[6]
b [11]

:[7]
pushglb.v global.plot
pushloc.v local.__plot
cmp.v.v LT
bf [10]

:[8]
pushi.e 1
conv.b.v
ret.v

:[9]
b [11]

:[10]
pushi.e 0
conv.b.v
ret.v

:[11]
exit.i

:[12]
push.i [function]gml_Script_scr_plot_check
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_plot_check
popz.v

:[end]