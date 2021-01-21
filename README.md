# High-Throughput-Computing---Simple-job
In this repo you can find a set of files that will allow you to submit jobs to a HTC cluster

This is an academic work where i have to split a powerfull task in small tasks to run them in parallel with other nodes.
In this work i have to reduce the resolution of a mp4 video. This job is faster if we split the video and resizing the video in different machines in parallel.
So i let the config of each task in this repo.
The first task is split the video in three parts, after that are created 3 tasks to resize the video in 3 different machines and the last taks is the join of the resized parts
