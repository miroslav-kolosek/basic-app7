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

    describe "#message 2" do
      it "returns a valid message" do
        item = Item.create(name: 'Samsung')
        expect(item.message).to eq "Item name is Samsung"
      end
    end

    describe "#message 3" do
      it "returns a valid message" do
        item = Item.create(name: 'Xiaomi')
        expect(item.message).to eq "Item name is Xiaomi"
      end
    end

    describe "#message 4" do
      it "returns a valid message" do
        item = Item.create(name: 'Test')
        expect(item.message).to eq "Item name is Test"
      end
    end

    describe "#message 5" do
      it "returns a valid message" do
        item = Item.create(name: 'Test123')
        expect(item.message).to eq "Item name is Test123"
      end
    end

    describe "#message 6" do
      it "returns a valid message" do
        item = Item.create(name: 'Test12345')
        expect(item.message).to eq "Item name is Test12345"
      end
    end

    describe "#message 7" do
      it "returns a valid message" do
        item = Item.create(name: 'Test7')
        expect(item.message).to eq "Item name is Test7"
      end
    end

    describe "#message 8" do
      it "returns a valid message" do
        item = Item.create(name: 'Test8')
        expect(item.message).to eq "Item name is Test8"
      end
    end

    describe "#message 9" do
      it "returns a valid message" do
        item = Item.create(name: 'Test9')
        expect(item.message).to eq "Item name is Test9"
      end
    end

    describe "#message 10" do
      it "returns a valid message" do
        item = Item.create(name: 'Test10')
        expect(item.message).to eq "Item name is Test10"
      end
    end
  end
end