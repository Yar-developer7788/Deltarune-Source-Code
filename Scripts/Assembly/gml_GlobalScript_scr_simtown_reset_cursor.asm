.localvar 2 arguments

:[0]
b [11]

> gml_Script_scr_simtown_reset_cursor (locals=0, argc=0)
:[1]
push.v self.GameOver
pushi.e 0
cmp.i.v EQ
bf [10]

:[2]
pushi.e 0
pop.v.i self.i

:[3]
push.v self.i
pushi.e 16
cmp.i.v LT
bf [10]

:[4]
pushi.e 0
pop.v.i self.j

:[5]
push.v self.j
pushi.e 6
cmp.i.v LT
bf [9]

:[6]
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.TileYouCanBuild
push.v self.j
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.v self.i
pop.v.v self.CursorX
push.v self.j
pop.v.v self.CursorY
call.i gml_Script_cameray(argc=0)
push.v self.i
pushi.e 40
mul.i.v
add.v.v
pop.v.v self.CursorVisualX
call.i gml_Script_cameray(argc=0)
push.v self.j
pushi.e 40
mul.i.v
add.v.v
pushi.e 80
add.i.v
pop.v.v self.CursorVisualY
exit.i

:[8]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [5]

:[9]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [3]

:[10]
exit.i

:[11]
push.i [function]gml_Script_scr_simtown_reset_cursor
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_simtown_reset_cursor
popz.v

:[end]