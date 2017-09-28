require 'rails_helper'
  describe User do
    it "is valid with a firstname, password and email" do
      user = User.new(
        name: 'Tom',
        password: '01234567',
        email: 'test@example.com'
        )
      expect(user).to be_valid
    end

    it "is invalid without a name" do
      user = User.new(name: nil)
      user.valid?
      expect(user.errors[:name]).to include("を入力してください")
    end

    it "is invalid without a password" do
      user = User.new(password: nil)
      user.valid?
      expect(user.errors[:password]).to include("を入力してください")
    end

    it "is invalid without an email address" do
      user = User.new(email: nil)
      user.valid?
      expect(user.errors[:email]).to include("を入力してください")
    end

    it "is invalid with a duplicate email address" do
      User.create(
        name: 'Joe',
        password: '00000000',
        email: 'tester@example.com'
      )
      user = User.new(
        name: 'Jane',
        password: '00000000',
        email: 'tester@example.com'
      )
      user.valid?
      expect(user.errors[:email]).to include("はすでに存在します")
    end

 end