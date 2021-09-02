class Cart 
    attr_reader :item 

    def initilize
        @items=[] 
    end

    def add_items(product_id)
        @items << product_id
    end

    def empty?
        @items.empty?
    end
end
