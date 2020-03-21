vagrant@vagrant:~/mysnaps/hello$ vim snap/snapcraft.yaml 
vagrant@vagrant:~/mysnaps/hello$ vim snap/snapcraft.yaml 


name: mysnapname # you probably want to 'snapcraft register <name>'
base: core18 # the base snap is the execution environment for this snap
version: '0.1' # just for humans, typically '1.2+git' or '1.3.2'
summary: Single-line elevator pitch for your amazing snap # 79 char long summary
description: |
  This is my-snap's description. You have a paragraph or two to tell the
  most important story about your snap. Keep it under 100 words though,
  we live in tweetspace and your description wants to look good in the snap
  store.

grade: devel # must be 'stable' to release into candidate/stable channels
confinement: devmode # use 'strict' once you have the right plugs and slots

parts:
  gnu-hello:
    source: http://ftp.gnu.org/gnu/hello/hello-2.10.tar.gz
    plugin: autotools


vagrant@vagrant:~/mysnaps/hello$ snapcraft 
Support for 'multipass' needs to be set up. Would you like to do that it now? [y/N]:  
You need 'multipass' set-up to build snaps: https://multipass.run.
vagrant@vagrant:~/mysnaps/hello$ snapcraft
Support for 'multipass' needs to be set up. Would you like to do that it now? [y/N]: y
snapd is not logged in, snap install commands will use sudo
multipass 1.1.0 from Canonical✓ installed
Waiting for multipass...
Launching a VM.
launch failed: CPU does not support KVM extensions.                             
An error occurred with the instance when trying to launch with 'multipass': returned exit code 2.
Ensure that 'multipass' is setup correctly and try again.
vagrant@vagrant:~/mysnaps/hello$ 

