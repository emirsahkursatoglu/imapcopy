=================================
= Installing imapsync on CentOS = 
=================================

There is one section for Centos 7 and one for Centos 6.

==============
== Centos 7 ==
==============

First install access to the Epel repository via yum:

  yum install epel-release

Then install imapsync and its dependencies:

  yum install imapsync

After installing imapsync, it should be able to work on your system.
A good test that shows also the basic example:

  imapsync

A live test:

  imapsync --testslive
  
Unit tests:

  imapsync --tests

==============
== Centos 6 ==
==============

This section has been tested with imapsync release 1.670

First, install access to the Epel repository
 
  wget http://dl.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
  rpm -Uvh epel-release-6-8.noarch.rpm

Then install imapsync and its dependencies:

 yum install imapsync

After installing imapsync, it should be able to work on your system.
A good test that shows also the basic example:

  imapsync

A live test:

  imapsync --testslive
  
Unit tests:

  imapsync --tests



