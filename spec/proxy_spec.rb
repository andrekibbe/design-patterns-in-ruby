require 'spec_helper'
require_relative '../lib/proxy'

describe "Proxy Pattern" do

  it "delegates all functionality to the real object" do
    hero = Hero.new
    computer = double("computer", queue: [], add: [], execute: true)
    proxy = ComputerProxy.new(computer, hero)

    expect(computer).to receive(:add)
    proxy.add(double("command"))

    hero.keywords << :computer
    expect(computer).to receive(:execute)
    proxy.execute
  end

end
