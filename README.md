# Manual of installation
```
cd ~
git clone https://github.com/srak-uf/tsubame_job.git
echo 'PATH=$PATH:~/tsubame_job' >> ~/.bashrc
source ~/.bashrc
```

# Manual of usage
## rsub
### Show help
```
$ rsub -h
Usage: rsubstep [OPTION]
-h, -help, --help      print this help screen
-i                     Input files, e.g., -i file1 file2 file3...
-hjobid                Hold job
-debug                 y | n
```
### Job submit
```
$ rsub -i job.sh
qsub -g your-group-name glycine-1.sh
37.5000 JPY
Your job 4039071 ("glycine-1.sh") has been submitted
```

## rstat
This will print the qstat info and the directory the job was submitted to.
```
$ rstat
job-ID     prior   name       user         state submit/start at     queue                          jclass                         slots ja-task-ID 
------------------------------------------------------------------------------------------------------------------------------------------------
   4039071 0.55256 glycine-1. ufXXXXX      r     05/20/2025 13:03:13 all.q@r8n10                                                      40        


 4039071   glycine-1.    r 05/20/2025   13:03:13   40 /home/4/ufXXXXX/hoge/fuga/jobdirectory
```
