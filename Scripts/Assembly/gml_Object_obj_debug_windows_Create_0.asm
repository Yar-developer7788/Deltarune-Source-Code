.localvar 2 arguments

:[0]
pushbltn.v builtin.mouse_x
pushi.e 40
sub.i.v
pop.v.v self.xx
pushbltn.v builtin.mouse_y
pushi.e 20
sub.i.v
pop.v.v self.yy
pushi.e 520
conv.i.v
pushi.e 40
conv.i.v
push.v self.xx
call.i clamp(argc=3)
pop.v.v self.xx
pushi.e 340
conv.i.v
pushi.e 40
conv.i.v
push.v self.yy
call.i clamp(argc=3)
pop.v.v self.yy
pushi.e 0
pop.v.i self.type
push.i 172962
setowner.e
push.s "Drag Window!"@29950
conv.s.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.button_text
pushi.e 15
conv.i.v
call.i event_user(argc=1)
popz.v
push.s " "@353
pop.v.s self.watchvar
pushi.e -1
pop.v.i self.watchflag
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
push.v self.button_amount
cmp.v.v LT
bf [3]

:[2]
push.i 172966
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.button_state
push.i 172967
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.button_clicked
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushbltn.v builtin.mouse_x
call.i gml_Script_camerax(argc=0)
sub.v.v
pop.v.v self.remmx
pushbltn.v builtin.mouse_y
call.i gml_Script_cameray(argc=0)
sub.v.v
pop.v.v self.remmy

:[end]