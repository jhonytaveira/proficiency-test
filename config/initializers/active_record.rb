ActiveSupport.on_load(:active_record) do
  include ActiveRecord::Orderize
end

module ActiveRecord
  class Base
    def to_s
      try(:name) || try(:login)
    end
  end
end
