require 'xcjobs/distribute'

module XCJobs
  module Distribute

    class TestFairy < Rake::TaskLib
      include Rake::DSL if defined?(Rake::DSL)
      include Distribute

      # required
      attr_accessor :api_key
      attr_accessor :file

      # optional
      attr_accessor :symbols_file
      attr_accessor :testers_groups
      attr_accessor :metrics
      attr_accessor :max_duration
      attr_accessor :video
      attr_accessor :video_quality
      attr_accessor :video_rate
      attr_accessor :icon_watermark
      attr_accessor :comment

      attr_accessor :auto_update
      attr_accessor :notify


      def initialize()
        yield self if block_given?
        define
      end

      private

      def define
        namespace :distribute do
          desc 'upload IPA to TestFairy'
          task :testfairy do
            upload('http://app.testfairy.com/api/upload', form_data)
          end
        end
      end

      def form_data
        {}.tap do |fields|
          fields[:file]             = "@#{file}" if file
          fields[:api_key]          = api_key if api_key
          fields[:symbols_file]     = symbols_file if symbols_file
          fields[:testers_groups]   = testers_groups if testers_groups
          fields[:metrics]          = metrics if metrics
          fields[:"max-duration"]   = max_duration if max_duration
          fields[:video]            = video if video
          fields[:"video-quality"]  = video_quality if video_quality
          fields[:"video-rate"]     = video_rate if video_rate
          fields[:"icon-watermark"] = icon_watermark if icon_watermark
          fields[:comment]          = comment if comment
          fields[:"auto-update"]    = auto_update if auto_update
          fields[:notify]           = notify if notify
        end
      end
    end

  end
end
