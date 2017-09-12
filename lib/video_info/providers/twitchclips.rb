require 'iso8601'

class VideoInfo
  module Providers
    class TwitchClips < Provider
      def initialize(url, options = {})
        super(url, options)
        @url = @url.strip
      end

      def self.usable?(url)
        url =~ %r{(clips\.twitch\.tv\/videos\/.*)}x
      end

      def provider
        'TwitchClips'
      end

      def embed_url
        "//clips.twitch.tv/embed?clip=#{video_id}"
      end

      def thumbnail_small
        nil
      end

      def thumbnail_medium
        nil
      end

      def thumbnail_large
        nil
      end

      def thumbnail_maxres
        nil
      end

      private

      def _url_regex
        %r{videos\/([a-zA-Z0-9]*)}x
      end

      def _default_iframe_attributes
        { }
      end

      def _default_url_attributes
        {}
      end
    end
  end
end
