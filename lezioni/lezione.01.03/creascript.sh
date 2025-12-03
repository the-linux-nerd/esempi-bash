#!/bin/bash

# creo il file
touch "$1"

# scrivo lo shebang
echo "#!/bin/bash" > "$1"

# rendo il file eseguibile
chmod u+x "$1"
