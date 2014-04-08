/* 2014 Don Bosley : 
Neutrik Jack Set V 0.0
For updates/corrections email : don@bosleymusic.com
Mechanical Drawing
Compatible with Neutrik products : 
- stereo jack, switched, chrome ferrule and straight PCB pins

NMJ6HDC2

*/

//MAIN BODY
translate([0,0,0])
color("black") 
cube([20.61,18.2,8.14]); 

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
	cylinder(r=15.67-8.14, h=2); 
}

//REAR CYLINDER
color("black")
translate([20.60,9.1,8.14])
rotate([90,0,90]) 
cylinder(r=5.7,h=23.53-20.60);


difference(){
	union(){
		//NUT
		color("lightgrey")
		translate([-5.59, 9.1,8.14])
		rotate([90,0,-90])
		cylinder(r=7,h=1.74, $fn=6); 
		//FRONT WASHERS
		for (i = [ [-1.2,9.1,8.14],
		 		  [-2.4,9.1,8.14],
				  [-3.6,9.1,8.14]
 		])
		{
			color("black")
			translate(i)
			rotate([90,0,90])
			cylinder(r=8, h=1.21); 
		}
		//FRONT BEVEL
		color("black")
		translate([-3.59, 9.1,8.14])
		rotate([90,0,-90])
		cylinder(r2=6.5, r1=8,h=2); 
	}
//NUTHOLE
color("black")
translate([8, 9.1,8.14])
rotate([90,0,-90])
cylinder(r=3.2,h=24); 
}

/*ENSURE PIN CENTERS ARE ALIGNED (COMMENT OUT)
for (i = [  [4,2.23/2,-2],//S
		   [4,18.2-2.23/2,-2],//SN
		   [16.7,2.23/2,-2],//T
		   [16.7,18.2-2.23/2,-2],//TN

 ])
{
	translate(i)
	color("blue")
	cylinder(r=.7, h=9);
}
*/

//PINS 
for(i = [
	     [4-1.25,.985,0],//S
		 [4-1.25,18.2-.985,0],//SN
		 [10.35-1.25,.985,0],//R
		 [10.35-1.25,18.2-.985,0],//RN
	     [16.7-1.25,.985,0],//T
		 [16.7-1.25,18.2-.985,0],//TN

])
{
	translate(i)
	color("lightgrey") 
	union(){cube([2.5,.1,9.1]); 
 	translate([.75,0,-4])
	cube([1,.1,4]);}
}
