dir = getDirectory("Choose a directory");
files = getFileList(dir);
output_dir = getDirectory("Choose a directory");

for(i=0;i<files.length;i++){
	file=files[i];
	open(dir+File.separator+file);
	
	filename = File.nameWithoutExtension;	
	run("Split Channels");
	close();
	close();
	saveAs("tif", output_dir+filename+"_red.tif");
	close();
	} 
