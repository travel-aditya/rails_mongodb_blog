class InvalidReplyUser    < StandardError ; end

class EmailReceive
  @queue = :incoming_email_queue

  def self.perform(from, to, subject, body)
    user = User.find('53f498b95ab38e0976000003') 
    if user.nil?
      raise InvalidReplyUser, "User with email = #{from} is not a member of the app."
    end

    params = {
      :body     => body,
      :to       => to,
      :subject  => subject,
      :from     => from
    }

    message = user.messages.new(params)
    unless message.save
      raise RuntimeError, "Unable to save message. Errors: #{message.errors.inspect}"
    end
  end
end