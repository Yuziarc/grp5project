const user_email = sessionStorage.getItem("email");
var querryStr = "http://localhost:3000/account/by-email?email=" + user_email;

const temp = document.getElementById("temp");

function fill_fields(e) {
    $.getJSON(querryStr, mydata);
  };
  

function mydata(data) {
    var text = "<ul>"
    data.forEach(function (item) {
        text = text + `<li> Account: ${item.account_id} <br>
        Account Type : ${item.account_type} <br>
        Account Balance ${item.balance}  <br> 
        Account Limit: ${item.max_limit} <br>
        Created Date: ${item.date_created}</li>`;
    text += "</ul>";
    temp.innerHTML = text
    })
}

fill_fields();