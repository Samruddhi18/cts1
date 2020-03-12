function Greet()
{
document.write("welcome");

}

function Printmsg()
{
document.write("Calculator");
}



function square()
{ var a,c;
a=prompt("Enter number:-");
 document.getElementById("Result").innerHTML=(a*a);
}

function addition()
{ var s,p,m;
s=prompt("Enter 1st number:-");
p=prompt("Enter 2nd number:-");
m=parseInt(s)+parseInt(p);
alert(m);
}



function showdata()
{
var i,j;
	for(i=1;i<=10;i++)
		{
		for(j=1;j<=i;j++)
			{
		         document.write(j);
			}
		document.write("</br>");
		}

}






