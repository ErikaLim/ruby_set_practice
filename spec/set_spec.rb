require_relative '../lib/set'

describe Set do
  describe "size" do
    it "should return the size of the set" do
      setZero = Set.new
      expect(setZero.size).to eq 0
    end
  end

  describe "add" do
    it "should add an object to the set" do
      oldSet = Set.new
      oldSet.add("max")
      expect(oldSet.size).to eq 1
    end
    it "should add two objects to the set" do
      oldSet = Set.new
      oldSet.add("max")
      oldSet.add("eka")
      expect(oldSet.size).to eq 2
    end
  end

  describe "remove" do
    it "should remove an object from the set" do
      subject.add("foo")
      subject.add("bar")
      subject.remove("bar")
      expect(subject.size).to eq 1
    end
    it "should remove two objects from the set" do
      subject.add("foo")
      subject.add("bar")
      subject.remove("bar")
      subject.remove("foo")
      expect(subject.size).to eq 0
    end
  end

  describe "is_member" do
    it "should be true if the object is part of the set" do
      subject.add("foo")
      expect(subject.is_member("foo")).to be true
    end

    it "should be false if the object is NOT part of the set" do
      expect(subject.is_member("bar")).to be false
    end

    it "should be false if a member is removed from the set" do
      subject.add("foo")
      subject.add("bar")
      subject.remove("foo")
      expect(subject.is_member("foo")).to be false
    end
  end


end
