<!-- class Poll
  has_many :options
  has_many :responses
end

class Option
  belongs_to :poll
end

class Response
  belongs_to :option
  belongs_to :poll
end -->