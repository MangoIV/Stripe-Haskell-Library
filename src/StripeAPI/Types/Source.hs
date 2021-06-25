{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema Source
module StripeAPI.Types.Source where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified StripeAPI.Common
import StripeAPI.TypeAlias
import {-# SOURCE #-} StripeAPI.Types.Address
import {-# SOURCE #-} StripeAPI.Types.SourceCodeVerificationFlow
import {-# SOURCE #-} StripeAPI.Types.SourceOrder
import {-# SOURCE #-} StripeAPI.Types.SourceOwner
import {-# SOURCE #-} StripeAPI.Types.SourceReceiverFlow
import {-# SOURCE #-} StripeAPI.Types.SourceRedirectFlow
import {-# SOURCE #-} StripeAPI.Types.SourceTypeAchCreditTransfer
import {-# SOURCE #-} StripeAPI.Types.SourceTypeAchDebit
import {-# SOURCE #-} StripeAPI.Types.SourceTypeAcssDebit
import {-# SOURCE #-} StripeAPI.Types.SourceTypeAlipay
import {-# SOURCE #-} StripeAPI.Types.SourceTypeAuBecsDebit
import {-# SOURCE #-} StripeAPI.Types.SourceTypeBancontact
import {-# SOURCE #-} StripeAPI.Types.SourceTypeCard
import {-# SOURCE #-} StripeAPI.Types.SourceTypeCardPresent
import {-# SOURCE #-} StripeAPI.Types.SourceTypeEps
import {-# SOURCE #-} StripeAPI.Types.SourceTypeGiropay
import {-# SOURCE #-} StripeAPI.Types.SourceTypeIdeal
import {-# SOURCE #-} StripeAPI.Types.SourceTypeKlarna
import {-# SOURCE #-} StripeAPI.Types.SourceTypeMultibanco
import {-# SOURCE #-} StripeAPI.Types.SourceTypeP24
import {-# SOURCE #-} StripeAPI.Types.SourceTypeSepaDebit
import {-# SOURCE #-} StripeAPI.Types.SourceTypeSofort
import {-# SOURCE #-} StripeAPI.Types.SourceTypeThreeDSecure
import {-# SOURCE #-} StripeAPI.Types.SourceTypeWechat
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.source@ in the specification.
--
-- \`Source\` objects allow you to accept a variety of payment methods. They
-- represent a customer\'s payment instrument, and can be used with the Stripe API
-- just like a \`Card\` object: once chargeable, they can be charged, or can be
-- attached to customers.
--
-- Related guides: [Sources API](https:\/\/stripe.com\/docs\/sources) and [Sources & Customers](https:\/\/stripe.com\/docs\/sources\/customers).
data Source = Source
  { -- | ach_credit_transfer
    sourceAchCreditTransfer :: (GHC.Maybe.Maybe SourceTypeAchCreditTransfer),
    -- | ach_debit
    sourceAchDebit :: (GHC.Maybe.Maybe SourceTypeAchDebit),
    -- | acss_debit
    sourceAcssDebit :: (GHC.Maybe.Maybe SourceTypeAcssDebit),
    -- | alipay
    sourceAlipay :: (GHC.Maybe.Maybe SourceTypeAlipay),
    -- | amount: A positive integer in the smallest currency unit (that is, 100 cents for \$1.00, or 1 for ¥1, Japanese Yen being a zero-decimal currency) representing the total amount associated with the source. This is the amount for which the source will be chargeable once ready. Required for \`single_use\` sources.
    sourceAmount :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | au_becs_debit
    sourceAuBecsDebit :: (GHC.Maybe.Maybe SourceTypeAuBecsDebit),
    -- | bancontact
    sourceBancontact :: (GHC.Maybe.Maybe SourceTypeBancontact),
    -- | card
    sourceCard :: (GHC.Maybe.Maybe SourceTypeCard),
    -- | card_present
    sourceCardPresent :: (GHC.Maybe.Maybe SourceTypeCardPresent),
    -- | client_secret: The client secret of the source. Used for client-side retrieval using a publishable key.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceClientSecret :: Data.Text.Internal.Text,
    -- | code_verification:
    sourceCodeVerification :: (GHC.Maybe.Maybe SourceCodeVerificationFlow),
    -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
    sourceCreated :: GHC.Types.Int,
    -- | currency: Three-letter [ISO code for the currency](https:\/\/stripe.com\/docs\/currencies) associated with the source. This is the currency for which the source will be chargeable once ready. Required for \`single_use\` sources.
    sourceCurrency :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | customer: The ID of the customer to which this source is attached. This will not be present when the source has not been attached to a customer.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceCustomer :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | eps
    sourceEps :: (GHC.Maybe.Maybe SourceTypeEps),
    -- | flow: The authentication \`flow\` of the source. \`flow\` is one of \`redirect\`, \`receiver\`, \`code_verification\`, \`none\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceFlow :: Data.Text.Internal.Text,
    -- | giropay
    sourceGiropay :: (GHC.Maybe.Maybe SourceTypeGiropay),
    -- | id: Unique identifier for the object.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceId :: Data.Text.Internal.Text,
    -- | ideal
    sourceIdeal :: (GHC.Maybe.Maybe SourceTypeIdeal),
    -- | klarna
    sourceKlarna :: (GHC.Maybe.Maybe SourceTypeKlarna),
    -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
    sourceLivemode :: GHC.Types.Bool,
    -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sourceMetadata :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object),
    -- | multibanco
    sourceMultibanco :: (GHC.Maybe.Maybe SourceTypeMultibanco),
    -- | owner: Information about the owner of the payment instrument that may be used or required by particular source types.
    sourceOwner :: (GHC.Maybe.Maybe SourceOwner'),
    -- | p24
    sourceP24 :: (GHC.Maybe.Maybe SourceTypeP24),
    -- | receiver:
    sourceReceiver :: (GHC.Maybe.Maybe SourceReceiverFlow),
    -- | redirect:
    sourceRedirect :: (GHC.Maybe.Maybe SourceRedirectFlow),
    -- | sepa_debit
    sourceSepaDebit :: (GHC.Maybe.Maybe SourceTypeSepaDebit),
    -- | sofort
    sourceSofort :: (GHC.Maybe.Maybe SourceTypeSofort),
    -- | source_order:
    sourceSourceOrder :: (GHC.Maybe.Maybe SourceOrder),
    -- | statement_descriptor: Extra information about a source. This will appear on your customer\'s statement every time you charge the source.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceStatementDescriptor :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | status: The status of the source, one of \`canceled\`, \`chargeable\`, \`consumed\`, \`failed\`, or \`pending\`. Only \`chargeable\` sources can be used to create a charge.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceStatus :: Data.Text.Internal.Text,
    -- | three_d_secure
    sourceThreeDSecure :: (GHC.Maybe.Maybe SourceTypeThreeDSecure),
    -- | type: The \`type\` of the source. The \`type\` is a payment method, one of \`ach_credit_transfer\`, \`ach_debit\`, \`alipay\`, \`bancontact\`, \`card\`, \`card_present\`, \`eps\`, \`giropay\`, \`ideal\`, \`multibanco\`, \`klarna\`, \`p24\`, \`sepa_debit\`, \`sofort\`, \`three_d_secure\`, or \`wechat\`. An additional hash is included on the source with a name matching this value. It contains additional information specific to the [payment method](https:\/\/stripe.com\/docs\/sources) used.
    sourceType :: SourceType',
    -- | usage: Either \`reusable\` or \`single_use\`. Whether this source should be reusable or not. Some source types may or may not be reusable by construction, while others may leave the option at creation. If an incompatible value is passed, an error will be returned.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceUsage :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | wechat
    sourceWechat :: (GHC.Maybe.Maybe SourceTypeWechat)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON Source where
  toJSON obj = Data.Aeson.Types.Internal.object ("ach_credit_transfer" Data.Aeson.Types.ToJSON..= sourceAchCreditTransfer obj : "ach_debit" Data.Aeson.Types.ToJSON..= sourceAchDebit obj : "acss_debit" Data.Aeson.Types.ToJSON..= sourceAcssDebit obj : "alipay" Data.Aeson.Types.ToJSON..= sourceAlipay obj : "amount" Data.Aeson.Types.ToJSON..= sourceAmount obj : "au_becs_debit" Data.Aeson.Types.ToJSON..= sourceAuBecsDebit obj : "bancontact" Data.Aeson.Types.ToJSON..= sourceBancontact obj : "card" Data.Aeson.Types.ToJSON..= sourceCard obj : "card_present" Data.Aeson.Types.ToJSON..= sourceCardPresent obj : "client_secret" Data.Aeson.Types.ToJSON..= sourceClientSecret obj : "code_verification" Data.Aeson.Types.ToJSON..= sourceCodeVerification obj : "created" Data.Aeson.Types.ToJSON..= sourceCreated obj : "currency" Data.Aeson.Types.ToJSON..= sourceCurrency obj : "customer" Data.Aeson.Types.ToJSON..= sourceCustomer obj : "eps" Data.Aeson.Types.ToJSON..= sourceEps obj : "flow" Data.Aeson.Types.ToJSON..= sourceFlow obj : "giropay" Data.Aeson.Types.ToJSON..= sourceGiropay obj : "id" Data.Aeson.Types.ToJSON..= sourceId obj : "ideal" Data.Aeson.Types.ToJSON..= sourceIdeal obj : "klarna" Data.Aeson.Types.ToJSON..= sourceKlarna obj : "livemode" Data.Aeson.Types.ToJSON..= sourceLivemode obj : "metadata" Data.Aeson.Types.ToJSON..= sourceMetadata obj : "multibanco" Data.Aeson.Types.ToJSON..= sourceMultibanco obj : "owner" Data.Aeson.Types.ToJSON..= sourceOwner obj : "p24" Data.Aeson.Types.ToJSON..= sourceP24 obj : "receiver" Data.Aeson.Types.ToJSON..= sourceReceiver obj : "redirect" Data.Aeson.Types.ToJSON..= sourceRedirect obj : "sepa_debit" Data.Aeson.Types.ToJSON..= sourceSepaDebit obj : "sofort" Data.Aeson.Types.ToJSON..= sourceSofort obj : "source_order" Data.Aeson.Types.ToJSON..= sourceSourceOrder obj : "statement_descriptor" Data.Aeson.Types.ToJSON..= sourceStatementDescriptor obj : "status" Data.Aeson.Types.ToJSON..= sourceStatus obj : "three_d_secure" Data.Aeson.Types.ToJSON..= sourceThreeDSecure obj : "type" Data.Aeson.Types.ToJSON..= sourceType obj : "usage" Data.Aeson.Types.ToJSON..= sourceUsage obj : "wechat" Data.Aeson.Types.ToJSON..= sourceWechat obj : "object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "source" : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("ach_credit_transfer" Data.Aeson.Types.ToJSON..= sourceAchCreditTransfer obj) GHC.Base.<> (("ach_debit" Data.Aeson.Types.ToJSON..= sourceAchDebit obj) GHC.Base.<> (("acss_debit" Data.Aeson.Types.ToJSON..= sourceAcssDebit obj) GHC.Base.<> (("alipay" Data.Aeson.Types.ToJSON..= sourceAlipay obj) GHC.Base.<> (("amount" Data.Aeson.Types.ToJSON..= sourceAmount obj) GHC.Base.<> (("au_becs_debit" Data.Aeson.Types.ToJSON..= sourceAuBecsDebit obj) GHC.Base.<> (("bancontact" Data.Aeson.Types.ToJSON..= sourceBancontact obj) GHC.Base.<> (("card" Data.Aeson.Types.ToJSON..= sourceCard obj) GHC.Base.<> (("card_present" Data.Aeson.Types.ToJSON..= sourceCardPresent obj) GHC.Base.<> (("client_secret" Data.Aeson.Types.ToJSON..= sourceClientSecret obj) GHC.Base.<> (("code_verification" Data.Aeson.Types.ToJSON..= sourceCodeVerification obj) GHC.Base.<> (("created" Data.Aeson.Types.ToJSON..= sourceCreated obj) GHC.Base.<> (("currency" Data.Aeson.Types.ToJSON..= sourceCurrency obj) GHC.Base.<> (("customer" Data.Aeson.Types.ToJSON..= sourceCustomer obj) GHC.Base.<> (("eps" Data.Aeson.Types.ToJSON..= sourceEps obj) GHC.Base.<> (("flow" Data.Aeson.Types.ToJSON..= sourceFlow obj) GHC.Base.<> (("giropay" Data.Aeson.Types.ToJSON..= sourceGiropay obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= sourceId obj) GHC.Base.<> (("ideal" Data.Aeson.Types.ToJSON..= sourceIdeal obj) GHC.Base.<> (("klarna" Data.Aeson.Types.ToJSON..= sourceKlarna obj) GHC.Base.<> (("livemode" Data.Aeson.Types.ToJSON..= sourceLivemode obj) GHC.Base.<> (("metadata" Data.Aeson.Types.ToJSON..= sourceMetadata obj) GHC.Base.<> (("multibanco" Data.Aeson.Types.ToJSON..= sourceMultibanco obj) GHC.Base.<> (("owner" Data.Aeson.Types.ToJSON..= sourceOwner obj) GHC.Base.<> (("p24" Data.Aeson.Types.ToJSON..= sourceP24 obj) GHC.Base.<> (("receiver" Data.Aeson.Types.ToJSON..= sourceReceiver obj) GHC.Base.<> (("redirect" Data.Aeson.Types.ToJSON..= sourceRedirect obj) GHC.Base.<> (("sepa_debit" Data.Aeson.Types.ToJSON..= sourceSepaDebit obj) GHC.Base.<> (("sofort" Data.Aeson.Types.ToJSON..= sourceSofort obj) GHC.Base.<> (("source_order" Data.Aeson.Types.ToJSON..= sourceSourceOrder obj) GHC.Base.<> (("statement_descriptor" Data.Aeson.Types.ToJSON..= sourceStatementDescriptor obj) GHC.Base.<> (("status" Data.Aeson.Types.ToJSON..= sourceStatus obj) GHC.Base.<> (("three_d_secure" Data.Aeson.Types.ToJSON..= sourceThreeDSecure obj) GHC.Base.<> (("type" Data.Aeson.Types.ToJSON..= sourceType obj) GHC.Base.<> (("usage" Data.Aeson.Types.ToJSON..= sourceUsage obj) GHC.Base.<> (("wechat" Data.Aeson.Types.ToJSON..= sourceWechat obj) GHC.Base.<> ("object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "source")))))))))))))))))))))))))))))))))))))

instance Data.Aeson.Types.FromJSON.FromJSON Source where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "Source" (\obj -> (((((((((((((((((((((((((((((((((((GHC.Base.pure Source GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ach_credit_transfer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ach_debit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "acss_debit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "alipay")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "au_becs_debit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bancontact")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "card_present")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "client_secret")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "code_verification")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "eps")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "flow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "giropay")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "ideal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "klarna")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "multibanco")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "owner")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "p24")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "receiver")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "redirect")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "sepa_debit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "sofort")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "source_order")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "statement_descriptor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "three_d_secure")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "usage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "wechat"))

-- | Create a new 'Source' with all required fields.
mkSource ::
  -- | 'sourceClientSecret'
  Data.Text.Internal.Text ->
  -- | 'sourceCreated'
  GHC.Types.Int ->
  -- | 'sourceFlow'
  Data.Text.Internal.Text ->
  -- | 'sourceId'
  Data.Text.Internal.Text ->
  -- | 'sourceLivemode'
  GHC.Types.Bool ->
  -- | 'sourceStatus'
  Data.Text.Internal.Text ->
  -- | 'sourceType'
  SourceType' ->
  Source
mkSource sourceClientSecret sourceCreated sourceFlow sourceId sourceLivemode sourceStatus sourceType =
  Source
    { sourceAchCreditTransfer = GHC.Maybe.Nothing,
      sourceAchDebit = GHC.Maybe.Nothing,
      sourceAcssDebit = GHC.Maybe.Nothing,
      sourceAlipay = GHC.Maybe.Nothing,
      sourceAmount = GHC.Maybe.Nothing,
      sourceAuBecsDebit = GHC.Maybe.Nothing,
      sourceBancontact = GHC.Maybe.Nothing,
      sourceCard = GHC.Maybe.Nothing,
      sourceCardPresent = GHC.Maybe.Nothing,
      sourceClientSecret = sourceClientSecret,
      sourceCodeVerification = GHC.Maybe.Nothing,
      sourceCreated = sourceCreated,
      sourceCurrency = GHC.Maybe.Nothing,
      sourceCustomer = GHC.Maybe.Nothing,
      sourceEps = GHC.Maybe.Nothing,
      sourceFlow = sourceFlow,
      sourceGiropay = GHC.Maybe.Nothing,
      sourceId = sourceId,
      sourceIdeal = GHC.Maybe.Nothing,
      sourceKlarna = GHC.Maybe.Nothing,
      sourceLivemode = sourceLivemode,
      sourceMetadata = GHC.Maybe.Nothing,
      sourceMultibanco = GHC.Maybe.Nothing,
      sourceOwner = GHC.Maybe.Nothing,
      sourceP24 = GHC.Maybe.Nothing,
      sourceReceiver = GHC.Maybe.Nothing,
      sourceRedirect = GHC.Maybe.Nothing,
      sourceSepaDebit = GHC.Maybe.Nothing,
      sourceSofort = GHC.Maybe.Nothing,
      sourceSourceOrder = GHC.Maybe.Nothing,
      sourceStatementDescriptor = GHC.Maybe.Nothing,
      sourceStatus = sourceStatus,
      sourceThreeDSecure = GHC.Maybe.Nothing,
      sourceType = sourceType,
      sourceUsage = GHC.Maybe.Nothing,
      sourceWechat = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @components.schemas.source.properties.owner.anyOf@ in the specification.
--
-- Information about the owner of the payment instrument that may be used or required by particular source types.
data SourceOwner' = SourceOwner'
  { -- | address: Owner\'s address.
    sourceOwner'Address :: (GHC.Maybe.Maybe SourceOwner'Address'),
    -- | email: Owner\'s email address.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceOwner'Email :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | name: Owner\'s full name.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceOwner'Name :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | phone: Owner\'s phone number (including extension).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceOwner'Phone :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | verified_address: Verified owner\'s address. Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
    sourceOwner'VerifiedAddress :: (GHC.Maybe.Maybe SourceOwner'VerifiedAddress'),
    -- | verified_email: Verified owner\'s email address. Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceOwner'VerifiedEmail :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | verified_name: Verified owner\'s full name. Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceOwner'VerifiedName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | verified_phone: Verified owner\'s phone number (including extension). Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceOwner'VerifiedPhone :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SourceOwner' where
  toJSON obj = Data.Aeson.Types.Internal.object ("address" Data.Aeson.Types.ToJSON..= sourceOwner'Address obj : "email" Data.Aeson.Types.ToJSON..= sourceOwner'Email obj : "name" Data.Aeson.Types.ToJSON..= sourceOwner'Name obj : "phone" Data.Aeson.Types.ToJSON..= sourceOwner'Phone obj : "verified_address" Data.Aeson.Types.ToJSON..= sourceOwner'VerifiedAddress obj : "verified_email" Data.Aeson.Types.ToJSON..= sourceOwner'VerifiedEmail obj : "verified_name" Data.Aeson.Types.ToJSON..= sourceOwner'VerifiedName obj : "verified_phone" Data.Aeson.Types.ToJSON..= sourceOwner'VerifiedPhone obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("address" Data.Aeson.Types.ToJSON..= sourceOwner'Address obj) GHC.Base.<> (("email" Data.Aeson.Types.ToJSON..= sourceOwner'Email obj) GHC.Base.<> (("name" Data.Aeson.Types.ToJSON..= sourceOwner'Name obj) GHC.Base.<> (("phone" Data.Aeson.Types.ToJSON..= sourceOwner'Phone obj) GHC.Base.<> (("verified_address" Data.Aeson.Types.ToJSON..= sourceOwner'VerifiedAddress obj) GHC.Base.<> (("verified_email" Data.Aeson.Types.ToJSON..= sourceOwner'VerifiedEmail obj) GHC.Base.<> (("verified_name" Data.Aeson.Types.ToJSON..= sourceOwner'VerifiedName obj) GHC.Base.<> ("verified_phone" Data.Aeson.Types.ToJSON..= sourceOwner'VerifiedPhone obj))))))))

instance Data.Aeson.Types.FromJSON.FromJSON SourceOwner' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceOwner'" (\obj -> (((((((GHC.Base.pure SourceOwner' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verified_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verified_email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verified_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verified_phone"))

-- | Create a new 'SourceOwner'' with all required fields.
mkSourceOwner' :: SourceOwner'
mkSourceOwner' =
  SourceOwner'
    { sourceOwner'Address = GHC.Maybe.Nothing,
      sourceOwner'Email = GHC.Maybe.Nothing,
      sourceOwner'Name = GHC.Maybe.Nothing,
      sourceOwner'Phone = GHC.Maybe.Nothing,
      sourceOwner'VerifiedAddress = GHC.Maybe.Nothing,
      sourceOwner'VerifiedEmail = GHC.Maybe.Nothing,
      sourceOwner'VerifiedName = GHC.Maybe.Nothing,
      sourceOwner'VerifiedPhone = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @components.schemas.source.properties.owner.anyOf.properties.address.anyOf@ in the specification.
--
-- Owner\\\'s address.
data SourceOwner'Address' = SourceOwner'Address'
  { -- | city: City, district, suburb, town, or village.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceOwner'Address'City :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | country: Two-letter country code ([ISO 3166-1 alpha-2](https:\/\/en.wikipedia.org\/wiki\/ISO_3166-1_alpha-2)).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceOwner'Address'Country :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | line1: Address line 1 (e.g., street, PO Box, or company name).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceOwner'Address'Line1 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | line2: Address line 2 (e.g., apartment, suite, unit, or building).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceOwner'Address'Line2 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | postal_code: ZIP or postal code.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceOwner'Address'PostalCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | state: State, county, province, or region.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceOwner'Address'State :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SourceOwner'Address' where
  toJSON obj = Data.Aeson.Types.Internal.object ("city" Data.Aeson.Types.ToJSON..= sourceOwner'Address'City obj : "country" Data.Aeson.Types.ToJSON..= sourceOwner'Address'Country obj : "line1" Data.Aeson.Types.ToJSON..= sourceOwner'Address'Line1 obj : "line2" Data.Aeson.Types.ToJSON..= sourceOwner'Address'Line2 obj : "postal_code" Data.Aeson.Types.ToJSON..= sourceOwner'Address'PostalCode obj : "state" Data.Aeson.Types.ToJSON..= sourceOwner'Address'State obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("city" Data.Aeson.Types.ToJSON..= sourceOwner'Address'City obj) GHC.Base.<> (("country" Data.Aeson.Types.ToJSON..= sourceOwner'Address'Country obj) GHC.Base.<> (("line1" Data.Aeson.Types.ToJSON..= sourceOwner'Address'Line1 obj) GHC.Base.<> (("line2" Data.Aeson.Types.ToJSON..= sourceOwner'Address'Line2 obj) GHC.Base.<> (("postal_code" Data.Aeson.Types.ToJSON..= sourceOwner'Address'PostalCode obj) GHC.Base.<> ("state" Data.Aeson.Types.ToJSON..= sourceOwner'Address'State obj))))))

instance Data.Aeson.Types.FromJSON.FromJSON SourceOwner'Address' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceOwner'Address'" (\obj -> (((((GHC.Base.pure SourceOwner'Address' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))

-- | Create a new 'SourceOwner'Address'' with all required fields.
mkSourceOwner'Address' :: SourceOwner'Address'
mkSourceOwner'Address' =
  SourceOwner'Address'
    { sourceOwner'Address'City = GHC.Maybe.Nothing,
      sourceOwner'Address'Country = GHC.Maybe.Nothing,
      sourceOwner'Address'Line1 = GHC.Maybe.Nothing,
      sourceOwner'Address'Line2 = GHC.Maybe.Nothing,
      sourceOwner'Address'PostalCode = GHC.Maybe.Nothing,
      sourceOwner'Address'State = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @components.schemas.source.properties.owner.anyOf.properties.verified_address.anyOf@ in the specification.
--
-- Verified owner\\\'s address. Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
data SourceOwner'VerifiedAddress' = SourceOwner'VerifiedAddress'
  { -- | city: City, district, suburb, town, or village.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceOwner'VerifiedAddress'City :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | country: Two-letter country code ([ISO 3166-1 alpha-2](https:\/\/en.wikipedia.org\/wiki\/ISO_3166-1_alpha-2)).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceOwner'VerifiedAddress'Country :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | line1: Address line 1 (e.g., street, PO Box, or company name).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceOwner'VerifiedAddress'Line1 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | line2: Address line 2 (e.g., apartment, suite, unit, or building).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceOwner'VerifiedAddress'Line2 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | postal_code: ZIP or postal code.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceOwner'VerifiedAddress'PostalCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | state: State, county, province, or region.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    sourceOwner'VerifiedAddress'State :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SourceOwner'VerifiedAddress' where
  toJSON obj = Data.Aeson.Types.Internal.object ("city" Data.Aeson.Types.ToJSON..= sourceOwner'VerifiedAddress'City obj : "country" Data.Aeson.Types.ToJSON..= sourceOwner'VerifiedAddress'Country obj : "line1" Data.Aeson.Types.ToJSON..= sourceOwner'VerifiedAddress'Line1 obj : "line2" Data.Aeson.Types.ToJSON..= sourceOwner'VerifiedAddress'Line2 obj : "postal_code" Data.Aeson.Types.ToJSON..= sourceOwner'VerifiedAddress'PostalCode obj : "state" Data.Aeson.Types.ToJSON..= sourceOwner'VerifiedAddress'State obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("city" Data.Aeson.Types.ToJSON..= sourceOwner'VerifiedAddress'City obj) GHC.Base.<> (("country" Data.Aeson.Types.ToJSON..= sourceOwner'VerifiedAddress'Country obj) GHC.Base.<> (("line1" Data.Aeson.Types.ToJSON..= sourceOwner'VerifiedAddress'Line1 obj) GHC.Base.<> (("line2" Data.Aeson.Types.ToJSON..= sourceOwner'VerifiedAddress'Line2 obj) GHC.Base.<> (("postal_code" Data.Aeson.Types.ToJSON..= sourceOwner'VerifiedAddress'PostalCode obj) GHC.Base.<> ("state" Data.Aeson.Types.ToJSON..= sourceOwner'VerifiedAddress'State obj))))))

instance Data.Aeson.Types.FromJSON.FromJSON SourceOwner'VerifiedAddress' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceOwner'VerifiedAddress'" (\obj -> (((((GHC.Base.pure SourceOwner'VerifiedAddress' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))

-- | Create a new 'SourceOwner'VerifiedAddress'' with all required fields.
mkSourceOwner'VerifiedAddress' :: SourceOwner'VerifiedAddress'
mkSourceOwner'VerifiedAddress' =
  SourceOwner'VerifiedAddress'
    { sourceOwner'VerifiedAddress'City = GHC.Maybe.Nothing,
      sourceOwner'VerifiedAddress'Country = GHC.Maybe.Nothing,
      sourceOwner'VerifiedAddress'Line1 = GHC.Maybe.Nothing,
      sourceOwner'VerifiedAddress'Line2 = GHC.Maybe.Nothing,
      sourceOwner'VerifiedAddress'PostalCode = GHC.Maybe.Nothing,
      sourceOwner'VerifiedAddress'State = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.source.properties.type@ in the specification.
--
-- The \`type\` of the source. The \`type\` is a payment method, one of \`ach_credit_transfer\`, \`ach_debit\`, \`alipay\`, \`bancontact\`, \`card\`, \`card_present\`, \`eps\`, \`giropay\`, \`ideal\`, \`multibanco\`, \`klarna\`, \`p24\`, \`sepa_debit\`, \`sofort\`, \`three_d_secure\`, or \`wechat\`. An additional hash is included on the source with a name matching this value. It contains additional information specific to the [payment method](https:\/\/stripe.com\/docs\/sources) used.
data SourceType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    SourceType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    SourceType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"ach_credit_transfer"@
    SourceType'EnumAchCreditTransfer
  | -- | Represents the JSON value @"ach_debit"@
    SourceType'EnumAchDebit
  | -- | Represents the JSON value @"acss_debit"@
    SourceType'EnumAcssDebit
  | -- | Represents the JSON value @"alipay"@
    SourceType'EnumAlipay
  | -- | Represents the JSON value @"au_becs_debit"@
    SourceType'EnumAuBecsDebit
  | -- | Represents the JSON value @"bancontact"@
    SourceType'EnumBancontact
  | -- | Represents the JSON value @"card"@
    SourceType'EnumCard
  | -- | Represents the JSON value @"card_present"@
    SourceType'EnumCardPresent
  | -- | Represents the JSON value @"eps"@
    SourceType'EnumEps
  | -- | Represents the JSON value @"giropay"@
    SourceType'EnumGiropay
  | -- | Represents the JSON value @"ideal"@
    SourceType'EnumIdeal
  | -- | Represents the JSON value @"klarna"@
    SourceType'EnumKlarna
  | -- | Represents the JSON value @"multibanco"@
    SourceType'EnumMultibanco
  | -- | Represents the JSON value @"p24"@
    SourceType'EnumP24
  | -- | Represents the JSON value @"sepa_debit"@
    SourceType'EnumSepaDebit
  | -- | Represents the JSON value @"sofort"@
    SourceType'EnumSofort
  | -- | Represents the JSON value @"three_d_secure"@
    SourceType'EnumThreeDSecure
  | -- | Represents the JSON value @"wechat"@
    SourceType'EnumWechat
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON SourceType' where
  toJSON (SourceType'Other val) = val
  toJSON (SourceType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (SourceType'EnumAchCreditTransfer) = "ach_credit_transfer"
  toJSON (SourceType'EnumAchDebit) = "ach_debit"
  toJSON (SourceType'EnumAcssDebit) = "acss_debit"
  toJSON (SourceType'EnumAlipay) = "alipay"
  toJSON (SourceType'EnumAuBecsDebit) = "au_becs_debit"
  toJSON (SourceType'EnumBancontact) = "bancontact"
  toJSON (SourceType'EnumCard) = "card"
  toJSON (SourceType'EnumCardPresent) = "card_present"
  toJSON (SourceType'EnumEps) = "eps"
  toJSON (SourceType'EnumGiropay) = "giropay"
  toJSON (SourceType'EnumIdeal) = "ideal"
  toJSON (SourceType'EnumKlarna) = "klarna"
  toJSON (SourceType'EnumMultibanco) = "multibanco"
  toJSON (SourceType'EnumP24) = "p24"
  toJSON (SourceType'EnumSepaDebit) = "sepa_debit"
  toJSON (SourceType'EnumSofort) = "sofort"
  toJSON (SourceType'EnumThreeDSecure) = "three_d_secure"
  toJSON (SourceType'EnumWechat) = "wechat"

instance Data.Aeson.Types.FromJSON.FromJSON SourceType' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "ach_credit_transfer" -> SourceType'EnumAchCreditTransfer
            | val GHC.Classes.== "ach_debit" -> SourceType'EnumAchDebit
            | val GHC.Classes.== "acss_debit" -> SourceType'EnumAcssDebit
            | val GHC.Classes.== "alipay" -> SourceType'EnumAlipay
            | val GHC.Classes.== "au_becs_debit" -> SourceType'EnumAuBecsDebit
            | val GHC.Classes.== "bancontact" -> SourceType'EnumBancontact
            | val GHC.Classes.== "card" -> SourceType'EnumCard
            | val GHC.Classes.== "card_present" -> SourceType'EnumCardPresent
            | val GHC.Classes.== "eps" -> SourceType'EnumEps
            | val GHC.Classes.== "giropay" -> SourceType'EnumGiropay
            | val GHC.Classes.== "ideal" -> SourceType'EnumIdeal
            | val GHC.Classes.== "klarna" -> SourceType'EnumKlarna
            | val GHC.Classes.== "multibanco" -> SourceType'EnumMultibanco
            | val GHC.Classes.== "p24" -> SourceType'EnumP24
            | val GHC.Classes.== "sepa_debit" -> SourceType'EnumSepaDebit
            | val GHC.Classes.== "sofort" -> SourceType'EnumSofort
            | val GHC.Classes.== "three_d_secure" -> SourceType'EnumThreeDSecure
            | val GHC.Classes.== "wechat" -> SourceType'EnumWechat
            | GHC.Base.otherwise -> SourceType'Other val
      )
