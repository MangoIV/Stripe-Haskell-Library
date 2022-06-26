{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema TerminalReaderReaderResourceReaderAction
module StripeAPI.Types.TerminalReaderReaderResourceReaderAction where

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
import {-# SOURCE #-} StripeAPI.Types.TerminalReaderReaderResourceProcessPaymentIntentAction
import {-# SOURCE #-} StripeAPI.Types.TerminalReaderReaderResourceProcessSetupIntentAction
import {-# SOURCE #-} StripeAPI.Types.TerminalReaderReaderResourceSetReaderDisplayAction
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.terminal_reader_reader_resource_reader_action@ in the specification.
--
-- Represents an action performed by the reader
data TerminalReaderReaderResourceReaderAction = TerminalReaderReaderResourceReaderAction
  { -- | failure_code: Failure code, only set if status is \`failed\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    terminalReaderReaderResourceReaderActionFailureCode :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | failure_message: Detailed failure message, only set if status is \`failed\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    terminalReaderReaderResourceReaderActionFailureMessage :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | process_payment_intent: Represents a reader action to process a payment intent
    terminalReaderReaderResourceReaderActionProcessPaymentIntent :: (GHC.Maybe.Maybe TerminalReaderReaderResourceProcessPaymentIntentAction),
    -- | process_setup_intent: Represents a reader action to process a setup intent
    terminalReaderReaderResourceReaderActionProcessSetupIntent :: (GHC.Maybe.Maybe TerminalReaderReaderResourceProcessSetupIntentAction),
    -- | set_reader_display: Represents a reader action to set the reader display
    terminalReaderReaderResourceReaderActionSetReaderDisplay :: (GHC.Maybe.Maybe TerminalReaderReaderResourceSetReaderDisplayAction),
    -- | status: Status of the action performed by the reader.
    terminalReaderReaderResourceReaderActionStatus :: TerminalReaderReaderResourceReaderActionStatus',
    -- | type: Type of action performed by the reader.
    terminalReaderReaderResourceReaderActionType :: TerminalReaderReaderResourceReaderActionType'
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON TerminalReaderReaderResourceReaderAction where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("failure_code" Data.Aeson.Types.ToJSON..=)) (terminalReaderReaderResourceReaderActionFailureCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("failure_message" Data.Aeson.Types.ToJSON..=)) (terminalReaderReaderResourceReaderActionFailureMessage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("process_payment_intent" Data.Aeson.Types.ToJSON..=)) (terminalReaderReaderResourceReaderActionProcessPaymentIntent obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("process_setup_intent" Data.Aeson.Types.ToJSON..=)) (terminalReaderReaderResourceReaderActionProcessSetupIntent obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("set_reader_display" Data.Aeson.Types.ToJSON..=)) (terminalReaderReaderResourceReaderActionSetReaderDisplay obj) : ["status" Data.Aeson.Types.ToJSON..= terminalReaderReaderResourceReaderActionStatus obj] : ["type" Data.Aeson.Types.ToJSON..= terminalReaderReaderResourceReaderActionType obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("failure_code" Data.Aeson.Types.ToJSON..=)) (terminalReaderReaderResourceReaderActionFailureCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("failure_message" Data.Aeson.Types.ToJSON..=)) (terminalReaderReaderResourceReaderActionFailureMessage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("process_payment_intent" Data.Aeson.Types.ToJSON..=)) (terminalReaderReaderResourceReaderActionProcessPaymentIntent obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("process_setup_intent" Data.Aeson.Types.ToJSON..=)) (terminalReaderReaderResourceReaderActionProcessSetupIntent obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("set_reader_display" Data.Aeson.Types.ToJSON..=)) (terminalReaderReaderResourceReaderActionSetReaderDisplay obj) : ["status" Data.Aeson.Types.ToJSON..= terminalReaderReaderResourceReaderActionStatus obj] : ["type" Data.Aeson.Types.ToJSON..= terminalReaderReaderResourceReaderActionType obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON TerminalReaderReaderResourceReaderAction where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "TerminalReaderReaderResourceReaderAction" (\obj -> ((((((GHC.Base.pure TerminalReaderReaderResourceReaderAction GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "failure_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "failure_message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "process_payment_intent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "process_setup_intent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "set_reader_display")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))

-- | Create a new 'TerminalReaderReaderResourceReaderAction' with all required fields.
mkTerminalReaderReaderResourceReaderAction ::
  -- | 'terminalReaderReaderResourceReaderActionStatus'
  TerminalReaderReaderResourceReaderActionStatus' ->
  -- | 'terminalReaderReaderResourceReaderActionType'
  TerminalReaderReaderResourceReaderActionType' ->
  TerminalReaderReaderResourceReaderAction
mkTerminalReaderReaderResourceReaderAction terminalReaderReaderResourceReaderActionStatus terminalReaderReaderResourceReaderActionType =
  TerminalReaderReaderResourceReaderAction
    { terminalReaderReaderResourceReaderActionFailureCode = GHC.Maybe.Nothing,
      terminalReaderReaderResourceReaderActionFailureMessage = GHC.Maybe.Nothing,
      terminalReaderReaderResourceReaderActionProcessPaymentIntent = GHC.Maybe.Nothing,
      terminalReaderReaderResourceReaderActionProcessSetupIntent = GHC.Maybe.Nothing,
      terminalReaderReaderResourceReaderActionSetReaderDisplay = GHC.Maybe.Nothing,
      terminalReaderReaderResourceReaderActionStatus = terminalReaderReaderResourceReaderActionStatus,
      terminalReaderReaderResourceReaderActionType = terminalReaderReaderResourceReaderActionType
    }

-- | Defines the enum schema located at @components.schemas.terminal_reader_reader_resource_reader_action.properties.status@ in the specification.
--
-- Status of the action performed by the reader.
data TerminalReaderReaderResourceReaderActionStatus'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    TerminalReaderReaderResourceReaderActionStatus'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    TerminalReaderReaderResourceReaderActionStatus'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"failed"@
    TerminalReaderReaderResourceReaderActionStatus'EnumFailed
  | -- | Represents the JSON value @"in_progress"@
    TerminalReaderReaderResourceReaderActionStatus'EnumInProgress
  | -- | Represents the JSON value @"succeeded"@
    TerminalReaderReaderResourceReaderActionStatus'EnumSucceeded
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON TerminalReaderReaderResourceReaderActionStatus' where
  toJSON (TerminalReaderReaderResourceReaderActionStatus'Other val) = val
  toJSON (TerminalReaderReaderResourceReaderActionStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (TerminalReaderReaderResourceReaderActionStatus'EnumFailed) = "failed"
  toJSON (TerminalReaderReaderResourceReaderActionStatus'EnumInProgress) = "in_progress"
  toJSON (TerminalReaderReaderResourceReaderActionStatus'EnumSucceeded) = "succeeded"

instance Data.Aeson.Types.FromJSON.FromJSON TerminalReaderReaderResourceReaderActionStatus' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "failed" -> TerminalReaderReaderResourceReaderActionStatus'EnumFailed
            | val GHC.Classes.== "in_progress" -> TerminalReaderReaderResourceReaderActionStatus'EnumInProgress
            | val GHC.Classes.== "succeeded" -> TerminalReaderReaderResourceReaderActionStatus'EnumSucceeded
            | GHC.Base.otherwise -> TerminalReaderReaderResourceReaderActionStatus'Other val
      )

-- | Defines the enum schema located at @components.schemas.terminal_reader_reader_resource_reader_action.properties.type@ in the specification.
--
-- Type of action performed by the reader.
data TerminalReaderReaderResourceReaderActionType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    TerminalReaderReaderResourceReaderActionType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    TerminalReaderReaderResourceReaderActionType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"process_payment_intent"@
    TerminalReaderReaderResourceReaderActionType'EnumProcessPaymentIntent
  | -- | Represents the JSON value @"process_setup_intent"@
    TerminalReaderReaderResourceReaderActionType'EnumProcessSetupIntent
  | -- | Represents the JSON value @"set_reader_display"@
    TerminalReaderReaderResourceReaderActionType'EnumSetReaderDisplay
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON TerminalReaderReaderResourceReaderActionType' where
  toJSON (TerminalReaderReaderResourceReaderActionType'Other val) = val
  toJSON (TerminalReaderReaderResourceReaderActionType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (TerminalReaderReaderResourceReaderActionType'EnumProcessPaymentIntent) = "process_payment_intent"
  toJSON (TerminalReaderReaderResourceReaderActionType'EnumProcessSetupIntent) = "process_setup_intent"
  toJSON (TerminalReaderReaderResourceReaderActionType'EnumSetReaderDisplay) = "set_reader_display"

instance Data.Aeson.Types.FromJSON.FromJSON TerminalReaderReaderResourceReaderActionType' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "process_payment_intent" -> TerminalReaderReaderResourceReaderActionType'EnumProcessPaymentIntent
            | val GHC.Classes.== "process_setup_intent" -> TerminalReaderReaderResourceReaderActionType'EnumProcessSetupIntent
            | val GHC.Classes.== "set_reader_display" -> TerminalReaderReaderResourceReaderActionType'EnumSetReaderDisplay
            | GHC.Base.otherwise -> TerminalReaderReaderResourceReaderActionType'Other val
      )
