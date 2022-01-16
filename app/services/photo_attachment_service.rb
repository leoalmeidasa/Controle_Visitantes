# frozen_string_literal: true

class PhotoAttachmentService
  class << self
    def attach(model, photo)
      base_64_image = photo.gsub!(/^data:.*,/, '')
      decoded_image = Base64.decode64(base_64_image)

      model.photo.attach(
        io: StringIO.new(decoded_image),
        filename: "visitor_photo_#{unique_string}.jpeg"
      )
    end

    private def unique_string
      SecureRandom.urlsafe_base64(10)
    end
  end
end