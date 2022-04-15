# frozen_string_literal: true

module Public
  module V1
    # PrefecturesController
    class PrefecturesController < PublicController
      def index
        @prefectures = Prefecture.all
        render json: @prefectures
      end
    end
  end
end
