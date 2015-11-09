module color

import pair
import bool

data color = red | green | blue | cyan | magenta | yellow

complement: color -> color
complement red = cyan
complement green = magenta
complement blue = yellow
complement cyan = red
complement magenta = green
complement yellow = blue

additive: color -> bool 
additive red = true
additive green = true
additive blue = true
additive _ = false

subtractive: color -> bool
subtractive a = not (additive a)

complements: pair color color -> bool
complements (mkPair red cyan) = true
complements (mkPair green magenta) = true
complements (mkPair blue yellow) = true
complements _ = false

mixink: pair color color -> color
mixink (mkPair cyan magenta) = blue
mixink (mkPair cyan yellow) = green
mixink (mkPair yellow magenta) = red
mixink (mkPair yellow cyan) = green
mixink (mkPair magenta yellow) = red
mixink (mkPair magenta cyan) = blue
