.localvar 2 arguments

:[0]
b [4]

> gml_Script_scr_nextmsg_ch1 (locals=0, argc=0)
:[1]
push.v self.msgno
pushi.e 1
add.i.v
pop.v.v self.msgno
pushi.e 0
pop.v.i self.lineno
pushi.e 0
pop.v.i self.aster
pushi.e 0
pop.v.i self.halt
pushi.e 1
pop.v.i self.pos
push.i 52234753
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 1
pop.v.i self.autoaster
pushi.e -1
push.v self.msgno
conv.v.i
push.v [array]self.nstring
pop.v.v self.mystring
pushi.e 0
pop.v.i self.formatted
pushi.e 0
pop.v.i self.wxskip
pushi.e 0
pop.v.i self.sound_played
push.v self.rate
pushi.e 3
cmp.i.v LT
bf [3]

:[2]
pushi.e 0
pop.v.i self.firstnoise
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.alarm

:[3]
exit.i

:[4]
push.i [function]gml_Script_scr_nextmsg_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_nextmsg_ch1
popz.v

:[end]