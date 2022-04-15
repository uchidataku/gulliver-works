# frozen_string_literal: true

module Public
  module V1
    # PrefectureSerializer
    class PrefectureSerializer < ActiveModel::Serializer
      attributes :id, :name
    end
  end
end
