*** Settings ***
Test Setup          Populate a Duffy node
Test Teardown       Release the Duffy nodes
Library             ../lib/DuffyLibrary.py
Resource            ../lib/basic.robot
Resource            lib.robot

*** Test cases ***
I build the RPM from a Pull Request
    I scratch build the spec file in CBS

