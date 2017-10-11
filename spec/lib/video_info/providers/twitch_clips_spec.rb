# encoding: utf-8
require 'spec_helper'

describe VideoInfo::Providers::TwitchClips do
  describe 'twitch clips' do
    it 'should create an embeddable link' do
      expect(VideoInfo.new('https://clips.twitch.tv/TameRichAppleLitty').embed_url).to eq('//clips.twitch.tv/embed?clip=TameRichAppleLitty')
    end
  end
end
