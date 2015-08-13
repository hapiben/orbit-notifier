require 'rails_helper'

RSpec.describe UserMailer, type: :mailer do
  let(:user) { create(:user) }
  let(:exchange_rate) { create(:exchange_rate_ph) }
  let(:mail) { UserMailer.email_alert(user, exchange_rate) }

  describe '#email_confirmation' do
    it 'sends user email confirmation url' do
      # expect(mail.subject).to eq I18n.t('mails.user.confirmation')
      # expect(mail.to).to include user.email
      # expect(mail.from).to include 'hello@taxikick.com'
      # expect(mail.body.encoded).to match confirm_path(user.confirmation_token)
    end
  end

end
