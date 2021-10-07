echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"

cd /home/user
npm init -y
npm install
node server.js


echo "<hr>Running on $(hostname)" >> login-page.html