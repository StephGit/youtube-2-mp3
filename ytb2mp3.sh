 #!/bin/bash                                                                                    
 URL=$1                                                                                                                                                                                      
                                                                                                
 # download audio and convert to mp3                                                  
 download_and_convert() {                                                                       
  youtube-dl -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0 --output "%(title)s.%(ext)s" $URL                                                                              
 }                                                                                              
                                                                                                
 # check parameter                                                                              
 if [ $# = 0 ]; then                                                                            
  echo "Youtube URL is required."                                                                                       
 else                                                                                           
  download_and_convert                                                                         
 fi          
