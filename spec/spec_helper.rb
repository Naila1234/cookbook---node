require 'chefspec'
require 'chefspec/policyfile'

at_exit {ChefSpec::Coverage.report!} # report for testing (any recipes without unit testing, reports to the developer to write unit test )
