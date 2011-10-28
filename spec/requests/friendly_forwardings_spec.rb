require 'spec_helper'

describe "FriendlyForwardings" do
  it "should forward to the requested page after signin" do
    user = Factory(:user)
    visit edit_user_path(user)
    #O teste e redirecionado para a pagina de login.
    fill_in :email,    :with => user.email
    fill_in :password, :with => user.password
    click_button
    #O teste e redirecionado para a users/edit
    response.should render_template('users/edit')
  end
end
