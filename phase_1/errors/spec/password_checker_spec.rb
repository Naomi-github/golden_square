require 'password_checker'

RSpec.describe PasswordChecker do
  it "returns true if password meets requirements" do
    password = PasswordChecker.new

    expect(password.check("Password")).to eq true
  end

  it 'fails if password below 8 characters' do
    password = PasswordChecker.new
    expect{ password.check("Dog") }.to raise_error "Invalid password, must be 8+ characters."
  end
end
