## Resubmission
This is a resubmission. In this version I have:

* Converted the TITLE title to title case.
* Fixed the spelling in DESCRIPTION
* Added angled brackets to the URL in DESCRIPTION
* Added an example

Please notes, There are two false positive spelling mistakes:

* IMEI (International Mobile Equipment Identity)
* Luhn (Named after Hans P. Luhn)

## Test environment
* local CentOS 7, R 3.4.3 and R 3.5.0
* Ubuntu 14.04.5 LTS (on travis-ci), R (rel) 3.5.0, R (prev) 3.4.3, R (dev) 3.6.0
* OSX (on travis-ci), R (rel) 3.5.0, R (prev) 3.4.3, R (dev) 3.6.0
* Windows (on AppVeyor), R 3.5.1

## R CMD check results
There were no ERRORs or WARNINGs

There was 1 NOTE:

>* checking DESCRIPTION meta-information ... NOTE
> Malformed Description field: should contain one or more complete sentences.

DESCRIPTION looks OK to me

## Dependencies
There are no downstream dependencies for this package

## Code Coverage
100% coverage according to covr

