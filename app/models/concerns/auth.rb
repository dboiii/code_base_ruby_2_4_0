module Auth
  extend ActiveSupport::Concern
  module ClassMethods
    def authenticate(email, password)
      user = self.find_by(email: email)
      if user && user.valid_password?(password)
        return user
      end
      false
    end
  end
end