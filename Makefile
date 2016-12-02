.PHONY: rpm

WORKSPACE ?= .

test-dryrun:
	pybot --dryrun .

test: test-dryrun
	pybot tests

rpm:
	pybot --outputdir $(WORKSPACE)/results/individual/rpm rpm/pullrequest.robot

rpm-dryrun:
	pybot --outputdir $(WORKSPACE)/results/individual/rpm --loglevel DEBUG --dryrun rpm

facter: rpm
	true
#	pybot --outputdir $(WORKSPACE)/results/individual/$@ --loglevel DEBUG $@

rebot:
	rebot -o $(WORKSPACE)/results/ -x $(WORKSPACE)/results/report.xml $(WORKSPACE)/results/individual/*/*.xml
