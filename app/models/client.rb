class Client
  include Mongoid::Document
      
   field:Username 
   field:Email
   field:Password
   field:PasswordFormatId
   field:PasswordSalt
   field:FirstName
   field:LastName
   
   field:Company
  
   field:City 
   field:Address1 
   field:Address2 
   field:ZipPostalCode 
   field:PhoneNumber 
   field:FaxNumber 
   field:AdminComment 
  
   field:VatNumber 
  
   field:CheckoutAttributes
   field:DiscountCouponCode
   field:GiftCardCouponCodes
   field:UseRewardPointsDuringCheckout
  
   field:Active
   field:Deleted 
   field:IsSystemAccount
   
   #index :Username, unique=> true
   #index :Email, unique=> true
end
