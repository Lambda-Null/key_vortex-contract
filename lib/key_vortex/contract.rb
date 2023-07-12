# frozen_string_literal: true

require "key_vortex/record"
require "securerandom"

class SampleRecord < KeyVortex::Record
  field :sample, String, length: 10
end

class SampleRecordTwo < KeyVortex::Record
  field :sample, String, length: 10
end

require "rantly/rspec_extensions"

RSpec.shared_context "an adapter" do
  around(:each) do |s|
    property_of { string }.check(100) do |sample|
      @sample = sample
      s.run
    end
  end

  let(:store) do
    KeyVortex.new(
      subject,
      SampleRecord
    )
  end

  let(:record1) do
    SampleRecord.new(
      key: SecureRandom.uuid,
      sample: @sample
    )
  end

  let(:record2) do
    SampleRecordTwo.new(
      key: SecureRandom.uuid,
      sample: @sample
    )
  end

  it "stores and removes a key" do
    store.save(record1)
    expect(store.find(record1.key)).to eq(record1)
    subject.remove(record1.key)
    expect(store.find(record1.key)).to be_nil
  end

  it "recreates the class that was provided" do
    store.save(record1)
    expect(store.find(record1.key)).to be_a(SampleRecord)
    store.save(record2)
    expect(store.find(record2.key)).to be_a(SampleRecordTwo)
  end
end
