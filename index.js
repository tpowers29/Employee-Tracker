const inquirer = require("inquirer");
const mysql = require("mysql2");
require("console.table")
const db = mysql.createConnection({
    port:'localhost',
    user:'root',
    password:'',
    database:'employeetracker_db'
},function(err){
    if (err) throw err;
    console.log("Welcome to Employee Tracker")
    mainmenu()
})


function mainmenu(){
    inquirer.createPromptModule([
        {
            type:'list',
            message:'Please choose',
            name:'option',
            choices:[
                "View Department", 
                "View Roles",
                "View Employee",
                "Add Department",
                "Add Roles",
                "Add Employee",
                "Update Role",
                "Exit App"
            ]
        }
    ]).then(function(response){
        switch(response.option){
            case "View Department":
                viewDepartment();
                break;
            case "View Roles":
                viewRoles();
                break;
            case "View Employee":
                viewEmployee();
                break;
            case "Add Department":
                addDepartment();
                break;
            case "Add Roles":
                addRoles();
                break;
            case "Add Employee":
                addEmployee();
                break;
            case "Update Role":
                updateRole();
                break;
            default:
                db.end()
                process.end(0)
        }
    })
}

function viewDepartment(){
    db.query("select * from department;",function(err,data){
        if(err) throw err;
        console.table(data)
        mainmenu()
    })
}
function viewRoles(){
    db.query("select * from roles;",function(err,data){
        if(err) throw err;
        console.table(data)
        mainmenu()
    })
}
function viewEmployees(){
    db.query("select * from employee;",function(err,data){
        if(err) throw err;
        console.table(data)
        mainmenu()
    })
}