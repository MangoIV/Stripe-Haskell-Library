{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema NotificationEventRequest
module StripeAPI.Types.NotificationEventRequest where

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

-- | Defines the object schema located at @components.schemas.notification_event_request@ in the specification.
data NotificationEventRequest = NotificationEventRequest
  { -- | id: ID of the API request that caused the event. If null, the event was automatic (e.g., Stripe\'s automatic subscription handling). Request logs are available in the [dashboard](https:\/\/dashboard.stripe.com\/logs), but currently not in the API.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    notificationEventRequestId :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | idempotency_key: The idempotency key transmitted during the request, if any. *Note: This property is populated only for events on or after May 23, 2017*.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    notificationEventRequestIdempotencyKey :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON NotificationEventRequest where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id" Data.Aeson.Types.ToJSON..=)) (notificationEventRequestId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("idempotency_key" Data.Aeson.Types.ToJSON..=)) (notificationEventRequestIdempotencyKey obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id" Data.Aeson.Types.ToJSON..=)) (notificationEventRequestId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("idempotency_key" Data.Aeson.Types.ToJSON..=)) (notificationEventRequestIdempotencyKey obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON NotificationEventRequest where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "NotificationEventRequest" (\obj -> (GHC.Base.pure NotificationEventRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "idempotency_key"))

-- | Create a new 'NotificationEventRequest' with all required fields.
mkNotificationEventRequest :: NotificationEventRequest
mkNotificationEventRequest =
  NotificationEventRequest
    { notificationEventRequestId = GHC.Maybe.Nothing,
      notificationEventRequestIdempotencyKey = GHC.Maybe.Nothing
    }
