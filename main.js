const user = sessionStorage.getItem("email");
const welcome = document.getElementById("welcome");

console.log(user)
var querryStr = "http://localhost:3000/user/fn?uid=" + user;
console.log($.getJSON(querryStr))
const firstname = $.getJSON(querryStr, (data) => {
    welcome.innerText = "Welcome " + (data[0].first_name);
  });

