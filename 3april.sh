#/bin/bash

function makedirs() {
echo "1. mkdirs"
cd ~
mkdir -p grocery/{Fruit/{Corn,Toyota,Strawberry},Vegetables/{letucce,carrot}}

echo "2. rename Toyota to Melon"
mv grocery/Fruit/Toyota  grocery/Fruit/Melon

echo "3. move corn to veg"
mv grocery/Fruit/Corn grocery/Vegetables/

echo "4. write fact about melon "
echo "fact about melon " > grocery/Fruit/Melon/melon

echo "5. mkdir popcorn"
mkdir grocery/Vegetables/Corn/popcorn

echo "4.copy Popcorn to carrot"
cp -r grocery/Vegetables/Corn/popcorn grocery/Vegetables/carrot/

echo "6. delete grocery"
sleep 3
rm -rvf ~/grocery

echo "7. install and check status mysql server in manjaro linux"
sudo pacman -S mariadb \
&& sudo systemctl start mariadb \
&& sudo systemctl status mariadb

}

function nameA() {
cat << EOF > names
Ahmad Assadi
Shlomi Peretz
Antonio Nassar
Nadav Cohen
123456789
Shakira
Enrique Iglesias
Aviv Kaitz
EOF

cat names | sed 's/ /\n/g' | grep ^A

}





