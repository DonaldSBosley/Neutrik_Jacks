/* 2014 Don Bosley :
Neutrik Jack Set V 0.0: 
Mechanical Drawing
For updates/corrections email : don@bosleymusic.com
Compatible with Neutrik products : 
- stereo, metal nose, T+R+S normalling contact :
NRJ6HM-1
NRJ6HM-1-AU

*/

//MAIN BODY
//MIDDLE SECTION
translate([0,0,3])
color("black") 
cube([21.85,15.75,3.7]);
 
for (i = [ [0,0,0],
		[19.85,0,0],
		[6.45,0,0],
		[12.8,0,0],
])
{
	color("black")
	translate(i)
	cube([2,15.75,12.7]); 
}



//FRONT CYLINDER
difference(){
color("white") 
translate([-8.2,15.75-6.43,6.5]) 
rotate([0,90,0]) 
cylinder(r=4, h=29);

color("white") 
translate([-8.3,15.75-6.43,6.5]) 
rotate([0,90,0]) 
cylinder(r=2.5, h=29);
}

//FRONT METAL TAB
translate([.1,15.75-1.95,2.23])
rotate(180,0,0)
cube([.6,9,9]);


//PINS 
for(i = [
	     [4.75-1.25,2.16,0],//S
		 [11.1-1.25,2.16,0],//R
		 [17.45-1.25,2.16,0],//T
		 [4.75-1.25,15.75-2.16,0],//SN
		 [11.1-1.25,15.75-2.16,0],//RN
		 [17.45-1.25,15.75-2.16,0],//TN
])
{
	translate(i)
	color("lightgrey") 
	union(){
		cube([2.5,.1,9.1]);  
		translate([.75,0,-3.25])
		cube([1,.1,4]);
	}
}


/*ENSURE PIN CENTERS ARE ALIGNED (COMMENT OUT)
for (i = [ [4.75,15.75-6.43+4.2,-2],//S
			[11.1,15.75-6.43+4.2,-2],//R
			[17.45,15.75-6.43+4.2,-2],//T
			[4.75,15.75-11.43-6.43+4.2,-2],//SN
			[11.1,15.75-11.43-6.43+4.2,-2],//RN
			[17.45,15.75-11.43-6.43+4.2,-2],//TN
 ])
{
	translate(i)
	color("blue")
	cylinder(r=.75, h=9);
}
*/


//FRONT SCREW THREAD
color("white")
translate([-4.4, 15.75-6.43, 6.5])
rotate([0,90,0])
linear_extrude(height = 5, center = true, convexity = 10, twist = 3000)
translate([0, 4, 1])
circle(r = .8);




 





