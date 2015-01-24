require 'spec_helper'
require_relative '../lib/proxy'

describe "Proxy Pattern" do

  it "delegates all functionality to the real object" do
    computer = double("computer", queue: [], add: [], execute: true)
    proxy = ComputerProxy.new(computer)

    expect(computer).to receive(:add)
    proxy.add(double("command"))

    expect(computer).to receive(:execute)
    proxy.execute
  end

end
