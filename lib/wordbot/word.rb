module Wordbot
  class Word
    attr_accessor :content, :pre, :post

    def initialize w
      @content = w

      if m = w.match(/(")(.*)(")/)
        @pre = m[1]
        @content = m[2]
        @post = m[3]
      end
    end

    def [] key
      self.send key
    end
  end
end
