.localvar 2 arguments

:[0]
b [7]

> gml_Script_scr_targetall_ch1 (locals=0, argc=0)
:[1]
pushi.e 0
pop.v.i self._ti

:[2]
push.v self._ti
pushi.e 3
cmp.i.v LT
bf [6]

:[3]
pushi.e -5
push.v self._ti
conv.v.i
push.v [array]self.charcantarget
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.i 108628088
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self._ti
conv.v.i
pop.v.v [array]self.targeted

:[5]
push.v self._ti
pushi.e 1
add.i.v
pop.v.v self._ti
b [2]

:[6]
pushi.e 3
pop.v.i self.mytarget
pushi.e 3
pop.v.i self.target
exit.i

:[7]
push.i [function]gml_Script_scr_targetall_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_targetall_ch1
popz.v

:[end]