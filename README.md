# Reproduce results of hash-routing paper (ACM SIGCOMM ICN '13)
This repository contains all the required data and code explain to reproduce
the results and plot the graphs presented in the paper:

L.Saino, I. Psaras and G. Pavlou, Hash-routing Schemes for Information Centric
Networking, in Proc. of the 3rd ACM SIGCOMM workshop on Information Centric
Networking (ICN'13), Hong Kong, China, August 2013.
[\[PDF\]](http://www.ee.ucl.ac.uk/~lsaino/publications/hashrouting-icn13.pdf),
[\[BibTex\]](http://www.ee.ucl.ac.uk/~lsaino/publications/hashrouting-icn13.bib)

## Installation and usage

The procedure presented here has been tested only on Ubuntu 12.04.
However, it should work fine on most recent versions as well.

First of all, you need to make sure you have al Icarus dependencies
installed. To do so, run the `setup.sh` script located in this directory.

    $ sh setup.sh

Depending on the configuration of your machine, you may need superuser access
to run it.

After all dependencies have been correctly installed you can run simulations
and reproduce results by running the `run.sh` script located in this directory. 

    $ sh run.sh

This script does not require superuser access. It will run all simulations
automatically, save all log files and plot all graphs of the paper.

The logs will be saved in the `logs` directory, while the graphs will be saved
in the `graphs` directory.

If you want to change the configuration of the program, e.g. the range of
parameters tested, the number of CPU cores used and so on, please look at the 
file `icarus/config.py`. It contains all the configuration parameters and it is
well commented.

## Note well
The code used to reproduce the results of the hash-routing paper is based on
an older version of the Icarus simulator which, although well tested and
fairly documented, is no longer maintained.
This code should therefore be used only to reproduce the results shown in the
paper. If you wish to run simulations using different parameters or implement
new models, it is recommended that you use the latest version of the Icarus
simulator, which you can download from the
[Icarus website](http://icarus-sim.github.io/) 

## Log file specifications
For each single scenario run, if `logging.LOG_EVERYTHING` configuration
variable is set to `True`, then the simulator generates four log files:

* `RESULTS_SCENARIO-ID_CACHE.txt`: Tab-separated values, one line per cache event (cache hit, server hit etc..)
* `RESULTS_SCENARIO-ID_LINK.txt`: Tab-separated values, one line per link event (link X traversed by content Y at time Z etc..)
* `RESULTS_SCENARIO-ID_STRETCH.txt` (off-path strategies only): Tab-separated values, path stretch for each content retrieval (useful for plotting stretch CDF)
* `RESULTS_SCENARIO-ID_DELAY.txt` (no cache and CEE+LRU strategies only): Tab-separated values, RTT for each content retrieval (useful for plotting RTT CDF)

In addition, regardless of the value of `logging.LOG_EVERYTHING`, the
simulator generates two summary files:

* `SUMMARY_CACHE_HIT_RATIO.txt`: each line reports the overall cache hit ratio of a single experiment
* `SUMMARY_NETWORK_LOAD.txt`: each line reports the overall link load of a single experiment

Each single experiment appends a line to each of these two files.
