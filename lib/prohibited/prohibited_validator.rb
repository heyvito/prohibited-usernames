if Gem::Specification::find_all_by_name('activerecord').any?
  require 'active_model'
  class ProhibitedValidator < ::ActiveModel::EachValidator
    def validate_each(record, attribute, value)
      if ProhibitedUsernames::include?(value)
        record.errors[attribute] << (options[:message] || "#{value} is reserved")
      end
    end
  end
end
