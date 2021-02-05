url=$(curl -s https://api.github.com/repos/matusnovak/doxybook2/releases/latest \ 
  | grep browser_download_url \                                                                                
  | grep linux \                                             
  | cut -d '"' -f 4)                                

filename=${url##*/}          
wget $url               
unzip $filename -d doxybook2         
