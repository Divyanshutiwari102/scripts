# !/bin/bash
# user defined variables 
 hero="rancho"
 villan="virus"

 echo "3 idiots ka hero hai $hero"
 echo " 3 idiots ka villan hai $villan"

 # predefined variables 
 echo " current logged in user: $ USER"


 read -p "rancho ka pura naam kya tha ?" fullname

 echo " Rancho ka poora naam hai $fullname"

 # arguments 
 
 # ./3idiots.sh raju farhan rancho

 echo "movie ka namm :$0"
 echo "first idiot is :$1"
 echo "second idiot is :$2"
 echo "third idiot is :$3"
echo"total no of idiots are :$#"
 echo " All idiots are :$@"


