.localvar 2 arguments

:[0]
push.v other.image_alpha
push.d 0.85
cmp.d.v EQ
bf [end]

:[1]
push.d 0.5
pop.v.d self.image_alpha

:[end]