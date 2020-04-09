<html>
<body>
//Title of webapp
<h2>BMI and Retirement Calculator</h2>
//User choice of calculation
<button type="button" onclick="bmicalc()">BMI</button>
<button type="button" onclick="retirecalc()">Retirement</button>

    <script>
function bmicalc() {
    //Get user input
    let userheight = window.prompt("Please give your height in inches.");
    let userweight = window.prompt("Please give your height in inches.");

    //Verify if user input is usable
    if(userheight<=0 || userweight <= 0){
        document.write("The height and weight must be numbers higher than zero. Please start again.");
    }

    //Convert user input to correct form
    userweight = userweight * .45;
    userheight = userheight * .025;

    //Calculate bmi
    userheight = userheight * userheight;
    let userbmi = userweight / userheight;

    //Inform user of their bmi range
    if(userbmi <19){
        document.write("Your bmi is under the healthy range. It is " + userbmi + ".");
    }
    else if(userbmi > 18 && userbmi < 26){
        document.write("Your bmi is in the healthy range. It is " + userbmi + ".");
    }
    else{
        document.write("Your bmi is above the healthy range. It is " + userbmi + ".");
    }

}
function retirecalc() {
    //Get user input
    let userage = window.prompt("Please give your age.");
    let useransal = window.prompt("Please give your annual salary.");
    let userperc = window.prompt("Please input the percentage of your salary you save as a decimal percentage.");
    let userdsav = window.prompt("Please give your savings goal.");

    //Verify if user input is usable
    if (userage < 1 || useransal < 1 || userperc <= 0 || userperc > 1 || userdsav < 1){
        document.write("The values must be positive numbers above zero. Percentage should be under one. Please press start again.");
    }

    //Calculate retirement age
    useransal = useransal * userperc;
    useransal = useransal * 1.35;
    userdsav = userdsav / useransal;
    let retireage = userage + userdsav;

    //Inform user of their possible retirement age
    if (retireage > 99){
        document.write("You will not make the goal before you die.");
    }
    else {
        document.write("You will not make the goal before you die.");
    }

}
    </script>
</body>
</html>
