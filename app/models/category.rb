class Category
  include Mongoid::Document
  
   field:Name, type=>String
   field:Description , type=>String
  
   field:MetaKeywords  , type=>String
   field:MetaDescription  , type=>String
   field:MetaTitle  , type=>String
   field:SeName , type=>String
   field:ParentCategoryId   , type=>Integer
   
   field:Deleted  , type=>Boolean
   field:DisplayOrder  , type=>Integer
end
