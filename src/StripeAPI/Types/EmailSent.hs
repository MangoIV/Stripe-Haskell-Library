{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema EmailSent
module StripeAPI.Types.EmailSent where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
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

-- | Defines the object schema located at @components.schemas.email_sent@ in the specification.
data EmailSent = EmailSent
  { -- | email_sent_at: The timestamp when the email was sent.
    emailSentEmailSentAt :: GHC.Types.Int,
    -- | email_sent_to: The recipient\'s email address.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    emailSentEmailSentTo :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON EmailSent where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["email_sent_at" Data.Aeson.Types.ToJSON..= emailSentEmailSentAt obj] : ["email_sent_to" Data.Aeson.Types.ToJSON..= emailSentEmailSentTo obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["email_sent_at" Data.Aeson.Types.ToJSON..= emailSentEmailSentAt obj] : ["email_sent_to" Data.Aeson.Types.ToJSON..= emailSentEmailSentTo obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON EmailSent where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "EmailSent" (\obj -> (GHC.Base.pure EmailSent GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "email_sent_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "email_sent_to"))

-- | Create a new 'EmailSent' with all required fields.
mkEmailSent ::
  -- | 'emailSentEmailSentAt'
  GHC.Types.Int ->
  -- | 'emailSentEmailSentTo'
  Data.Text.Internal.Text ->
  EmailSent
mkEmailSent emailSentEmailSentAt emailSentEmailSentTo =
  EmailSent
    { emailSentEmailSentAt = emailSentEmailSentAt,
      emailSentEmailSentTo = emailSentEmailSentTo
    }
