/* 2014 Don Bosley : 
For updates/corrections email : don@bosleymusic.com
Neutrik Jack Set V 0.0
Mechanical Drawing
Compatible with Neutrik products : 
- mono jack, switched, full threaded nose, offset PCB pins

NMJ6HFD3

*/

//MAIN BODY
translate([0,0,0])
color("black") 
cube([21,18.2,9.89]); 

//FRONT 

//BODY SECTIONS
for (i = [ [0,9.1,8.14],
		   [6.2,9.1,8.14],
		   [12.9,9.1,8.14],
		   [18.61,9.1,8.14],
])
{
	color("black")
	translate(i)
	rotate([90,0,90])
	cylinder(r=15.7-8.14, h=2); 
}

//REAR CYLINDER
color("black")
translate([20.61,9.1,8.14])
rotate([90,0,90]) 
cylinder(r=5.7,h=23.53-20.61);


difference(){
	union(){
		//NUT
		color("lightgrey")
		translate([-3.59, 9.1,8.14])
		rotate([90,0,-90])
		cylinder(r=7,h=3.6, $fn=6); 
		
//FRONT WASHERS
		for ( i = [ [-1.2,9.1,8.14], 
					[-2.4,9.1,8.14], 
					[-3.6,9.1,8.14], 
		])
		{	
			color("black")
			translate(i)
			rotate([90,0,90])
			cylinder(r=9, h=1.21); 
		}
//FRONT BEVEL 
		color("black")
		translate([-3.59, 9.1,8.4])
		rotate([90,0,-90])
		cylinder(r2=7, r1=9.1,h=1.2);
//MAIN SHAFT 
		color("black")
		translate([-.15, 9.1,8.14])
		rotate([90,0,-90])
		cylinder(r=3.3,h=7); 

	}
//NUTHOLE
color("black")
translate([8, 9.1,8.14])
rotate([90,0,-90])
cylinder(r=3.2,h=24); 
}


/*ENSURE PIN CENTERS ARE ALIGNED (COMMENT OUT)
for (i = [  [2.9,2.23/2,-4],//S
		   [2.9,18.2-2.23/2,-4],//SN
		   [15.6,2.23/2,-4],//T
		   [15.6,18.2-2.23/2,-4],//TN

 ])
{
	translate(i)
	color("blue")
	cylinder(r=.65, h=9);
}
*/

//PINS 
for(i = [
	     [2.55-.6,.985,-1],//S
		 [2.55-.65,18.2-.985,-1],//SN
		 [8.9-.6,.985,-1],//R
		 [8.9-.65,18.2-.985,-1],//RN
	     [15.25-.65,.985,-1],//T
		 [15.25-.65,18.2-.985,-1],//TN

])
{
	translate(i)
	color("lightgrey") 
	union(){
			cube([2.5,.1,9.1]);  
			translate([0,0,-3.94])
			cube([1.2,.1,3.96]);
	}
}
