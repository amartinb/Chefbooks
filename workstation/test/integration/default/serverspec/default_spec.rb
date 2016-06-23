require 'spec_helper'

describe 'workstation::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  describe package('tree') do
    it { should be_installed }
  end
  describe package('git') do
    it { should be_installed }
  end
  describe file('/etc/passwd') do
    it { should be_file }
  end
end
