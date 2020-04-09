<html>
<body>
<h2>BMI and Retirement Calculator</h2>
<button type="button" onclick="bmicalc()">BMI</button>
<button type="button" onclick="retirecalc()">Retirement</button>

    <script>
function bmicalc() {
    let userheight = window.prompt("Please give your height in inches.");
    let userweight = window.prompt("Please give your height in inches.");
    userweight = userweight * .45;
    userheight = userheight * .025;
    userheight = userheight * userheight;
    let userbmi = userweight / userheight;
    if(userheight<=0 || userweight <= 0 || isNaN(userheight) || isNaN(userweight)){
        document.write("The height and weight must be numbers higher than zero. Please start again.");
    }
    else{

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

}
function retirecalc() {
    let userage = window.prompt("Please give your age.");
    let useransal = window.prompt("Please give your annual salary.");
    let userperc = window.prompt("Please input the percentage of your salary you save as a decimal percentage.");
    let userdsav = window.prompt("Please give your savings goal.");
    if (isNaN(userage) || isNaN(useransal) || isNaN(userperc) || isNaN(userdsav)){
        document.write("The values must be numbers. Please press start again.");
    }
    useransal = useransal * userperc;
    useransal = useransal * 1.35;
    userdsav = userdsav / useransal;
    var retireage = userage + userdsav;
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
