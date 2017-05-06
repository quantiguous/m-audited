module Audit
  module ControllerAdditions
    extend ActiveSupport::Concern
    
    def audits
      @record = modelKlass.unscoped.find(params[:id])
      @audit = @record.audits[params[:version_id].to_i]
      render '/audits/audits'
    end        

    private 
    
    def modelName
      self.class.name.sub("Controller", "").underscore.split('/').last.singularize
    end
    
    def modelKlass
      moduleName = self.class.name.include?("::") ? self.class.name.split("::").first : ""
      "#{moduleName}::#{modelName.classify}".constantize
    end
  end
end

# ActionController::Base.class_eval do
  # include Approval2::ControllerAdditions
# end
