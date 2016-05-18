# Letter Block
A simple little openscad script to turn a digital letter into a 3D printable letter block for a printing press

# Prerequisites

Install this handy inkscape plugin: https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/DXF_Extrusion

# Usage

* Write the letter you want in inkscape - note that in linux configuring the compose key can be handing for things like macrons.
* Set the letter size as desired (this should match the final print size)
* Save as ???.dxf with the filetype being OpenScad DXF 
* Open the single_letter.scad script with OpenScad
  * press F5 to compile -> you should see the letter with a magenta block
  * Export as STL for 3D printing

NOTE: Don't resize the inkscape page!  Inscapes internal coordinates are different fromt the page coordinates and doing so will make 
everything horrible. 

