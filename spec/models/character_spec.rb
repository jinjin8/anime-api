require 'rails_helper'

describe Character do
  it { should belong_to :cartoon }
  it { should validate_presence_of :name }
  it { should validate_presence_of :powers }
end
