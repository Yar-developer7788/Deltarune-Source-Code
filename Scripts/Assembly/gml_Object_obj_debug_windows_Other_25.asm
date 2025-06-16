.localvar 2 arguments

:[0]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 6
pop.v.i self.button_amount
push.i 172962
setowner.e
push.s "Change Sprite Index"@29959
conv.s.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.button_text
push.s "Change Variable (num)"@29960
conv.s.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.button_text
push.s "Change Variable (string)"@29961
conv.s.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.button_text
push.s "Watch Variable"@29962
conv.s.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.button_text
push.s "DELETE OBJECT"@29963
conv.s.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.button_text

:[2]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
pushi.e 6
pop.v.i self.button_amount
push.s "Set Flag"@29964
conv.s.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.button_text
push.s "Watch Flag"@29965
conv.s.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.button_text
push.s "Set/Check Global Var"@29966
conv.s.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.button_text
push.s "Select Object"@29967
conv.s.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.button_text
push.s "Instance Create"@29968
conv.s.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.button_text

:[end]