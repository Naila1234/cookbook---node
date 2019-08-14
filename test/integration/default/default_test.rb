# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root'), :skip do
    it { should exist }
  end
end

# This is an example test, replace it with your own test.
# describe port(80), :skip do
#   it { should_not be_listening }
# end

describe port(80) do
  it { should be_listening }
end

#### TEST PROMISE #########
describe service ('nginx') do
 it {should be_enabled }
 it { should be_running }
end


# # here you are spinning a thread, so when one processes stop,
# others are still working and then you can get the status at the end. cmp # compare
describe http('http://localhost', enabled_remote_worker: true) do
  its('status'){ should cmp 502 }
end
# do a test to start

# do a tets to enable

# then do kitchen test
