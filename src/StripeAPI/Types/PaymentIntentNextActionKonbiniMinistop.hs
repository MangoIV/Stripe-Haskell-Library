{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentIntentNextActionKonbiniMinistop
module StripeAPI.Types.PaymentIntentNextActionKonbiniMinistop where

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

-- | Defines the object schema located at @components.schemas.payment_intent_next_action_konbini_ministop@ in the specification.
data PaymentIntentNextActionKonbiniMinistop = PaymentIntentNextActionKonbiniMinistop
  { -- | confirmation_number: The confirmation number.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentIntentNextActionKonbiniMinistopConfirmationNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | payment_code: The payment code.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    paymentIntentNextActionKonbiniMinistopPaymentCode :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentIntentNextActionKonbiniMinistop where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("confirmation_number" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionKonbiniMinistopConfirmationNumber obj) : ["payment_code" Data.Aeson.Types.ToJSON..= paymentIntentNextActionKonbiniMinistopPaymentCode obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("confirmation_number" Data.Aeson.Types.ToJSON..=)) (paymentIntentNextActionKonbiniMinistopConfirmationNumber obj) : ["payment_code" Data.Aeson.Types.ToJSON..= paymentIntentNextActionKonbiniMinistopPaymentCode obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentIntentNextActionKonbiniMinistop where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentIntentNextActionKonbiniMinistop" (\obj -> (GHC.Base.pure PaymentIntentNextActionKonbiniMinistop GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "confirmation_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "payment_code"))

-- | Create a new 'PaymentIntentNextActionKonbiniMinistop' with all required fields.
mkPaymentIntentNextActionKonbiniMinistop ::
  -- | 'paymentIntentNextActionKonbiniMinistopPaymentCode'
  Data.Text.Internal.Text ->
  PaymentIntentNextActionKonbiniMinistop
mkPaymentIntentNextActionKonbiniMinistop paymentIntentNextActionKonbiniMinistopPaymentCode =
  PaymentIntentNextActionKonbiniMinistop
    { paymentIntentNextActionKonbiniMinistopConfirmationNumber = GHC.Maybe.Nothing,
      paymentIntentNextActionKonbiniMinistopPaymentCode = paymentIntentNextActionKonbiniMinistopPaymentCode
    }
