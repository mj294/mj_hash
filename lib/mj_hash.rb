class MJ_Hash < Hash
  def initialize(parent = nil, key = nil)
    @parent = parent
    @key = key
    super()
  end  
  def [](key)
    if super(key)
      super(key)
    else  
      MJ_Hash.new(self, key)
    end  
  end  
  def []=(key,value)
    val = super(key, value)
    if @parent
      @parent[@key] = self
    end  
    val
  end  
end
