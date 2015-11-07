module ApplicationHelper
  def bootstrap_flash_class(flash_type)
    { success: 'alert-success',
      error:   'alert-danger',
      failure:   'alert-danger',
      alert:   'alert-warning',
      notice:  'alert-success'
    }[flash_type.to_sym] || flash_type.to_s
  end
end
