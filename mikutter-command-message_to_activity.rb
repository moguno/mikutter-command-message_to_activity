#coding: utf-8

Plugin.create(:"mikutter-command-message_to_activity") {
  command(:to_activity,
          :name => "システムアクティビティにする",
          :condition => lambda { |opt| Plugin::Command[:HasMessage] },
          :visible => true,
          :role => :timeline) { |opt|
    opt.messages.each { |message|
      activity(:system, message[:message])
    }
  }
}
