require 'rails_helper'

RSpec.describe Item, type: :model do
  describe "Attributes" do
    subject { Item.column_names }

    it { is_expected.to include "name" }
  end

  describe "Methods" do
    describe "#message" do
      it "returns a valid message" do
        item = Item.create(name: 'iPhone')
        expect(item.message).to eq "Item name is iPhone"
      end
    end

    describe "#full_message" do
      it "returns a full_message" do
        item = Item.create(name: 'iPhone')
        expect(item.full_message).to eq "Full message: Item name is iPhone   and id is " +  item.id.to_s
      end
    end

    describe "#message main 1" do
      it "returns a valid message" do
        item = Item.create(name: 'Main1')
        expect(item.message).to eq "Item name is Main1"
      end
    end
  end
end