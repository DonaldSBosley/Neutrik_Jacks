/* 2014 Don Bosley : 
Neutrik Jack Set V 0.0:
For updates/corrections email : don@bosleymusic.com
Mechanical Drawing
Compatible with Neutrik products : 
- stereo jack, switched, half threaded nose and straight PCB pins

NMJ6HHD2


*/

//MAIN BODY
translate([0,0,0])
color("black") 
cube([21,18.2,8.14]); 

//BODY SECTIONS
for (i = [ [0,9.1,8.14],
		   [6.2,9.1,8.14],
		   [12.9,9.1,8.14],
		   [19,9.1,8.14],
])
{
	color("black")
	translate(i)
	rotate([90,0,90])
	cylinder(r=15.67-8.14, h=2); 
}

//REAR CYLINDER
color("black")
translate([20.9,9.1,8.14])
rotate([90,0,90]) 
cylinder(r=5.7,h=3.1);


difference(){
	union(){
		//NUT
		color("lightgrey")
		translate([.25, 9.1,8.4])
		rotate([90,0,-90])
		cylinder(r=7,h=5, $fn=6); 
		
//FRONT WASHER
			color("black")
			translate([-1.2,9.1,8.4])
			rotate([90,0,90])
			cylinder(r=9, h=1.2); 

//FRONT BEVEL / NUT
		color("black")
		translate([-1.19, 9.1,8.4])
		rotate([90,0,-90])
		cylinder(r2=7, r1=9.1,h=1.2);
//MAIN SHAFT 
		color("black")
		translate([-.15, 9.1,8.14])
		rotate([90,0,-90])
		cylinder(r=3.3,h=9); 
//FRONT SCREW THREAD
		color("black")
		translate([-4, 15.75-6.43, 8.14])
		rotate([0,90,0])
		linear_extrude(height = 4.2, center = true, convexity = 10, twist = 3000)
		translate([0, 3.2, 1])
		circle(r = .8); 
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
	     [4.35-1.25,.985,0],//S
		 [4.35-1.25,18.2-.985,0],//SN
		 [10.7-1.25,.985,0],//R
		 [10.7-1.25,18.2-.985,0],//RN
	     [17.05-1.25,.985,0],//T
		 [17.05-1.25,18.2-.985,0],//TN

])
{
	translate(i)
	color("lightgrey") 
	union(){
		cube([2.5,.1,9.1]);  
		translate([.75,0,-4])
		cube([1,.1,4]);
	}
}
