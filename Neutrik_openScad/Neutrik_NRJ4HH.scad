/* 2014 Don Bosley : 
Neutrik Jack Set V 0.0:
For updates/corrections email : don@bosleymusic.com
Mechanical Drawing
Compatible with Neutrik products : 
- mono, switched, half threaded nose :
NRJ4HH
NRJ4HH-1(sleeve contact/front panel connection)

*/

//MAIN BODY
//MIDDLE SECTION
translate([0,.5,3])
color("black") 
cube([21.36,14.75,3.7]); 

for (i = [ [0,0,0],
			[19.36,0,0],
			[6.45,0,0],
			[12.8,0,0],
])
{
color("black")
translate(i)
cube([2,15.75,12.7]); 
}

//PINS 
for(i = [
	     [4.2-1.25,2.16,0],//S
		 [4.25-1.25,15.75-2.16,0],//SN
		 [16.95-1.25,2.16,0],//T
		 [16.95-1.25,15.75-2.16,0],//TN
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

//PLASTIC LUGS
for(i = [
			[7.45,2.16,-1.9], //LUG 1
			[7.45,15.75-2.16,-1.9],//LUG 2
])
{
	translate(i)
	color("black") 
	cylinder(r1=.7,r2=1,h=2);
}

//BIG LUG
color("black")
translate([13.8,15.75-11.53,-2])
cylinder(r1=1, r2=1.2, h=5);

/*ENSURE PIN CENTERS ARE ALIGNED (COMMENT OUT)
for (i = [ [4.25,2.16,-2],//S
			[10.6,2.16,-2],//R
			[16.95,2.16,-2],//T
			[4.25,15.75-2.16,-2],//G
			[13.8,15.75-11.53,-2],//BIG LUG
			[7.45,2.16,-2], //LUG 1
			[7.45,15.75-2.16,-2],//LUG 2
 ])
{
	translate(i)
	color("blue")
	cylinder(r=.7, h=9);
}
*/

//FRONT CYLINDER

difference(){
color("black") 
translate([-8.9,15.75-6.43,6.5]) 
rotate([0,90,0]) 
cylinder(r=5.2, h=29);

color("white") 
translate([-8.9,15.75-6.43,6.5]) 
rotate([0,90,0]) 
cylinder(r=3.175, h=29);
}

//FRONT SCREW THREAD
color("black")
translate([-2, 15.75-6.43, 6.5])
rotate([0,90,0])
linear_extrude(height = 4.2, center = true, convexity = 10, twist = 3000)
translate([0, 5.1, 1])
circle(r = .8);

//REAR CYLINDER
color("black")
translate([21.35,15.75-6.43,6.5])rotate([0,90,0]) 
cylinder(h=2.94, r1 = 5, r2=3.2, $fn=100, center=false);



 





