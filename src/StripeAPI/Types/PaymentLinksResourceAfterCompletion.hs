{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentLinksResourceAfterCompletion
module StripeAPI.Types.PaymentLinksResourceAfterCompletion where

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
import {-# SOURCE #-} StripeAPI.Types.PaymentLinksResourceCompletionBehaviorConfirmationPage
import {-# SOURCE #-} StripeAPI.Types.PaymentLinksResourceCompletionBehaviorRedirect
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.payment_links_resource_after_completion@ in the specification.
data PaymentLinksResourceAfterCompletion = PaymentLinksResourceAfterCompletion
  { -- | hosted_confirmation:
    paymentLinksResourceAfterCompletionHostedConfirmation :: (GHC.Maybe.Maybe PaymentLinksResourceCompletionBehaviorConfirmationPage),
    -- | redirect:
    paymentLinksResourceAfterCompletionRedirect :: (GHC.Maybe.Maybe PaymentLinksResourceCompletionBehaviorRedirect),
    -- | type: The specified behavior after the purchase is complete.
    paymentLinksResourceAfterCompletionType :: PaymentLinksResourceAfterCompletionType'
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentLinksResourceAfterCompletion where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("hosted_confirmation" Data.Aeson.Types.ToJSON..=)) (paymentLinksResourceAfterCompletionHostedConfirmation obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("redirect" Data.Aeson.Types.ToJSON..=)) (paymentLinksResourceAfterCompletionRedirect obj) : ["type" Data.Aeson.Types.ToJSON..= paymentLinksResourceAfterCompletionType obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("hosted_confirmation" Data.Aeson.Types.ToJSON..=)) (paymentLinksResourceAfterCompletionHostedConfirmation obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("redirect" Data.Aeson.Types.ToJSON..=)) (paymentLinksResourceAfterCompletionRedirect obj) : ["type" Data.Aeson.Types.ToJSON..= paymentLinksResourceAfterCompletionType obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentLinksResourceAfterCompletion where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentLinksResourceAfterCompletion" (\obj -> ((GHC.Base.pure PaymentLinksResourceAfterCompletion GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "hosted_confirmation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "redirect")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))

-- | Create a new 'PaymentLinksResourceAfterCompletion' with all required fields.
mkPaymentLinksResourceAfterCompletion ::
  -- | 'paymentLinksResourceAfterCompletionType'
  PaymentLinksResourceAfterCompletionType' ->
  PaymentLinksResourceAfterCompletion
mkPaymentLinksResourceAfterCompletion paymentLinksResourceAfterCompletionType =
  PaymentLinksResourceAfterCompletion
    { paymentLinksResourceAfterCompletionHostedConfirmation = GHC.Maybe.Nothing,
      paymentLinksResourceAfterCompletionRedirect = GHC.Maybe.Nothing,
      paymentLinksResourceAfterCompletionType = paymentLinksResourceAfterCompletionType
    }

-- | Defines the enum schema located at @components.schemas.payment_links_resource_after_completion.properties.type@ in the specification.
--
-- The specified behavior after the purchase is complete.
data PaymentLinksResourceAfterCompletionType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentLinksResourceAfterCompletionType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentLinksResourceAfterCompletionType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"hosted_confirmation"@
    PaymentLinksResourceAfterCompletionType'EnumHostedConfirmation
  | -- | Represents the JSON value @"redirect"@
    PaymentLinksResourceAfterCompletionType'EnumRedirect
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentLinksResourceAfterCompletionType' where
  toJSON (PaymentLinksResourceAfterCompletionType'Other val) = val
  toJSON (PaymentLinksResourceAfterCompletionType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentLinksResourceAfterCompletionType'EnumHostedConfirmation) = "hosted_confirmation"
  toJSON (PaymentLinksResourceAfterCompletionType'EnumRedirect) = "redirect"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentLinksResourceAfterCompletionType' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "hosted_confirmation" -> PaymentLinksResourceAfterCompletionType'EnumHostedConfirmation
            | val GHC.Classes.== "redirect" -> PaymentLinksResourceAfterCompletionType'EnumRedirect
            | GHC.Base.otherwise -> PaymentLinksResourceAfterCompletionType'Other val
      )
