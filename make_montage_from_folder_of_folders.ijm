dir = getDirectory("Choose a directory");
outputdir = getDirectory("Choose a directory");
files = getFileList(dir);


for(i=0;i<files.length;i++){
	file=files[i];
	path=dir+file;
	if (File.isDirectory(path)){
		list = getFileList(path); 
		for(x=0;x<list.length;x++){
			images=path + File.separator + list[x];
			open(images);
		}
		run("Convert Images to Stack");
		run("Make Montage...", "columns=6 rows=6 scale=1");
		close("Stack");
		save(outputdir+File.getNameWithoutExtension(path)+"_montage.tif");
		close();
	}
		}
