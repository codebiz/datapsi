class Client
  include Mongoid::Document
      
   field:Username, type=>String 
   field:Email,   type=>String
   field:Password,   type=>String
   field:PasswordFormatId,  type=>Integer
   field:PasswordSalt ,  type=>String
   field:FirstName ,  type=>String
   field:LastName ,  type=>String
   
   field:Company ,  type=>String
  
   field:City ,  type=>String
   field:Address1 ,  type=>String
   field:Address2 ,  type=>String
   field:ZipPostalCode ,  type=>String
   field:PhoneNumber ,  type=>String
   field:FaxNumber ,  type=>String
   field:AdminComment ,  type=>String
  
   field:VatNumber ,  type=>String
  
   field:CheckoutAttributes,   type=>String
   field:DiscountCouponCode,   type=>String
   field:GiftCardCouponCodes,   type=>String
   field:UseRewardPointsDuringCheckout,   type=>Boolean
  
   field:Active,   type=>Boolean
   field:Deleted ,  type=>Boolean
   field:IsSystemAccount, type=>Boolean
   
   #index :Username, unique=> true
   #index :Email, unique=> true
end
