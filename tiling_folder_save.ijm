dir = getDirectory("Choose a directory");
files = getFileList(dir);


for(i=0;i<files.length;i++){
	file=files[i];
	open(dir+File.separator+file);
	
	filename = File.nameWithoutExtension;
	newdir = dir+filename+"_tiled";
	File.makeDirectory(newdir);
	
		
	id = getImageID();  
	getLocationAndSize(locX, locY, sizeW, sizeH); 
	width = getWidth(); 
	height = getHeight(); 
	tileWidth = width / 6; 
	tileHeight = height / 6; 
	for (y = 0; y < 6; y++) 
	{ 
	offsetY = y * height / 6; 
	 for (x = 0; x < 6; x++) 
	{ 
	offsetX = x * width / 6; 
	selectImage(id); 
	 call("ij.gui.ImageWindow.setNextLocation", locX + offsetX, locY + offsetY); 
	tileTitle = filename + " [" + x + "," + y + "]"; 
	 run("Duplicate...", "filename" + tileTitle); 
	makeRectangle(offsetX, offsetY, tileWidth, tileHeight); 
	 run("Crop"); 
	} 
	} 
	selectImage(id);
	close();
	run("Convert Images to Stack");
	run("Image Sequence... ", "format=TIFF save=["+newdir+"]");
	close();
}