# frozen_string_literal: true
require 'rails_helper'

describe Item do

  it 'should do something for test' do
    (1 + 1).should == 2
  end

  it 'validates the name and makes sure it is not empty' do
    item = Item.new(name: '')
    item.valid?
    item.errors[:name].should_not be_empty
  end

  it 'validates the name and makes sure it is not empty' do
    item = Item.new(name: '')
    item.valid?
    item.errors[:name].should_not be_empty
  end

end