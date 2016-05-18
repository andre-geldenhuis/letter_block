/*First Install this handy inscape plugin
https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/DXF_Extrusion

Inkscape steps
Don't resize the inscape page!  Its internal coordinates are different from
the page coordinates and that will make everything super horrible.

Type your letter on the default page, then align the letter to the lower left
corner
-> save as drawing.dxf in the OpenSCAD DXF format*/
union(){
  linear_extrude(height = 3, center = false, convexity = 200)
  import (file = "drawing.dxf");
  total_width = dxf_dim(file = "drawing.dxf", name = "total_width");
  total_height = dxf_dim(file = "drawing.dxf", name = "total_height");

  translate([0,0,-20]){
      color("magenta"){
      echo(total_width);
      echo(total_height);
      cube(size=[total_width,total_height,20]);
   }
  }
}
