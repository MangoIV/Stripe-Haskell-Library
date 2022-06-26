{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema GelatoSelfieReportError
module StripeAPI.Types.GelatoSelfieReportError where

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

-- | Defines the object schema located at @components.schemas.gelato_selfie_report_error@ in the specification.
data GelatoSelfieReportError = GelatoSelfieReportError
  { -- | code: A short machine-readable string giving the reason for the verification failure.
    gelatoSelfieReportErrorCode :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GelatoSelfieReportErrorCode'NonNullable)),
    -- | reason: A human-readable message giving the reason for the failure. These messages can be shown to your users.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    gelatoSelfieReportErrorReason :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GelatoSelfieReportError where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("code" Data.Aeson.Types.ToJSON..=)) (gelatoSelfieReportErrorCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reason" Data.Aeson.Types.ToJSON..=)) (gelatoSelfieReportErrorReason obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("code" Data.Aeson.Types.ToJSON..=)) (gelatoSelfieReportErrorCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reason" Data.Aeson.Types.ToJSON..=)) (gelatoSelfieReportErrorReason obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GelatoSelfieReportError where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GelatoSelfieReportError" (\obj -> (GHC.Base.pure GelatoSelfieReportError GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "reason"))

-- | Create a new 'GelatoSelfieReportError' with all required fields.
mkGelatoSelfieReportError :: GelatoSelfieReportError
mkGelatoSelfieReportError =
  GelatoSelfieReportError
    { gelatoSelfieReportErrorCode = GHC.Maybe.Nothing,
      gelatoSelfieReportErrorReason = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.gelato_selfie_report_error.properties.code@ in the specification.
--
-- A short machine-readable string giving the reason for the verification failure.
data GelatoSelfieReportErrorCode'NonNullable
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    GelatoSelfieReportErrorCode'NonNullableOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    GelatoSelfieReportErrorCode'NonNullableTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"selfie_document_missing_photo"@
    GelatoSelfieReportErrorCode'NonNullableEnumSelfieDocumentMissingPhoto
  | -- | Represents the JSON value @"selfie_face_mismatch"@
    GelatoSelfieReportErrorCode'NonNullableEnumSelfieFaceMismatch
  | -- | Represents the JSON value @"selfie_manipulated"@
    GelatoSelfieReportErrorCode'NonNullableEnumSelfieManipulated
  | -- | Represents the JSON value @"selfie_unverified_other"@
    GelatoSelfieReportErrorCode'NonNullableEnumSelfieUnverifiedOther
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GelatoSelfieReportErrorCode'NonNullable where
  toJSON (GelatoSelfieReportErrorCode'NonNullableOther val) = val
  toJSON (GelatoSelfieReportErrorCode'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (GelatoSelfieReportErrorCode'NonNullableEnumSelfieDocumentMissingPhoto) = "selfie_document_missing_photo"
  toJSON (GelatoSelfieReportErrorCode'NonNullableEnumSelfieFaceMismatch) = "selfie_face_mismatch"
  toJSON (GelatoSelfieReportErrorCode'NonNullableEnumSelfieManipulated) = "selfie_manipulated"
  toJSON (GelatoSelfieReportErrorCode'NonNullableEnumSelfieUnverifiedOther) = "selfie_unverified_other"

instance Data.Aeson.Types.FromJSON.FromJSON GelatoSelfieReportErrorCode'NonNullable where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "selfie_document_missing_photo" -> GelatoSelfieReportErrorCode'NonNullableEnumSelfieDocumentMissingPhoto
            | val GHC.Classes.== "selfie_face_mismatch" -> GelatoSelfieReportErrorCode'NonNullableEnumSelfieFaceMismatch
            | val GHC.Classes.== "selfie_manipulated" -> GelatoSelfieReportErrorCode'NonNullableEnumSelfieManipulated
            | val GHC.Classes.== "selfie_unverified_other" -> GelatoSelfieReportErrorCode'NonNullableEnumSelfieUnverifiedOther
            | GHC.Base.otherwise -> GelatoSelfieReportErrorCode'NonNullableOther val
      )
