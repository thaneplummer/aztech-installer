rem USE git log --oneline
rem
rem You can find the SHA number (rev) in Kiln
rem v1.5.1   e42362c3de59
rem v1.5.5   d4881eae7380
rem v1.7.1   9104856e254b
rem v1.7.3.1 d11df8ee2f6c 
rem v1.7.3.3 52ba9a694535 
rem v1.7.3.5 e972614d0e75 
rem v1.7.3.7 584880be 
rem v1.7.3.9 de5d6916 
rem v1.7.3.11 64da99d9
rem v1.7.3.12 f0577fb8
rem v1.7.3.13 2d19f195
rem 7cd7cdb0b v1.7.3.14
rem 
rem v1.5.5   update: git diff --name-status  e42362c3de59 > deltafiles_v1.5.5.txt
rem v1.7.1   update: git diff --name-status  d4881eae7380 > deltafiles_v1.7.1.txt
rem v1.7.3.3 update: git diff --name-status  d11df8ee2f6c > deltafiles_v1.7.3.3.txt
rem v1.7.3.5 update: git diff --name-status  52ba9a694535 > deltafiles_v1.7.3.5.txt
rem v1.7.3.7 update: git diff --name-status  e972614d0e75 > deltafiles_v1.7.3.7.txt
rem v1.7.3.9 update: git diff --name-status  584880be > deltafiles_v1.7.3.9.txt
rem v1.7.3.11 update:git diff --name-status de5d6916 > deltafiles_v1.7.3.11.txt
rem git diff --name-status 64da99d9 > deltafiles_v1.7.3.12.txt
rem
rem Use this to get a list of git changes
git diff --name-status 2d19f195 > deltafiles_v1.7.3.14.txt
rem Or use this
rem git diff --name-only 8b0c723a1b62 HEAD > deltafiles.txt
