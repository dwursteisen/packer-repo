export INTELLIJ_VERSION=ideaIC-13.1.1

http://download.jetbrains.com/idea/ideaIC-13.1.1.tar.gz

http://download.jetbrains.com/idea/ideaIC-13.1.1.exe

echo "Retrieve IntelliJ distribution"
wget http://download.jetbrains.com/idea/$INTELLIJ_VERSION.tar.gz
tar -xvzf $INTELLIJ_VERSION.tar.gz -C /usr/local
mv /usr/local/idea-IC* /usr/local/intellij
rm $INTELLIJ_VERSION.tar.gz
chmod -R +r /usr/local/intellij
echo export PATH=\$PATH:/usr/local/intellij > /etc/profile.d/intellij.sh
echo setenv PATH \${PATH}:/usr/local/intellij > /etc/profile.d/intellij.csh

echo "Generate Desktop launcher"
mkdir /home/formation/Desktop/
cat <<EOF >/home/formation/Desktop/IntelliJ.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=IntelliJ $INTELLIJ_VERSION
Exec=/usr/local/intellij/bin/idea.sh 
Icon=/usr/local/intellij/bin/idea.png
Terminal=false
EOF
chmod +rwx /home/formation/Desktop/IntelliJ.desktop

echo "Pause for console output"
sleep 2