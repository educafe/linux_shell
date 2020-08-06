#!/bin/bash
# shell variable into python in two ways

export price=100
python - <<END
import os
print "price:", os.environ['price']
END

cost=200 python - <<END			# when python clause is in newline after varibale cost, it gives error
import os
print "cost:", os.environ['cost']
END