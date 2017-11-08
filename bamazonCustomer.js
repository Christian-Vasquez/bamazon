var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
  host : 'localhost',
  user: 'root',
  password: 'Welcome123',
  database: "bamazon"
});

connection.connect(function(err) {
  if (err) throw err;

  let display = function() {
	var query = "SELECT item_id, product_name, price, stock_quantity FROM products";
    return new Promise(function(resolve,reject){ 
    connection.query(query, function(err, res) {
        for (var i = 0; i < res.length; i++) {
          console.log("ID: " + res[i].item_id + "\nProduct: " + res[i].product_name + "\nPrice: " + res[i].price + "\nStock: " + res[i].stock_quantity + "\n");
        }
        resolve();
     });
    });

  }

  let run_amazon = function() {
	return inquirer
     .prompt([{
     	  name: "id",
        message: "Please enter the Item ID you will like to buy:"
      	},
      	{
        name: "amount",
        message: "Please enter the amount of items you will like to buy:?"
      	}])
    	.then(function(answer) {
    		var inquery = "SELECT * FROM products WHERE item_id = ?";
    		connection.query(inquery, answer.id, function(err, res) {
        		if(answer.amount <= res[0].stock_quantity && answer.amount > 0) {
        			var total = res[0].stock_quantity - answer.amount;
        			connection.query("UPDATE products SET stock_quantity = ? WHERE item_id = ?", [total, answer.id]);
        			console.log("-------*******-------");
        			console.log("Your Total amount: " + (answer.amount * res[0].price));
        			console.log("-------*******-------");
        		}
        		else{
        			console.log(res);
        			console.log("Insufficient quantity!");
        		}
     		});

    		
    	});

    return new Promise(function(resolve,reject){
    	resolve();
    });
}  
    
// run_amazon().then(function(){
//   console.log("YES! I am first")
//  	return display();
// });

display().then(function(){
	return run_amazon();
});


});
