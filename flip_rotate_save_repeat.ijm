dir = getDirectory("Choose a directory");
files = getFileList(dir);
for(i=0;i<files.length;i++){
	file=files[i];
	open(dir+File.separator+file);

	run("Rotate 90 Degrees Right");
	
	// process comands
	
	filename = File.nameWithoutExtension;
	saveAs("tif", dir+filename+"_90.tif");
	
	run("Rotate 90 Degrees Right");
	
	// process comands
	
	filename = File.nameWithoutExtension;
	saveAs("tif", dir+filename+"_180.tif");
	
	run("Rotate 90 Degrees Right");
	
	// process comands
	
	filename = File.nameWithoutExtension;
	saveAs("tif", dir+filename+"_270.tif");
	
	run("Rotate 90 Degrees Right");
	run("Flip Vertically");
	
	filename = File.nameWithoutExtension;
	saveAs("tif", dir+filename+"_F.tif");
	
	run("Rotate 90 Degrees Right");
	
	// process comands
	
	filename = File.nameWithoutExtension;
	saveAs("tif", dir+filename+"_90_F.tif");
	

	run("Rotate 90 Degrees Right");
	
	// process comands
	
	filename = File.nameWithoutExtension;
	saveAs("tif", dir+filename+"_180_F.tif");
	
	run("Rotate 90 Degrees Right");
	
	// process comands
	
	filename = File.nameWithoutExtension;
	saveAs("tif", dir+filename+"_270_F.tif");
	close();
}