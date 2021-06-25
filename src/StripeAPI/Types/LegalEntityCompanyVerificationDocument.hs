{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema LegalEntityCompanyVerificationDocument
module StripeAPI.Types.LegalEntityCompanyVerificationDocument where

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

-- | Defines the object schema located at @components.schemas.legal_entity_company_verification_document@ in the specification.
data LegalEntityCompanyVerificationDocument = LegalEntityCompanyVerificationDocument
  { -- | back: The back of a document returned by a [file upload](https:\/\/stripe.com\/docs\/api\#create_file) with a \`purpose\` value of \`additional_verification\`.
    legalEntityCompanyVerificationDocumentBack :: (GHC.Maybe.Maybe LegalEntityCompanyVerificationDocumentBack'Variants),
    -- | details: A user-displayable string describing the verification state of this document.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    legalEntityCompanyVerificationDocumentDetails :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | details_code: One of \`document_corrupt\`, \`document_expired\`, \`document_failed_copy\`, \`document_failed_greyscale\`, \`document_failed_other\`, \`document_failed_test_mode\`, \`document_fraudulent\`, \`document_incomplete\`, \`document_invalid\`, \`document_manipulated\`, \`document_not_readable\`, \`document_not_uploaded\`, \`document_type_not_supported\`, or \`document_too_large\`. A machine-readable code specifying the verification state for this document.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    legalEntityCompanyVerificationDocumentDetailsCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | front: The front of a document returned by a [file upload](https:\/\/stripe.com\/docs\/api\#create_file) with a \`purpose\` value of \`additional_verification\`.
    legalEntityCompanyVerificationDocumentFront :: (GHC.Maybe.Maybe LegalEntityCompanyVerificationDocumentFront'Variants)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON LegalEntityCompanyVerificationDocument where
  toJSON obj = Data.Aeson.Types.Internal.object ("back" Data.Aeson.Types.ToJSON..= legalEntityCompanyVerificationDocumentBack obj : "details" Data.Aeson.Types.ToJSON..= legalEntityCompanyVerificationDocumentDetails obj : "details_code" Data.Aeson.Types.ToJSON..= legalEntityCompanyVerificationDocumentDetailsCode obj : "front" Data.Aeson.Types.ToJSON..= legalEntityCompanyVerificationDocumentFront obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("back" Data.Aeson.Types.ToJSON..= legalEntityCompanyVerificationDocumentBack obj) GHC.Base.<> (("details" Data.Aeson.Types.ToJSON..= legalEntityCompanyVerificationDocumentDetails obj) GHC.Base.<> (("details_code" Data.Aeson.Types.ToJSON..= legalEntityCompanyVerificationDocumentDetailsCode obj) GHC.Base.<> ("front" Data.Aeson.Types.ToJSON..= legalEntityCompanyVerificationDocumentFront obj))))

instance Data.Aeson.Types.FromJSON.FromJSON LegalEntityCompanyVerificationDocument where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "LegalEntityCompanyVerificationDocument" (\obj -> (((GHC.Base.pure LegalEntityCompanyVerificationDocument GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "details")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "details_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "front"))

-- | Create a new 'LegalEntityCompanyVerificationDocument' with all required fields.
mkLegalEntityCompanyVerificationDocument :: LegalEntityCompanyVerificationDocument
mkLegalEntityCompanyVerificationDocument =
  LegalEntityCompanyVerificationDocument
    { legalEntityCompanyVerificationDocumentBack = GHC.Maybe.Nothing,
      legalEntityCompanyVerificationDocumentDetails = GHC.Maybe.Nothing,
      legalEntityCompanyVerificationDocumentDetailsCode = GHC.Maybe.Nothing,
      legalEntityCompanyVerificationDocumentFront = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @components.schemas.legal_entity_company_verification_document.properties.back.anyOf@ in the specification.
--
-- The back of a document returned by a [file upload](https:\/\/stripe.com\/docs\/api\#create_file) with a \`purpose\` value of \`additional_verification\`.
data LegalEntityCompanyVerificationDocumentBack'Variants
  = LegalEntityCompanyVerificationDocumentBack'Text Data.Text.Internal.Text
  | LegalEntityCompanyVerificationDocumentBack'File File
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON LegalEntityCompanyVerificationDocumentBack'Variants where
  toJSON (LegalEntityCompanyVerificationDocumentBack'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (LegalEntityCompanyVerificationDocumentBack'File a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON LegalEntityCompanyVerificationDocumentBack'Variants where
  parseJSON val = case (LegalEntityCompanyVerificationDocumentBack'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((LegalEntityCompanyVerificationDocumentBack'File Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the oneOf schema located at @components.schemas.legal_entity_company_verification_document.properties.front.anyOf@ in the specification.
--
-- The front of a document returned by a [file upload](https:\/\/stripe.com\/docs\/api\#create_file) with a \`purpose\` value of \`additional_verification\`.
data LegalEntityCompanyVerificationDocumentFront'Variants
  = LegalEntityCompanyVerificationDocumentFront'Text Data.Text.Internal.Text
  | LegalEntityCompanyVerificationDocumentFront'File File
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON LegalEntityCompanyVerificationDocumentFront'Variants where
  toJSON (LegalEntityCompanyVerificationDocumentFront'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (LegalEntityCompanyVerificationDocumentFront'File a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON LegalEntityCompanyVerificationDocumentFront'Variants where
  parseJSON val = case (LegalEntityCompanyVerificationDocumentFront'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((LegalEntityCompanyVerificationDocumentFront'File Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
