feature 'User sign up' do
  scenario 'I can sign up as a new user' do
    expect { sign_up }.to change(User, :count).by(1)
    expect(page).to have_content('Welcome, Jack Dopeyman!')
    expect(User.first.email).to eq('jackdopeyman@hotmail.com')
  end

  scenario 'incorrect confirmation does not create user' do
    expect {sign_up(password_confirmation: '123')}.to change(User, :count).by(0)
  end

  scenario 'with a password that does not match' do
    expect { sign_up(password_confirmation: '123') }.not_to change(User, :count)
    expect(current_path).to eq('/users') # current_path is a helper provided by Capybara
    expect(page).to have_content 'Password and confirmation password do not match'
  end
end
