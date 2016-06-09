module Moods
  class Sad
    FACES = [
      '(>.<)',
      'v(ಥ ̯ ಥ)v',
      '(✖﹏✖)'
    ]

    def self.face
      ' ' + FACES.sample.colorize(:blue)
    end
  end
end
