# frozen_string_literal: true

json.array! @post_tags, partial: 'post_tags/post_tag', as: :post_tag
