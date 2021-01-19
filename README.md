# Utilities to run HiRep tests on Sunbird

Notice: the quality of the work done here 
is not stellar.
Speed vs Quality tradeoff.

This is a simple translation 
of what happens on the github CI
without Docker involved, 
but parallelized.

Each test case runs in its own repo.

## Sunbird typical workflow

``` bash
git clone https://github.com/mmesiti/hirep-test-sunbird.git
git clone https://github.com/claudiopica/HiRep.git
mkdir tests # 
./hirep-test-sunbird/main.sh  HiRep \
                             ./tests \
                             ./hirep-test-sunbird/script_header_sunbird_intel.sh \
                             spn-swansea-merge
              
cd tests
for script in script*.sh
do 
   sbatch $script
done
```
Wait until all jobs have run,
then

```bash
../hirep-test-sunbird/report.sh 
```
And look at the results.
Notice: `less -R` may help 
to visualise the content 
of the `out*.txt` files.

## Things one may want to change
* create your own job header 
  (à la `script_header_sunbird.sh` )
  with the right scheduler options 
  and right module loads.
* Checkout another branch,
  e.g. master, or a specific commit:
  just change the last argument passed to `main.sh`.

## Disclaimer

Things may fail, 
for exmample the SPN jobs
when choosing a branch 
that has no SPN capabilities.
