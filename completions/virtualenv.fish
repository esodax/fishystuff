
complete -c virtualenv -l version -d "show program's version number and exit"
complete -c virtualenv -s h -l help -d "show this help message and exit"
complete -c virtualenv -s v -l verbose -d "Increase verbosity"
complete -c virtualenv -s q -l quiet -d "Decrease verbosity"
complete -c virtualenv -s p -l python -d "The Python interpreter to use"
complete -c virtualenv -l clear -d "Clear out the non-root install and start from scratch"
complete -c virtualenv -l no-site-packages -d "Don't give access to the global site-packages dir to the virtual environment"
complete -c virtualenv -l unzip-setuptools -d "Unzip Setuptools or Distribute when installing it"
complete -c virtualenv -l relocatable -d "Make an EXISTING virtualenv environment relocatable"
complete -c virtualenv -l distribute -d "Use Distribute instead of Setuptools"
complete -c virtualenv -l prompt -d "Provides an alternative prompt prefix for this environment"

