 module Moods
  class Happy
    FACES = [
      '(〃^∇^)ﾉ',
      'ヾ｜￣ー￣｜ﾉ',
      '(●‿●)',
      '( ͡° ͜ʖ ͡°)'
    ]

    def self.face
      ' ' + FACES.sample.colorize(:magenta)
    end
  end
end
