require 'rails_helper'

RSpec.describe User, type: :model do
  before { @user = FactoryGirl.build :user1 }
 
  it { should validate_presence_of :name }
  it { should validate_presence_of :email }
  it { should validate_presence_of :password }
  it { should validate_length_of(:name).is_at_most 50 }
  it { should validate_length_of(:email).is_at_most 255 }
  it { should validate_length_of(:password).is_at_least 6 }
  it { should have_secure_password }

  it 'email addresses should be saved as lower-case' do
    mixed_case_email = "Foo@ExAMPle.CoM"
    @user.email = mixed_case_email
    @user.save
    assert_equal mixed_case_email.downcase, @user.reload.email
  end

  context 'when email format is valid' do
    it 'should be valid' do
      valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                         first.last@foo.jp alice+bob@baz.cn]
      valid_addresses.each do |valid_address|
        should allow_value(valid_address).for(:email)
      end
    end
  end

  context 'when email format is invalid' do
    it 'should be invalid' do
      invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                           foo@bar_baz.com foo@bar+baz.com]
      invalid_addresses.each do |invalid_address|
        should_not allow_value(invalid_address).for(:email)
      end
    end
  end

  context "when email address is already taken" do
    before do
      user_with_same_email = @user.dup
      user_with_same_email.email = @user.email.upcase
      user_with_same_email.save
    end

    it { should_not be_valid }
  end
end
