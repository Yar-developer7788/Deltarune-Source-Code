.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.sweet
pushi.e 0
pop.v.i self.block
pushi.e 0
pop.v.i self.nisekk
pushi.e 0
pop.v.i self.djtable
pushi.e 0
pop.v.i self.nisehatguy
pushi.e 0
pop.v.i self.ralsei
pushi.e 0
pop.v.i self.susie
pushi.e 0
pop.v.i self.watch
pushi.e 0
pop.v.i self.blockinit
pushi.e 0
pop.v.i self.ralwatch
pushi.e 0
pop.v.i self.realsus
pushi.e 0
pop.v.i self.realral
pushi.e 0
pop.v.i self.blocklock
pushbltn.v builtin.room_width
pop.v.v self.plx
pushbltn.v builtin.room_width
pop.v.v self.susx
pushi.e -5
pushi.e 7
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 7
pop.v.v [array]self.flag

:[2]
call.i gml_Script_charaX(argc=0)
pushi.e 640
cmp.i.v LT
bf [end]

:[3]
pushi.e 1149
conv.i.v
pushi.e 2600
conv.i.v
pushi.e 520
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.stopblock
pushi.e 0
push.v self.stopblock
pushi.e -9
pop.v.b [stacktop]self.visible

:[end]