# Getting Started with Mojo and VS Code on WSL
1. Install <a href="https://code.visualstudio.com/" target="_blank">VS Code</a>, the <a href="https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl" target="_blank">WSL</a>  extension, and the <a href="https://marketplace.visualstudio.com/items?itemName=modular-mojotools.vscode-mojo" target="_blank">Mojo</a>  extension. </br>
5.  Install <a href="https://apps.microsoft.com/detail/ubuntu-22042-lts/9PN20MSR04DW?hl=en-us&gl=IL" target="_blank">Ubuntu 22.04</a> for WSL and open it. </br>
6. In the Ubuntu terminal, install the Modular CLI:</br>
   ```curl https://get.modular.com | \  MODULAR_AUTH=mut_2ee0972ab22a4775b2cf0980eedc9edb \  sh -```
7. Install the Mojo SDK:</br>
   ```sudo modular install mojo```
8. Open the Ubuntu workspace in VS Code with this:</br>
   ```code .```
9. Get started with Hello World!</br>
#### Before you start:
You must set the MODULAR_HOME and PATH environment variables, as described in the output when you ran modular install mojo. For example, if you’re using bash, you can set them as follows:</br>
6.1. ```echo 'export MODULAR_HOME="$HOME/.modular"' >> ~/.bashrc```</br>
6.2. ```echo 'export PATH="$MODULAR_HOME/pkg/packages.modular.com_mojo/bin:$PATH"' >> ~/.bashrc ```</br>
6.3. ```source ~/.bashrc```
  
