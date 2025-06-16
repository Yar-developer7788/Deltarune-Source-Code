.localvar 2 arguments

:[0]
b [10]

> gml_Script_scr_custommenu_optionxy (locals=0, argc=0)
:[1]
pushi.e 0
pop.v.i self.wrap
pushi.e 0
pop.v.i self.vwrap
pushi.e 0
pop.v.i self._n

:[2]
push.v self._n
push.v self.menuMax
cmp.v.v LT
bf [9]

:[3]
pushi.e 0
pop.v.i self.j

:[4]
push.v self.j
pushi.e -1
push.v self._n
conv.v.i
push.v [array]self.menuMaximumID
cmp.v.v LTE
bf [8]

:[5]
push.i 33000399
setowner.e
pushi.e -1
push.v self._n
conv.v.i
push.v [array]self.menuX
push.v self.wrap
pushi.e -1
push.v self._n
conv.v.i
push.v [array]self.menuSpacingX
mul.v.v
add.v.v
pushi.e -1
push.v self._n
conv.v.i
push.v [arraypopaf]self.optionX
push.v self.j
conv.v.i
popaf.e
push.i 33000402
setowner.e
pushi.e -1
push.v self._n
conv.v.i
push.v [array]self.menuY
push.v self.vwrap
pushi.e -1
push.v self._n
conv.v.i
push.v [array]self.menuSpacingY
mul.v.v
add.v.v
pushi.e -1
push.v self._n
conv.v.i
push.v [arraypopaf]self.optionY
push.v self.j
conv.v.i
popaf.e
push.v self.wrap
push.e 1
add.i.v
pop.v.v self.wrap
push.v self.wrap
pushi.e -1
push.v self._n
conv.v.i
push.v [array]self.menuWidth
cmp.v.v GTE
bf [7]

:[6]
pushi.e 0
pop.v.i self.wrap
push.v self.vwrap
push.e 1
add.i.v
pop.v.v self.vwrap

:[7]
push.v self.j
push.e 1
add.i.v
pop.v.v self.j
b [4]

:[8]
push.v self._n
push.e 1
add.i.v
pop.v.v self._n
b [2]

:[9]
exit.i

:[10]
push.i [function]gml_Script_scr_custommenu_optionxy
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_custommenu_optionxy
popz.v

:[end]