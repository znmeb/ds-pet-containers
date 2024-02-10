
# The `ds-pet-containers` Project - Pet Containers for Data Science

M. Edward (Ed) Borasky <znmeb@znmeb.net>, 2024-02-10

## Update - 10 Feb 2024

New name, porting to Fedora Atomic Desktop / buildah / podman

## Update - 29 May 2019

I’m inching towards a release. I’m spending most of my time
self-dogfooding on two projects, one in sports analyics and another in
deep learning. As a result I’ve added some features:

1.  The `rstats` image now contains `Miniconda3`. There is a `conda`
    environment called `r-tensorflow`, which has the Python packages
    required by the RStudio deep learning stack plus `pytorch` and
    Jupyter. So you can bring up the services, browse to RStudio Server,
    log in, and then start up a Jupyter notebook server. Both Python 3
    and R notebooks work.
2.  I’ve gone back to `docker-compose` for starting up the services.
3.  The `rstats` command line now can do passwordless `sudo`, just like
    those fancy instances on AWS or Digital Ocean.
4.  I’m going to have autobuild images on Docker Hub. The `rstats` image
    is so big I don’t expect people to build it locally any more - it
    just takes too long.

## Update - 16 May 2019

1.  I’ve cleaned out the old docs inherited from Hack Oregon. That
    repository is still there and being maintained, so this fork will
    have its own docs in the near future.
2.  The reference implementation is Fedora Silverblue 30. I’m also
    testing on Clear Linux, another container-centric Linux distro made
    by my neighbors at Intel in Hillsboro, Oregon. It’s highly optimized
    for Intel processors, of course. It should work anywhere Docker
    runs. Even Windows 10 Pro. I hope. :-)
3.  PostgreSQL now goes to 11!
4.  The renaming stays - we are Silver Potato until somebody sends me a
    cease-and-desist letter.

## Update - 6 April 2019

You probably noticed the new name, `silver-potato`. I’ve been working a
lot with Fedora Silverblue and wanted something with “silver” in it, so
I asked GitHub to generate “memorable” project names. The second one it
came up with was `silver-potato` and I said, “OK, cool, done!” Then
today I did a Google search for “Silver Potato”. And …

<http://www.kaiju.com/bios/sil_01.htm>

So watch this space - there’s probably another rename coming.

## Update - 17 September 2018

I’m forking this project to clean it up for use outside of Hack Oregon.
There are a lot of things in there that are specific to Hack Oregon,
like the Amazon Linux image, that don’t make sense for other users.

My working test environments are Windows 10 Pro with Docker for Windows,
Arch Linux and Fedora Silverblue 29. This last - formerly known as
Fedora Ataomic Workstation - was the original inspiration for doing
this. The Silverblue environment is designed for a
“pet-container-centric” workload.

I’m rebuilding the documentation with Bookdown. That’s in the source now
but I haven’t published it anywhere. License will be Creative Commans
Attribution Share-Alike.
