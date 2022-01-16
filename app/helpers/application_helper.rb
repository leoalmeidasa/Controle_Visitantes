module ApplicationHelper
  def attach_visitor_photo(model, photo)
    PhotoAttachmentService.attach(model, photo) if photo.present?
  end
end
