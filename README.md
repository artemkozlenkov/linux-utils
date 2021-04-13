execute any script directly from Github by running 

```
wget -O - https://raw.githubusercontent.com/artemkozlenkov/linuxup/main/<file_name.sh> | bash
```

in your terminal, where, <file_name.sh> is one of the necessary files in the repository

e.g: `wget -O - https://raw.githubusercontent.com/artemkozlenkov/linuxup/main/kernel-update.sh | bash` 

will execute the script from the file with name "kernel-update.sh"
