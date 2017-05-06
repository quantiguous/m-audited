module AuditHelper
  def audit_count(resource)
    count = resource.audits.count
    count > 0 ? count - 1 : 0
  end

  def version_ids(resource)
    version_array = []
    version = resource.audits.count
    while version >= 1
      version = version - 1
      version_array << ["Version " + version.to_s, version]
    end
    version_array
  end
  
  def old_values(values)
    if values.is_a?(Array)
      values[0] rescue nil
    else
      nil
    end
  end

  def new_values(values)
    if values.is_a?(Array)
      values[1] rescue nil
    else
      values
    end
  end
end