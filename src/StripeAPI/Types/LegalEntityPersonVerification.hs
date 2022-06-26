{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema LegalEntityPersonVerification
module StripeAPI.Types.LegalEntityPersonVerification where

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
import {-# SOURCE #-} StripeAPI.Types.File
import {-# SOURCE #-} StripeAPI.Types.LegalEntityPersonVerificationDocument
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.legal_entity_person_verification@ in the specification.
data LegalEntityPersonVerification = LegalEntityPersonVerification
  { -- | additional_document: A document showing address, either a passport, local ID card, or utility bill from a well-known utility company.
    legalEntityPersonVerificationAdditionalDocument :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable LegalEntityPersonVerificationAdditionalDocument'NonNullable)),
    -- | details: A user-displayable string describing the verification state for the person. For example, this may say \"Provided identity information could not be verified\".
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    legalEntityPersonVerificationDetails :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | details_code: One of \`document_address_mismatch\`, \`document_dob_mismatch\`, \`document_duplicate_type\`, \`document_id_number_mismatch\`, \`document_name_mismatch\`, \`document_nationality_mismatch\`, \`failed_keyed_identity\`, or \`failed_other\`. A machine-readable code specifying the verification state for the person.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    legalEntityPersonVerificationDetailsCode :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | document:
    legalEntityPersonVerificationDocument :: (GHC.Maybe.Maybe LegalEntityPersonVerificationDocument),
    -- | status: The state of verification for the person. Possible values are \`unverified\`, \`pending\`, or \`verified\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    legalEntityPersonVerificationStatus :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON LegalEntityPersonVerification where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("additional_document" Data.Aeson.Types.ToJSON..=)) (legalEntityPersonVerificationAdditionalDocument obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("details" Data.Aeson.Types.ToJSON..=)) (legalEntityPersonVerificationDetails obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("details_code" Data.Aeson.Types.ToJSON..=)) (legalEntityPersonVerificationDetailsCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("document" Data.Aeson.Types.ToJSON..=)) (legalEntityPersonVerificationDocument obj) : ["status" Data.Aeson.Types.ToJSON..= legalEntityPersonVerificationStatus obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("additional_document" Data.Aeson.Types.ToJSON..=)) (legalEntityPersonVerificationAdditionalDocument obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("details" Data.Aeson.Types.ToJSON..=)) (legalEntityPersonVerificationDetails obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("details_code" Data.Aeson.Types.ToJSON..=)) (legalEntityPersonVerificationDetailsCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("document" Data.Aeson.Types.ToJSON..=)) (legalEntityPersonVerificationDocument obj) : ["status" Data.Aeson.Types.ToJSON..= legalEntityPersonVerificationStatus obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON LegalEntityPersonVerification where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "LegalEntityPersonVerification" (\obj -> ((((GHC.Base.pure LegalEntityPersonVerification GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "additional_document")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "details")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "details_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "document")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))

-- | Create a new 'LegalEntityPersonVerification' with all required fields.
mkLegalEntityPersonVerification ::
  -- | 'legalEntityPersonVerificationStatus'
  Data.Text.Internal.Text ->
  LegalEntityPersonVerification
mkLegalEntityPersonVerification legalEntityPersonVerificationStatus =
  LegalEntityPersonVerification
    { legalEntityPersonVerificationAdditionalDocument = GHC.Maybe.Nothing,
      legalEntityPersonVerificationDetails = GHC.Maybe.Nothing,
      legalEntityPersonVerificationDetailsCode = GHC.Maybe.Nothing,
      legalEntityPersonVerificationDocument = GHC.Maybe.Nothing,
      legalEntityPersonVerificationStatus = legalEntityPersonVerificationStatus
    }

-- | Defines the object schema located at @components.schemas.legal_entity_person_verification.properties.additional_document.anyOf@ in the specification.
--
-- A document showing address, either a passport, local ID card, or utility bill from a well-known utility company.
data LegalEntityPersonVerificationAdditionalDocument'NonNullable = LegalEntityPersonVerificationAdditionalDocument'NonNullable
  { -- | back: The back of an ID returned by a [file upload](https:\/\/stripe.com\/docs\/api\#create_file) with a \`purpose\` value of \`identity_document\`.
    legalEntityPersonVerificationAdditionalDocument'NonNullableBack :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable LegalEntityPersonVerificationAdditionalDocument'NonNullableBack'NonNullableVariants)),
    -- | details: A user-displayable string describing the verification state of this document. For example, if a document is uploaded and the picture is too fuzzy, this may say \"Identity document is too unclear to read\".
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    legalEntityPersonVerificationAdditionalDocument'NonNullableDetails :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | details_code: One of \`document_corrupt\`, \`document_country_not_supported\`, \`document_expired\`, \`document_failed_copy\`, \`document_failed_other\`, \`document_failed_test_mode\`, \`document_fraudulent\`, \`document_failed_greyscale\`, \`document_incomplete\`, \`document_invalid\`, \`document_manipulated\`, \`document_missing_back\`, \`document_missing_front\`, \`document_not_readable\`, \`document_not_uploaded\`, \`document_photo_mismatch\`, \`document_too_large\`, or \`document_type_not_supported\`. A machine-readable code specifying the verification state for this document.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    legalEntityPersonVerificationAdditionalDocument'NonNullableDetailsCode :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | front: The front of an ID returned by a [file upload](https:\/\/stripe.com\/docs\/api\#create_file) with a \`purpose\` value of \`identity_document\`.
    legalEntityPersonVerificationAdditionalDocument'NonNullableFront :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable LegalEntityPersonVerificationAdditionalDocument'NonNullableFront'NonNullableVariants))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON LegalEntityPersonVerificationAdditionalDocument'NonNullable where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("back" Data.Aeson.Types.ToJSON..=)) (legalEntityPersonVerificationAdditionalDocument'NonNullableBack obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("details" Data.Aeson.Types.ToJSON..=)) (legalEntityPersonVerificationAdditionalDocument'NonNullableDetails obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("details_code" Data.Aeson.Types.ToJSON..=)) (legalEntityPersonVerificationAdditionalDocument'NonNullableDetailsCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("front" Data.Aeson.Types.ToJSON..=)) (legalEntityPersonVerificationAdditionalDocument'NonNullableFront obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("back" Data.Aeson.Types.ToJSON..=)) (legalEntityPersonVerificationAdditionalDocument'NonNullableBack obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("details" Data.Aeson.Types.ToJSON..=)) (legalEntityPersonVerificationAdditionalDocument'NonNullableDetails obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("details_code" Data.Aeson.Types.ToJSON..=)) (legalEntityPersonVerificationAdditionalDocument'NonNullableDetailsCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("front" Data.Aeson.Types.ToJSON..=)) (legalEntityPersonVerificationAdditionalDocument'NonNullableFront obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON LegalEntityPersonVerificationAdditionalDocument'NonNullable where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "LegalEntityPersonVerificationAdditionalDocument'NonNullable" (\obj -> (((GHC.Base.pure LegalEntityPersonVerificationAdditionalDocument'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "details")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "details_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "front"))

-- | Create a new 'LegalEntityPersonVerificationAdditionalDocument'NonNullable' with all required fields.
mkLegalEntityPersonVerificationAdditionalDocument'NonNullable :: LegalEntityPersonVerificationAdditionalDocument'NonNullable
mkLegalEntityPersonVerificationAdditionalDocument'NonNullable =
  LegalEntityPersonVerificationAdditionalDocument'NonNullable
    { legalEntityPersonVerificationAdditionalDocument'NonNullableBack = GHC.Maybe.Nothing,
      legalEntityPersonVerificationAdditionalDocument'NonNullableDetails = GHC.Maybe.Nothing,
      legalEntityPersonVerificationAdditionalDocument'NonNullableDetailsCode = GHC.Maybe.Nothing,
      legalEntityPersonVerificationAdditionalDocument'NonNullableFront = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @components.schemas.legal_entity_person_verification.properties.additional_document.anyOf.properties.back.anyOf@ in the specification.
--
-- The back of an ID returned by a [file upload](https:\/\/stripe.com\/docs\/api\#create_file) with a \`purpose\` value of \`identity_document\`.
data LegalEntityPersonVerificationAdditionalDocument'NonNullableBack'NonNullableVariants
  = LegalEntityPersonVerificationAdditionalDocument'NonNullableBack'NonNullableText Data.Text.Internal.Text
  | LegalEntityPersonVerificationAdditionalDocument'NonNullableBack'NonNullableFile File
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON LegalEntityPersonVerificationAdditionalDocument'NonNullableBack'NonNullableVariants where
  toJSON (LegalEntityPersonVerificationAdditionalDocument'NonNullableBack'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (LegalEntityPersonVerificationAdditionalDocument'NonNullableBack'NonNullableFile a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON LegalEntityPersonVerificationAdditionalDocument'NonNullableBack'NonNullableVariants where
  parseJSON val = case (LegalEntityPersonVerificationAdditionalDocument'NonNullableBack'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((LegalEntityPersonVerificationAdditionalDocument'NonNullableBack'NonNullableFile Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the oneOf schema located at @components.schemas.legal_entity_person_verification.properties.additional_document.anyOf.properties.front.anyOf@ in the specification.
--
-- The front of an ID returned by a [file upload](https:\/\/stripe.com\/docs\/api\#create_file) with a \`purpose\` value of \`identity_document\`.
data LegalEntityPersonVerificationAdditionalDocument'NonNullableFront'NonNullableVariants
  = LegalEntityPersonVerificationAdditionalDocument'NonNullableFront'NonNullableText Data.Text.Internal.Text
  | LegalEntityPersonVerificationAdditionalDocument'NonNullableFront'NonNullableFile File
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON LegalEntityPersonVerificationAdditionalDocument'NonNullableFront'NonNullableVariants where
  toJSON (LegalEntityPersonVerificationAdditionalDocument'NonNullableFront'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (LegalEntityPersonVerificationAdditionalDocument'NonNullableFront'NonNullableFile a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON LegalEntityPersonVerificationAdditionalDocument'NonNullableFront'NonNullableVariants where
  parseJSON val = case (LegalEntityPersonVerificationAdditionalDocument'NonNullableFront'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((LegalEntityPersonVerificationAdditionalDocument'NonNullableFront'NonNullableFile Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
