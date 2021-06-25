{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema LegalEntityPersonVerificationDocument
module StripeAPI.Types.LegalEntityPersonVerificationDocument where

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
import {-# SOURCE #-} StripeAPI.Types.File
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.legal_entity_person_verification_document@ in the specification.
data LegalEntityPersonVerificationDocument = LegalEntityPersonVerificationDocument
  { -- | back: The back of an ID returned by a [file upload](https:\/\/stripe.com\/docs\/api\#create_file) with a \`purpose\` value of \`identity_document\`.
    legalEntityPersonVerificationDocumentBack :: (GHC.Maybe.Maybe LegalEntityPersonVerificationDocumentBack'Variants),
    -- | details: A user-displayable string describing the verification state of this document. For example, if a document is uploaded and the picture is too fuzzy, this may say \"Identity document is too unclear to read\".
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    legalEntityPersonVerificationDocumentDetails :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | details_code: One of \`document_corrupt\`, \`document_country_not_supported\`, \`document_expired\`, \`document_failed_copy\`, \`document_failed_other\`, \`document_failed_test_mode\`, \`document_fraudulent\`, \`document_failed_greyscale\`, \`document_incomplete\`, \`document_invalid\`, \`document_manipulated\`, \`document_missing_back\`, \`document_missing_front\`, \`document_not_readable\`, \`document_not_uploaded\`, \`document_photo_mismatch\`, \`document_too_large\`, or \`document_type_not_supported\`. A machine-readable code specifying the verification state for this document.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    legalEntityPersonVerificationDocumentDetailsCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | front: The front of an ID returned by a [file upload](https:\/\/stripe.com\/docs\/api\#create_file) with a \`purpose\` value of \`identity_document\`.
    legalEntityPersonVerificationDocumentFront :: (GHC.Maybe.Maybe LegalEntityPersonVerificationDocumentFront'Variants)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON LegalEntityPersonVerificationDocument where
  toJSON obj = Data.Aeson.Types.Internal.object ("back" Data.Aeson.Types.ToJSON..= legalEntityPersonVerificationDocumentBack obj : "details" Data.Aeson.Types.ToJSON..= legalEntityPersonVerificationDocumentDetails obj : "details_code" Data.Aeson.Types.ToJSON..= legalEntityPersonVerificationDocumentDetailsCode obj : "front" Data.Aeson.Types.ToJSON..= legalEntityPersonVerificationDocumentFront obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("back" Data.Aeson.Types.ToJSON..= legalEntityPersonVerificationDocumentBack obj) GHC.Base.<> (("details" Data.Aeson.Types.ToJSON..= legalEntityPersonVerificationDocumentDetails obj) GHC.Base.<> (("details_code" Data.Aeson.Types.ToJSON..= legalEntityPersonVerificationDocumentDetailsCode obj) GHC.Base.<> ("front" Data.Aeson.Types.ToJSON..= legalEntityPersonVerificationDocumentFront obj))))

instance Data.Aeson.Types.FromJSON.FromJSON LegalEntityPersonVerificationDocument where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "LegalEntityPersonVerificationDocument" (\obj -> (((GHC.Base.pure LegalEntityPersonVerificationDocument GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "details")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "details_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))

-- | Create a new 'LegalEntityPersonVerificationDocument' with all required fields.
mkLegalEntityPersonVerificationDocument :: LegalEntityPersonVerificationDocument
mkLegalEntityPersonVerificationDocument =
  LegalEntityPersonVerificationDocument
    { legalEntityPersonVerificationDocumentBack = GHC.Maybe.Nothing,
      legalEntityPersonVerificationDocumentDetails = GHC.Maybe.Nothing,
      legalEntityPersonVerificationDocumentDetailsCode = GHC.Maybe.Nothing,
      legalEntityPersonVerificationDocumentFront = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @components.schemas.legal_entity_person_verification_document.properties.back.anyOf@ in the specification.
--
-- The back of an ID returned by a [file upload](https:\/\/stripe.com\/docs\/api\#create_file) with a \`purpose\` value of \`identity_document\`.
data LegalEntityPersonVerificationDocumentBack'Variants
  = LegalEntityPersonVerificationDocumentBack'Text Data.Text.Internal.Text
  | LegalEntityPersonVerificationDocumentBack'File File
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON LegalEntityPersonVerificationDocumentBack'Variants where
  toJSON (LegalEntityPersonVerificationDocumentBack'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (LegalEntityPersonVerificationDocumentBack'File a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON LegalEntityPersonVerificationDocumentBack'Variants where
  parseJSON val = case (LegalEntityPersonVerificationDocumentBack'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((LegalEntityPersonVerificationDocumentBack'File Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the oneOf schema located at @components.schemas.legal_entity_person_verification_document.properties.front.anyOf@ in the specification.
--
-- The front of an ID returned by a [file upload](https:\/\/stripe.com\/docs\/api\#create_file) with a \`purpose\` value of \`identity_document\`.
data LegalEntityPersonVerificationDocumentFront'Variants
  = LegalEntityPersonVerificationDocumentFront'Text Data.Text.Internal.Text
  | LegalEntityPersonVerificationDocumentFront'File File
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON LegalEntityPersonVerificationDocumentFront'Variants where
  toJSON (LegalEntityPersonVerificationDocumentFront'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (LegalEntityPersonVerificationDocumentFront'File a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON LegalEntityPersonVerificationDocumentFront'Variants where
  parseJSON val = case (LegalEntityPersonVerificationDocumentFront'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((LegalEntityPersonVerificationDocumentFront'File Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
