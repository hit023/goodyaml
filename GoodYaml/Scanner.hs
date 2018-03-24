module GoodYaml.Scanner where

import Data.ByteString

data Event =
    EventStreamStart
    | EventStreamEnd
    | EventDocumentStart
    | EventDocumentEnd
    | EventBlockSequenceStart
    | EventBlockSequenceEnd
    | EventBlockMappingStart
    | EventBlockMappingEnd
    | EventBlockEnd
    | EventFlowSequenceStart
    | EventFlowSequenceEnd
    | EventFlowMappingStart
    | EventFlowMappingEnd
    | EventAlias !AnchorName
    | EventScalar !ByteString !Tag !Style !Anchor
    | EventSequenceStart !Anchor
    | EventMappingStart !Anchor
    deriving (Show, Eq)

data Tag =
    StrTag
    | FloatTag
    | NullTag
    | BoolTag
    | SetTag
    | IntTag
    | SeqTag
    | MapTag
    | UriTag String
    | NoTag
    deriving (Show, Eq)

data Style =
    Any
   | Plain
   | SingleQuoted
   | DoubleQuoted
   | Literal
   | Folded
   | PlainNoTag
    deriving (Show, Eq)

type AnchorName = String
type Anchor = Maybe AnchorName
