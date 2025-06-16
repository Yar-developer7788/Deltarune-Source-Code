.localvar 2 arguments

:[0]
b [9]

> gml_Script_scr_battlecursor_memory_reset (locals=0, argc=0)
:[1]
pushi.e -5
pushi.e 14
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [8]

:[2]
pushi.e 0
pop.v.i self.i

:[3]
push.v self.i
pushi.e 20
cmp.i.v LT
bf [8]

:[4]
pushi.e 0
pop.v.i self.j

:[5]
push.v self.j
pushi.e 20
cmp.i.v LT
bf [7]

:[6]
push.i 19499203
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [arraypopaf]self.bmenucoord
push.v self.j
conv.v.i
popaf.e
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [5]

:[7]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [3]

:[8]
exit.i

:[9]
push.i [function]gml_Script_scr_battlecursor_memory_reset
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_battlecursor_memory_reset
popz.v

:[end]