module Helpers

  def wait_for_ajax
    Timeout.timeout(Capybara.default_wait_time) do
      loop until finished_all_ajax_requests?
    end
  end

  def finished_all_ajax_requests?
    page.evaluate_script('jQuery.active').zero?
  end

  def print
    @file ||= 0
    @file += 1
    page.driver.render(@file.to_s + '.png', full: true)
  end

  def sign_in(user = current_user)
    visit root_path

    fill_in 'user_login', with: user.login
    fill_in 'user_password', with: user.password

    click_button 'Entrar'
  end
end

RSpec.configure do |config|
  config.include Helpers, type: :request
end
