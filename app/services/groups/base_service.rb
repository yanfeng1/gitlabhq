module Groups
  class BaseService
    attr_accessor :group, :current_user, :params

    def initialize(group, user, params = {})
      @group, @current_user, @params = group, user, params.dup
    end

    def add_error_message(message)
      group.errors.add(:visibility_level, message)
    end
  end
end
