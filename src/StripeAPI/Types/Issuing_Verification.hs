{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the types generated from the schema Issuing_Verification
module StripeAPI.Types.Issuing_Verification where

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
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.issuing.verification@ in the specification.
--
-- An Issuing \`Verification\` object holds a one-time code request on behalf of a cardholder.
data Issuing'verification = Issuing'verification
  { -- | card: The id of the \`Card\` on which the verification was requested
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    issuing'verificationCard :: Data.Text.Internal.Text,
    -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
    issuing'verificationCreated :: GHC.Types.Int,
    -- | expires_at: Timestamp of the expiry for that verification
    issuing'verificationExpiresAt :: GHC.Types.Int,
    -- | id: Unique identifier for the object.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    issuing'verificationId :: Data.Text.Internal.Text,
    -- | scope: The scope of the verification (one of \`card_pin_retrieve\` or \`card_pin_update\`)
    issuing'verificationScope :: Issuing'verificationScope',
    -- | verification_method: The method by which the cardholder will be sent a one-time code (one of \`email\` or \`sms\`)
    issuing'verificationVerificationMethod :: Issuing'verificationVerificationMethod'
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON Issuing'verification where
  toJSON obj = Data.Aeson.Types.Internal.object ("card" Data.Aeson.Types.ToJSON..= issuing'verificationCard obj : "created" Data.Aeson.Types.ToJSON..= issuing'verificationCreated obj : "expires_at" Data.Aeson.Types.ToJSON..= issuing'verificationExpiresAt obj : "id" Data.Aeson.Types.ToJSON..= issuing'verificationId obj : "scope" Data.Aeson.Types.ToJSON..= issuing'verificationScope obj : "verification_method" Data.Aeson.Types.ToJSON..= issuing'verificationVerificationMethod obj : "object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "issuing.verification" : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("card" Data.Aeson.Types.ToJSON..= issuing'verificationCard obj) GHC.Base.<> (("created" Data.Aeson.Types.ToJSON..= issuing'verificationCreated obj) GHC.Base.<> (("expires_at" Data.Aeson.Types.ToJSON..= issuing'verificationExpiresAt obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= issuing'verificationId obj) GHC.Base.<> (("scope" Data.Aeson.Types.ToJSON..= issuing'verificationScope obj) GHC.Base.<> (("verification_method" Data.Aeson.Types.ToJSON..= issuing'verificationVerificationMethod obj) GHC.Base.<> ("object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "issuing.verification")))))))

instance Data.Aeson.Types.FromJSON.FromJSON Issuing'verification where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "Issuing'verification" (\obj -> (((((GHC.Base.pure Issuing'verification GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "expires_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "scope")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "verification_method"))

-- | Create a new 'Issuing'verification' with all required fields.
mkIssuing'verification ::
  -- | 'issuing'verificationCard'
  Data.Text.Internal.Text ->
  -- | 'issuing'verificationCreated'
  GHC.Types.Int ->
  -- | 'issuing'verificationExpiresAt'
  GHC.Types.Int ->
  -- | 'issuing'verificationId'
  Data.Text.Internal.Text ->
  -- | 'issuing'verificationScope'
  Issuing'verificationScope' ->
  -- | 'issuing'verificationVerificationMethod'
  Issuing'verificationVerificationMethod' ->
  Issuing'verification
mkIssuing'verification issuing'verificationCard issuing'verificationCreated issuing'verificationExpiresAt issuing'verificationId issuing'verificationScope issuing'verificationVerificationMethod =
  Issuing'verification
    { issuing'verificationCard = issuing'verificationCard,
      issuing'verificationCreated = issuing'verificationCreated,
      issuing'verificationExpiresAt = issuing'verificationExpiresAt,
      issuing'verificationId = issuing'verificationId,
      issuing'verificationScope = issuing'verificationScope,
      issuing'verificationVerificationMethod = issuing'verificationVerificationMethod
    }

-- | Defines the enum schema located at @components.schemas.issuing.verification.properties.scope@ in the specification.
--
-- The scope of the verification (one of \`card_pin_retrieve\` or \`card_pin_update\`)
data Issuing'verificationScope'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    Issuing'verificationScope'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    Issuing'verificationScope'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"card_pin_retrieve"@
    Issuing'verificationScope'EnumCardPinRetrieve
  | -- | Represents the JSON value @"card_pin_update"@
    Issuing'verificationScope'EnumCardPinUpdate
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON Issuing'verificationScope' where
  toJSON (Issuing'verificationScope'Other val) = val
  toJSON (Issuing'verificationScope'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (Issuing'verificationScope'EnumCardPinRetrieve) = "card_pin_retrieve"
  toJSON (Issuing'verificationScope'EnumCardPinUpdate) = "card_pin_update"

instance Data.Aeson.Types.FromJSON.FromJSON Issuing'verificationScope' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "card_pin_retrieve" -> Issuing'verificationScope'EnumCardPinRetrieve
            | val GHC.Classes.== "card_pin_update" -> Issuing'verificationScope'EnumCardPinUpdate
            | GHC.Base.otherwise -> Issuing'verificationScope'Other val
      )

-- | Defines the enum schema located at @components.schemas.issuing.verification.properties.verification_method@ in the specification.
--
-- The method by which the cardholder will be sent a one-time code (one of \`email\` or \`sms\`)
data Issuing'verificationVerificationMethod'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    Issuing'verificationVerificationMethod'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    Issuing'verificationVerificationMethod'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"email"@
    Issuing'verificationVerificationMethod'EnumEmail
  | -- | Represents the JSON value @"sms"@
    Issuing'verificationVerificationMethod'EnumSms
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON Issuing'verificationVerificationMethod' where
  toJSON (Issuing'verificationVerificationMethod'Other val) = val
  toJSON (Issuing'verificationVerificationMethod'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (Issuing'verificationVerificationMethod'EnumEmail) = "email"
  toJSON (Issuing'verificationVerificationMethod'EnumSms) = "sms"

instance Data.Aeson.Types.FromJSON.FromJSON Issuing'verificationVerificationMethod' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "email" -> Issuing'verificationVerificationMethod'EnumEmail
            | val GHC.Classes.== "sms" -> Issuing'verificationVerificationMethod'EnumSms
            | GHC.Base.otherwise -> Issuing'verificationVerificationMethod'Other val
      )
