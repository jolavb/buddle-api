class MessagesController < ApplicationController

    def service_inquiry
        MessagesMailer.with(params).service_message.deliver_now
    end


end
