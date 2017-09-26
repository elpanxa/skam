.class public Lcom/bea/xml/stream/MXParser;
.super Ljava/lang/Object;
.source "MXParser.java"

# interfaces
.implements Ljavax/xml/stream/Location;
.implements Ljavax/xml/stream/XMLStreamReader;


# static fields
.field protected static final CHAR_UTF8_BOM:C = '\ufeff'

.field private static final DOCDECL:I = 0x8000

.field protected static final ENCODING:[C

.field static final EOF_MSG:Ljava/lang/String; = "Unexpected end of stream"

.field protected static final FEATURE_NAMES_INTERNED:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#names-interned"

.field public static final FEATURE_PROCESS_DOCDECL:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#process-docdecl"

.field public static final FEATURE_PROCESS_NAMESPACES:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#process-namespaces"

.field public static final FEATURE_STAX_ENTITIES:Ljava/lang/String; = "javax.xml.stream.entities"

.field public static final FEATURE_STAX_NOTATIONS:Ljava/lang/String; = "javax.xml.stream.notations"

.field protected static final FEATURE_XML_ROUNDTRIP:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#xml-roundtrip"

.field protected static final LOOKUP_MAX:I = 0x400

.field protected static final LOOKUP_MAX_CHAR:C = '\u0400'

.field protected static final MAX_UNICODE_CHAR:I = 0x10ffff

.field protected static final NO:[C

.field private static final NO_CHARS:[C

.field private static final NO_INTS:[I

.field public static final NO_NAMESPACE:Ljava/lang/String;

.field private static final NO_STRINGS:[Ljava/lang/String;

.field protected static final READ_CHUNK_SIZE:I = 0x2000

.field protected static final STANDALONE:[C

.field private static final TEXT:I = 0x4000

.field private static final TRACE_SIZING:Z

.field public static final TYPES:[Ljava/lang/String;

.field protected static final VERSION:[C

.field protected static final YES:[C

.field static class$com$wutka$dtd$DTDAttlist:Ljava/lang/Class;

.field static class$com$wutka$dtd$DTDEntity:Ljava/lang/Class;

.field static class$com$wutka$dtd$DTDNotation:Ljava/lang/Class;

.field protected static lookupNameChar:[Z

.field protected static lookupNameStartChar:[Z


# instance fields
.field protected allStringsInterned:Z

.field protected attributeCount:I

.field protected attributeName:[Ljava/lang/String;

.field protected attributeNameHash:[I

.field protected attributePrefix:[Ljava/lang/String;

.field protected attributeUri:[Ljava/lang/String;

.field protected attributeValue:[Ljava/lang/String;

.field protected buf:[C

.field protected bufAbsoluteStart:I

.field protected bufEnd:I

.field protected bufLoadFactor:I

.field protected bufSoftLimit:I

.field protected bufStart:I

.field protected charEncodingScheme:Ljava/lang/String;

.field protected charRefOneCharBuf:[C

.field protected charRefTwoCharBuf:[C

.field protected columnNumber:I

.field private configurationContext:Lcom/bea/xml/stream/ConfigurationContextBase;

.field protected defaultAttributes:Ljava/util/HashMap;

.field protected depth:I

.field protected elName:[Ljava/lang/String;

.field protected elNamespaceCount:[I

.field protected elPrefix:[Ljava/lang/String;

.field protected elRawName:[[C

.field protected elRawNameEnd:[I

.field protected elUri:[Ljava/lang/String;

.field protected emptyElementTag:Z

.field protected entityEnd:I

.field protected entityName:[Ljava/lang/String;

.field protected entityNameBuf:[[C

.field protected entityNameHash:[I

.field protected entityRefName:Ljava/lang/String;

.field protected entityReplacement:[Ljava/lang/String;

.field protected entityReplacementBuf:[[C

.field protected entityValue:[C

.field protected eventType:I

.field protected inputEncoding:Ljava/lang/String;

.field protected lineNumber:I

.field protected localNamespaceEnd:I

.field protected localNamespacePrefix:[Ljava/lang/String;

.field protected localNamespacePrefixHash:[I

.field protected localNamespaceUri:[Ljava/lang/String;

.field protected mDtdIntSubset:Lcom/wutka/dtd/DTD;

.field protected namespaceEnd:I

.field protected namespacePrefix:[Ljava/lang/String;

.field protected namespacePrefixHash:[I

.field protected namespaceUri:[Ljava/lang/String;

.field protected pastEndTag:Z

.field protected pc:[C

.field protected pcEnd:I

.field protected pcStart:I

.field protected piData:Ljava/lang/String;

.field protected piTarget:Ljava/lang/String;

.field protected pos:I

.field protected posEnd:I

.field protected posStart:I

.field protected processNamespaces:Z

.field protected reachedEnd:Z

.field protected reader:Ljava/io/Reader;

.field private reportCdataEvent:Z

.field protected roundtripSupported:Z

.field protected seenAmpersand:Z

.field protected seenDocdecl:Z

.field protected seenEndTag:Z

.field protected seenMarkup:Z

.field protected seenRoot:Z

.field protected seenStartTag:Z

.field protected standalone:Z

.field protected standaloneSet:Z

.field protected text:Ljava/lang/String;

.field protected tokenize:Z

.field protected usePC:Z

.field protected xmlVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/16 v4, 0x400

    const/4 v3, 0x0

    .line 76
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "[UNKNOWN]"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "START_ELEMENT"

    aput-object v2, v0, v1

    const-string v1, "END_ELEMENT"

    aput-object v1, v0, v5

    const-string v1, "PROCESSING_INSTRUCTION"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "CHARACTERS"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "COMMENT"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "SPACE"

    aput-object v2, v0, v1

    const-string v1, "START_DOCUMENT"

    aput-object v1, v0, v7

    const/16 v1, 0x8

    const-string v2, "END_DOCUMENT"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ENTITY_REFERENCE"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ATTRIBUTE"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "DTD"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "CDATA"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "NAMESPACE"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "NOTATION_DECLARATION"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "ENTITY_DECLARATION"

    aput-object v2, v0, v1

    sput-object v0, Lcom/bea/xml/stream/MXParser;->TYPES:[Ljava/lang/String;

    .line 110
    const/4 v0, 0x0

    sput-object v0, Lcom/bea/xml/stream/MXParser;->NO_NAMESPACE:Ljava/lang/String;

    .line 257
    new-array v0, v4, [Z

    sput-object v0, Lcom/bea/xml/stream/MXParser;->lookupNameStartChar:[Z

    .line 258
    new-array v0, v4, [Z

    sput-object v0, Lcom/bea/xml/stream/MXParser;->lookupNameChar:[Z

    .line 268
    const/16 v0, 0x3a

    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->setNameStart(C)V

    .line 269
    const/16 v0, 0x41

    :goto_0
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_0

    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->setNameStart(C)V

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_0

    .line 270
    :cond_0
    const/16 v0, 0x5f

    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->setNameStart(C)V

    .line 271
    const/16 v0, 0x61

    :goto_1
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_1

    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->setNameStart(C)V

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_1

    .line 272
    :cond_1
    const/16 v0, 0xc0

    :goto_2
    const/16 v1, 0x2ff

    if-gt v0, v1, :cond_2

    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->setNameStart(C)V

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_2

    .line 273
    :cond_2
    const/16 v0, 0x370

    :goto_3
    const/16 v1, 0x37d

    if-gt v0, v1, :cond_3

    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->setNameStart(C)V

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_3

    .line 274
    :cond_3
    const/16 v0, 0x37f

    :goto_4
    if-ge v0, v4, :cond_4

    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->setNameStart(C)V

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_4

    .line 276
    :cond_4
    const/16 v0, 0x2d

    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->setName(C)V

    .line 277
    const/16 v0, 0x2e

    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->setName(C)V

    .line 278
    const/16 v0, 0x30

    :goto_5
    const/16 v1, 0x39

    if-gt v0, v1, :cond_5

    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->setName(C)V

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_5

    .line 279
    :cond_5
    const/16 v0, 0xb7

    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->setName(C)V

    .line 280
    const/16 v0, 0x300

    :goto_6
    const/16 v1, 0x36f

    if-gt v0, v1, :cond_6

    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->setName(C)V

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_6

    .line 424
    :cond_6
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/bea/xml/stream/MXParser;->NO_STRINGS:[Ljava/lang/String;

    .line 425
    new-array v0, v3, [I

    sput-object v0, Lcom/bea/xml/stream/MXParser;->NO_INTS:[I

    .line 426
    new-array v0, v3, [C

    sput-object v0, Lcom/bea/xml/stream/MXParser;->NO_CHARS:[C

    .line 3165
    new-array v0, v7, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/bea/xml/stream/MXParser;->VERSION:[C

    .line 3166
    const/16 v0, 0x8

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/bea/xml/stream/MXParser;->ENCODING:[C

    .line 3167
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/bea/xml/stream/MXParser;->STANDALONE:[C

    .line 3168
    new-array v0, v6, [C

    fill-array-data v0, :array_3

    sput-object v0, Lcom/bea/xml/stream/MXParser;->YES:[C

    .line 3169
    new-array v0, v5, [C

    fill-array-data v0, :array_4

    sput-object v0, Lcom/bea/xml/stream/MXParser;->NO:[C

    return-void

    .line 3165
    nop

    :array_0
    .array-data 2
        0x76s
        0x65s
        0x72s
        0x73s
        0x69s
        0x6fs
        0x6es
    .end array-data

    .line 3166
    nop

    :array_1
    .array-data 2
        0x65s
        0x6es
        0x63s
        0x6fs
        0x64s
        0x69s
        0x6es
        0x67s
    .end array-data

    .line 3167
    :array_2
    .array-data 2
        0x73s
        0x74s
        0x61s
        0x6es
        0x64s
        0x61s
        0x6cs
        0x6fs
        0x6es
        0x65s
    .end array-data

    .line 3168
    :array_3
    .array-data 2
        0x79s
        0x65s
        0x73s
    .end array-data

    .line 3169
    nop

    :array_4
    .array-data 2
        0x6es
        0x6fs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const-wide/32 v6, 0xf4240

    const/16 v1, 0x2000

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->reportCdataEvent:Z

    .line 141
    iput-boolean v4, p0, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    .line 142
    iput-boolean v4, p0, Lcom/bea/xml/stream/MXParser;->roundtripSupported:Z

    .line 165
    iput-object v5, p0, Lcom/bea/xml/stream/MXParser;->xmlVersion:Ljava/lang/String;

    .line 171
    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->standalone:Z

    .line 172
    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->standaloneSet:Z

    .line 431
    sget-object v0, Lcom/bea/xml/stream/MXParser;->NO_STRINGS:[Ljava/lang/String;

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->namespacePrefix:[Ljava/lang/String;

    .line 433
    sget-object v0, Lcom/bea/xml/stream/MXParser;->NO_STRINGS:[Ljava/lang/String;

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->namespaceUri:[Ljava/lang/String;

    .line 598
    const/16 v0, 0x5f

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->bufLoadFactor:I

    .line 606
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    cmp-long v0, v2, v6

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    .line 607
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->bufLoadFactor:I

    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    array-length v2, v2

    mul-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->bufSoftLimit:I

    .line 617
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    cmp-long v0, v2, v6

    if-lez v0, :cond_1

    :goto_1
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    .line 653
    iput-object v5, p0, Lcom/bea/xml/stream/MXParser;->entityValue:[C

    .line 2750
    new-array v0, v4, [C

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->charRefOneCharBuf:[C

    .line 2756
    iput-object v5, p0, Lcom/bea/xml/stream/MXParser;->charRefTwoCharBuf:[C

    .line 696
    return-void

    .line 606
    :cond_0
    const/16 v0, 0x100

    goto :goto_0

    .line 617
    :cond_1
    const/16 v1, 0x40

    goto :goto_1
.end method

.method private static final checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 1633
    if-eqz p0, :cond_0

    .line 1634
    :goto_0
    return-object p0

    :cond_0
    const-string p0, ""

    goto :goto_0
.end method

.method private final checkTextEvent()V
    .locals 3

    .prologue
    .line 1511
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->hasText()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1512
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Current state ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    invoke-static {v2}, Lcom/bea/xml/stream/MXParser;->eventTypeDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ") does not have textual content"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1514
    :cond_0
    return-void
.end method

.method private final checkTextEventXxx()V
    .locals 3

    .prologue
    .line 1517
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 1521
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "getTextXxx methods cannot be called for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    invoke-static {v2}, Lcom/bea/xml/stream/MXParser;->eventTypeDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1523
    :cond_0
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 3519
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static eventTypeDesc(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1638
    if-ltz p0, :cond_0

    sget-object v0, Lcom/bea/xml/stream/MXParser;->TYPES:[Ljava/lang/String;

    array-length v0, v0

    if-lt p0, v0, :cond_1

    :cond_0
    const-string v0, "[UNKNOWN]"

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/bea/xml/stream/MXParser;->TYPES:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method protected static final fastHash([CII)I
    .locals 2

    .prologue
    .line 534
    if-nez p2, :cond_1

    const/4 v0, 0x0

    .line 548
    :cond_0
    :goto_0
    return v0

    .line 536
    :cond_1
    aget-char v0, p0, p1

    .line 538
    shl-int/lit8 v0, v0, 0x7

    add-int v1, p1, p2

    add-int/lit8 v1, v1, -0x1

    aget-char v1, p0, v1

    add-int/2addr v0, v1

    .line 543
    const/16 v1, 0x10

    if-le p2, v1, :cond_2

    shl-int/lit8 v0, v0, 0x7

    div-int/lit8 v1, p2, 0x4

    add-int/2addr v1, p1

    aget-char v1, p0, v1

    add-int/2addr v0, v1

    .line 544
    :cond_2
    const/16 v1, 0x8

    if-le p2, v1, :cond_0

    shl-int/lit8 v0, v0, 0x7

    div-int/lit8 v1, p2, 0x2

    add-int/2addr v1, p1

    aget-char v1, p0, v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private static findFragment(I[CII)I
    .locals 4

    .prologue
    const/16 v3, 0x41

    .line 978
    if-ge p2, p0, :cond_0

    .line 980
    if-le p0, p3, :cond_5

    .line 992
    :goto_0
    return p3

    .line 983
    :cond_0
    sub-int v0, p3, p2

    if-le v0, v3, :cond_1

    .line 984
    add-int/lit8 p2, p3, -0xa

    .line 986
    :cond_1
    add-int/lit8 v0, p2, 0x1

    .line 987
    :cond_2
    add-int/lit8 v0, v0, -0x1

    if-le v0, p0, :cond_3

    .line 988
    sub-int v1, p3, v0

    if-le v1, v3, :cond_4

    :cond_3
    :goto_1
    move p3, v0

    .line 992
    goto :goto_0

    .line 989
    :cond_4
    aget-char v1, p1, v0

    .line 990
    const/16 v2, 0x3c

    if-ne v1, v2, :cond_2

    sub-int v1, p2, v0

    const/16 v2, 0xa

    if-le v1, v2, :cond_2

    goto :goto_1

    :cond_5
    move p3, p0

    goto :goto_0
.end method

.method private getLocalNamespacePrefix(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private getLocalNamespaceURI(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->namespaceUri:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private static isElementEvent(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1642
    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 657
    const/4 v0, 0x1

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->lineNumber:I

    .line 658
    iput v1, p0, Lcom/bea/xml/stream/MXParser;->columnNumber:I

    .line 659
    iput-boolean v1, p0, Lcom/bea/xml/stream/MXParser;->seenRoot:Z

    .line 660
    iput-boolean v1, p0, Lcom/bea/xml/stream/MXParser;->reachedEnd:Z

    .line 661
    const/4 v0, 0x7

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    .line 662
    iput-boolean v1, p0, Lcom/bea/xml/stream/MXParser;->emptyElementTag:Z

    .line 664
    iput v1, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    .line 666
    iput v1, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    .line 668
    iput v1, p0, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    .line 669
    iput v1, p0, Lcom/bea/xml/stream/MXParser;->localNamespaceEnd:I

    .line 671
    iput v1, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    .line 673
    iput-object v2, p0, Lcom/bea/xml/stream/MXParser;->reader:Ljava/io/Reader;

    .line 674
    iput-object v2, p0, Lcom/bea/xml/stream/MXParser;->inputEncoding:Ljava/lang/String;

    .line 676
    iput v1, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    .line 677
    iput v1, p0, Lcom/bea/xml/stream/MXParser;->bufStart:I

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->bufEnd:I

    .line 678
    iput v1, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    .line 680
    iput v1, p0, Lcom/bea/xml/stream/MXParser;->pcStart:I

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    .line 682
    iput-boolean v1, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    .line 684
    iput-boolean v1, p0, Lcom/bea/xml/stream/MXParser;->seenStartTag:Z

    .line 685
    iput-boolean v1, p0, Lcom/bea/xml/stream/MXParser;->seenEndTag:Z

    .line 686
    iput-boolean v1, p0, Lcom/bea/xml/stream/MXParser;->pastEndTag:Z

    .line 687
    iput-boolean v1, p0, Lcom/bea/xml/stream/MXParser;->seenAmpersand:Z

    .line 688
    iput-boolean v1, p0, Lcom/bea/xml/stream/MXParser;->seenMarkup:Z

    .line 689
    iput-boolean v1, p0, Lcom/bea/xml/stream/MXParser;->seenDocdecl:Z

    .line 690
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->resetStringCache()V

    .line 692
    return-void
.end method

.method private static final setName(C)V
    .locals 2

    .prologue
    .line 262
    sget-object v0, Lcom/bea/xml/stream/MXParser;->lookupNameChar:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p0

    return-void
.end method

.method private static final setNameStart(C)V
    .locals 2

    .prologue
    .line 265
    sget-object v0, Lcom/bea/xml/stream/MXParser;->lookupNameStartChar:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p0

    invoke-static {p0}, Lcom/bea/xml/stream/MXParser;->setName(C)V

    return-void
.end method

.method private throwIllegalState(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 3833
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Current state ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    invoke-static {v2}, Lcom/bea/xml/stream/MXParser;->eventTypeDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ") not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p1}, Lcom/bea/xml/stream/MXParser;->eventTypeDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwIllegalState([I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3839
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 3840
    aget v2, p1, v0

    invoke-static {v2}, Lcom/bea/xml/stream/MXParser;->eventTypeDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3841
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    .line 3842
    :goto_0
    if-ge v0, v2, :cond_0

    .line 3843
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3844
    aget v3, p1, v0

    invoke-static {v3}, Lcom/bea/xml/stream/MXParser;->eventTypeDesc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3842
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3846
    :cond_0
    const-string v0, " or "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3847
    aget v0, p1, v2

    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->eventTypeDesc(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3849
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Current state ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    invoke-static {v3}, Lcom/bea/xml/stream/MXParser;->eventTypeDesc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ") not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwNotNameStart(C)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 3855
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "expected name start character and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0
.end method


# virtual methods
.method protected addDefaultAttributes(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2422
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->defaultAttributes:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 2447
    :cond_0
    return-void

    .line 2423
    :cond_1
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->defaultAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wutka/dtd/DTDAttlist;

    .line 2424
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 2425
    invoke-virtual {v0}, Lcom/wutka/dtd/DTDAttlist;->getAttribute()[Lcom/wutka/dtd/DTDAttribute;

    move-result-object v3

    move v0, v1

    .line 2426
    :goto_0
    array-length v2, v3

    if-ge v0, v2, :cond_0

    .line 2427
    aget-object v4, v3, v0

    .line 2428
    invoke-virtual {v4}, Lcom/wutka/dtd/DTDAttribute;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2430
    iget v5, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    move v2, v1

    .line 2431
    :goto_1
    if-ge v2, v5, :cond_4

    .line 2432
    iget-object v6, p0, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v4}, Lcom/wutka/dtd/DTDAttribute;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2433
    const/4 v2, 0x1

    .line 2437
    :goto_2
    if-nez v2, :cond_2

    .line 2438
    iget v2, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    .line 2439
    iget v2, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/MXParser;->ensureAttributesCapacity(I)V

    .line 2440
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->attributePrefix:[Ljava/lang/String;

    iget v5, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    aput-object v6, v2, v5

    .line 2441
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->attributeUri:[Ljava/lang/String;

    iget v5, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    add-int/lit8 v5, v5, -0x1

    sget-object v6, Lcom/bea/xml/stream/MXParser;->NO_NAMESPACE:Ljava/lang/String;

    aput-object v6, v2, v5

    .line 2442
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    iget v5, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4}, Lcom/wutka/dtd/DTDAttribute;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .line 2443
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->attributeValue:[Ljava/lang/String;

    iget v5, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4}, Lcom/wutka/dtd/DTDAttribute;->getDefaultValue()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    .line 2426
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2431
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_2
.end method

.method protected checkCharValidity(IZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const v3, 0x10ffff

    .line 351
    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    .line 352
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->isS(C)Z

    move-result v0

    if-nez v0, :cond_2

    .line 353
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Illegal white space character (code 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_0
    const v0, 0xd800

    if-lt p1, v0, :cond_2

    .line 356
    const v0, 0xdfff

    if-gt p1, v0, :cond_1

    .line 357
    if-nez p2, :cond_2

    .line 358
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Illegal character (code 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "): surrogate characters are not valid XML characters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 361
    :cond_1
    if-le p1, v3, :cond_2

    .line 362
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Illegal character (code 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "), past max. Unicode character 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 366
    :cond_2
    return-void
.end method

.method public checkForXMLDecl()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 775
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->reader:Ljava/io/Reader;

    const/4 v2, 0x7

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 776
    iput-object v1, p0, Lcom/bea/xml/stream/MXParser;->reader:Ljava/io/Reader;

    .line 777
    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/io/BufferedReader;->mark(I)V

    .line 780
    invoke-virtual {v1}, Ljava/io/BufferedReader;->read()I

    move-result v0

    .line 781
    const v2, 0xfeff

    if-ne v0, v2, :cond_0

    .line 782
    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/io/BufferedReader;->mark(I)V

    .line 783
    invoke-virtual {v1}, Ljava/io/BufferedReader;->read()I

    move-result v0

    .line 786
    :cond_0
    const/16 v2, 0x3c

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Ljava/io/BufferedReader;->read()I

    move-result v0

    const/16 v2, 0x3f

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Ljava/io/BufferedReader;->read()I

    move-result v0

    const/16 v2, 0x78

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Ljava/io/BufferedReader;->read()I

    move-result v0

    const/16 v2, 0x6d

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Ljava/io/BufferedReader;->read()I

    move-result v0

    const/16 v2, 0x6c

    if-ne v0, v2, :cond_1

    .line 791
    invoke-virtual {v1}, Ljava/io/BufferedReader;->reset()V

    .line 792
    const/4 v0, 0x1

    .line 795
    :goto_0
    return v0

    .line 794
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    const/4 v0, 0x0

    goto :goto_0

    .line 796
    :catch_0
    move-exception v0

    .line 797
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {v1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 1355
    return-void
.end method

.method public defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 866
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->ensureEntityCapacity()V

    .line 869
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 870
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->entityName:[Ljava/lang/String;

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v0, v5, v3}, Lcom/bea/xml/stream/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 871
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->entityNameBuf:[[C

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    aput-object v0, v1, v2

    .line 873
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityReplacement:[Ljava/lang/String;

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    aput-object p2, v0, v1

    .line 878
    if-nez p2, :cond_1

    sget-object v0, Lcom/bea/xml/stream/MXParser;->NO_CHARS:[C

    .line 879
    :goto_0
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->entityReplacementBuf:[[C

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    aput-object v0, v1, v2

    .line 880
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-nez v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityNameHash:[I

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->entityNameBuf:[[C

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->entityNameBuf:[[C

    iget v4, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    aget-object v3, v3, v4

    array-length v3, v3

    invoke-static {v2, v5, v3}, Lcom/bea/xml/stream/MXParser;->fastHash([CII)I

    move-result v2

    aput v2, v0, v1

    .line 884
    :cond_0
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    .line 887
    return-void

    .line 878
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0
.end method

.method protected ensureAttributesCapacity(I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 385
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    array-length v0, v0

    move v3, v0

    .line 386
    :goto_0
    if-lt p1, v3, :cond_5

    .line 387
    const/4 v0, 0x7

    if-le p1, v0, :cond_7

    mul-int/lit8 v0, p1, 0x2

    move v2, v0

    .line 391
    :goto_1
    if-lez v3, :cond_8

    const/4 v0, 0x1

    .line 394
    :goto_2
    new-array v4, v2, [Ljava/lang/String;

    .line 395
    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    :cond_0
    iput-object v4, p0, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    .line 398
    new-array v4, v2, [Ljava/lang/String;

    .line 399
    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->attributePrefix:[Ljava/lang/String;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 400
    :cond_1
    iput-object v4, p0, Lcom/bea/xml/stream/MXParser;->attributePrefix:[Ljava/lang/String;

    .line 402
    new-array v4, v2, [Ljava/lang/String;

    .line 403
    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->attributeUri:[Ljava/lang/String;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    :cond_2
    iput-object v4, p0, Lcom/bea/xml/stream/MXParser;->attributeUri:[Ljava/lang/String;

    .line 406
    new-array v4, v2, [Ljava/lang/String;

    .line 407
    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->attributeValue:[Ljava/lang/String;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 408
    :cond_3
    iput-object v4, p0, Lcom/bea/xml/stream/MXParser;->attributeValue:[Ljava/lang/String;

    .line 410
    iget-boolean v4, p0, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-nez v4, :cond_5

    .line 411
    new-array v2, v2, [I

    .line 412
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->attributeNameHash:[I

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 413
    :cond_4
    iput-object v2, p0, Lcom/bea/xml/stream/MXParser;->attributeNameHash:[I

    .line 419
    :cond_5
    return-void

    :cond_6
    move v3, v1

    .line 385
    goto :goto_0

    .line 387
    :cond_7
    const/16 v0, 0x8

    move v2, v0

    goto :goto_1

    :cond_8
    move v0, v1

    .line 391
    goto :goto_2
.end method

.method protected ensureElementsCapacity()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 194
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->elName:[Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->elName:[Ljava/lang/String;

    array-length v0, v0

    .line 195
    :goto_0
    iget v2, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v0, :cond_5

    .line 197
    iget v2, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    const/4 v3, 0x7

    if-lt v2, v3, :cond_7

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    mul-int/lit8 v2, v2, 0x2

    :goto_1
    add-int/lit8 v3, v2, 0x2

    .line 201
    if-lez v0, :cond_8

    const/4 v2, 0x1

    .line 203
    :goto_2
    new-array v4, v3, [Ljava/lang/String;

    .line 204
    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->elName:[Ljava/lang/String;

    invoke-static {v5, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    :cond_0
    iput-object v4, p0, Lcom/bea/xml/stream/MXParser;->elName:[Ljava/lang/String;

    .line 206
    new-array v4, v3, [Ljava/lang/String;

    .line 207
    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->elPrefix:[Ljava/lang/String;

    invoke-static {v5, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    :cond_1
    iput-object v4, p0, Lcom/bea/xml/stream/MXParser;->elPrefix:[Ljava/lang/String;

    .line 209
    new-array v4, v3, [Ljava/lang/String;

    .line 210
    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->elUri:[Ljava/lang/String;

    invoke-static {v5, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    :cond_2
    iput-object v4, p0, Lcom/bea/xml/stream/MXParser;->elUri:[Ljava/lang/String;

    .line 213
    new-array v4, v3, [I

    .line 214
    if-eqz v2, :cond_9

    .line 215
    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->elNamespaceCount:[I

    invoke-static {v5, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    :goto_3
    iput-object v4, p0, Lcom/bea/xml/stream/MXParser;->elNamespaceCount:[I

    .line 223
    new-array v4, v3, [I

    .line 224
    if-eqz v2, :cond_3

    .line 225
    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->elRawNameEnd:[I

    invoke-static {v5, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    :cond_3
    iput-object v4, p0, Lcom/bea/xml/stream/MXParser;->elRawNameEnd:[I

    .line 229
    new-array v3, v3, [[C

    .line 230
    if-eqz v2, :cond_4

    .line 231
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->elRawName:[[C

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    :cond_4
    iput-object v3, p0, Lcom/bea/xml/stream/MXParser;->elRawName:[[C

    .line 249
    :cond_5
    return-void

    :cond_6
    move v0, v1

    .line 194
    goto :goto_0

    .line 197
    :cond_7
    const/16 v2, 0x8

    goto :goto_1

    :cond_8
    move v2, v1

    .line 201
    goto :goto_2

    .line 218
    :cond_9
    aput v1, v4, v1

    goto :goto_3
.end method

.method protected ensureEntityCapacity()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 561
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityReplacementBuf:[[C

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityReplacementBuf:[[C

    array-length v0, v0

    .line 562
    :goto_0
    iget v2, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    if-lt v2, v0, :cond_2

    .line 563
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    const/4 v2, 0x7

    if-le v0, v2, :cond_4

    iget v0, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    mul-int/lit8 v0, v0, 0x2

    .line 567
    :goto_1
    new-array v2, v0, [Ljava/lang/String;

    .line 568
    new-array v3, v0, [[C

    .line 569
    new-array v4, v0, [Ljava/lang/String;

    .line 570
    new-array v5, v0, [[C

    .line 571
    iget-object v6, p0, Lcom/bea/xml/stream/MXParser;->entityName:[Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 572
    iget-object v6, p0, Lcom/bea/xml/stream/MXParser;->entityName:[Ljava/lang/String;

    iget v7, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    invoke-static {v6, v1, v2, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 573
    iget-object v6, p0, Lcom/bea/xml/stream/MXParser;->entityNameBuf:[[C

    iget v7, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    invoke-static {v6, v1, v3, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 574
    iget-object v6, p0, Lcom/bea/xml/stream/MXParser;->entityReplacement:[Ljava/lang/String;

    iget v7, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    invoke-static {v6, v1, v4, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 575
    iget-object v6, p0, Lcom/bea/xml/stream/MXParser;->entityReplacementBuf:[[C

    iget v7, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    invoke-static {v6, v1, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 577
    :cond_0
    iput-object v2, p0, Lcom/bea/xml/stream/MXParser;->entityName:[Ljava/lang/String;

    .line 578
    iput-object v3, p0, Lcom/bea/xml/stream/MXParser;->entityNameBuf:[[C

    .line 579
    iput-object v4, p0, Lcom/bea/xml/stream/MXParser;->entityReplacement:[Ljava/lang/String;

    .line 580
    iput-object v5, p0, Lcom/bea/xml/stream/MXParser;->entityReplacementBuf:[[C

    .line 582
    iget-boolean v2, p0, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-nez v2, :cond_2

    .line 583
    new-array v0, v0, [I

    .line 584
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->entityNameHash:[I

    if-eqz v2, :cond_1

    .line 585
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->entityNameHash:[I

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 587
    :cond_1
    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityNameHash:[I

    .line 590
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 561
    goto :goto_0

    .line 563
    :cond_4
    const/16 v0, 0x8

    goto :goto_1
.end method

.method protected ensureLocalNamespacesCapacity(I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 474
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->localNamespacePrefix:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->localNamespacePrefix:[Ljava/lang/String;

    array-length v0, v0

    .line 475
    :goto_0
    if-lt p1, v0, :cond_2

    .line 476
    const/4 v0, 0x7

    if-le p1, v0, :cond_4

    mul-int/lit8 v0, p1, 0x2

    .line 480
    :goto_1
    new-array v2, v0, [Ljava/lang/String;

    .line 481
    new-array v3, v0, [Ljava/lang/String;

    .line 482
    iget-object v4, p0, Lcom/bea/xml/stream/MXParser;->localNamespacePrefix:[Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 483
    iget-object v4, p0, Lcom/bea/xml/stream/MXParser;->localNamespacePrefix:[Ljava/lang/String;

    iget v5, p0, Lcom/bea/xml/stream/MXParser;->localNamespaceEnd:I

    invoke-static {v4, v1, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 485
    iget-object v4, p0, Lcom/bea/xml/stream/MXParser;->localNamespaceUri:[Ljava/lang/String;

    iget v5, p0, Lcom/bea/xml/stream/MXParser;->localNamespaceEnd:I

    invoke-static {v4, v1, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 488
    :cond_0
    iput-object v2, p0, Lcom/bea/xml/stream/MXParser;->localNamespacePrefix:[Ljava/lang/String;

    .line 489
    iput-object v3, p0, Lcom/bea/xml/stream/MXParser;->localNamespaceUri:[Ljava/lang/String;

    .line 492
    iget-boolean v2, p0, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-nez v2, :cond_2

    .line 493
    new-array v0, v0, [I

    .line 494
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->localNamespacePrefixHash:[I

    if-eqz v2, :cond_1

    .line 495
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->localNamespacePrefixHash:[I

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->localNamespaceEnd:I

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 498
    :cond_1
    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->localNamespacePrefixHash:[I

    .line 503
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 474
    goto :goto_0

    .line 476
    :cond_4
    const/16 v0, 0x8

    goto :goto_1
.end method

.method protected ensureNamespacesCapacity(I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 436
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->namespacePrefix:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->namespacePrefix:[Ljava/lang/String;

    array-length v0, v0

    .line 437
    :goto_0
    if-lt p1, v0, :cond_2

    .line 438
    const/4 v0, 0x7

    if-le p1, v0, :cond_4

    mul-int/lit8 v0, p1, 0x2

    .line 442
    :goto_1
    new-array v2, v0, [Ljava/lang/String;

    .line 443
    new-array v3, v0, [Ljava/lang/String;

    .line 444
    iget-object v4, p0, Lcom/bea/xml/stream/MXParser;->namespacePrefix:[Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 445
    iget-object v4, p0, Lcom/bea/xml/stream/MXParser;->namespacePrefix:[Ljava/lang/String;

    iget v5, p0, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    invoke-static {v4, v1, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 447
    iget-object v4, p0, Lcom/bea/xml/stream/MXParser;->namespaceUri:[Ljava/lang/String;

    iget v5, p0, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    invoke-static {v4, v1, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 450
    :cond_0
    iput-object v2, p0, Lcom/bea/xml/stream/MXParser;->namespacePrefix:[Ljava/lang/String;

    .line 451
    iput-object v3, p0, Lcom/bea/xml/stream/MXParser;->namespaceUri:[Ljava/lang/String;

    .line 454
    iget-boolean v2, p0, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-nez v2, :cond_2

    .line 455
    new-array v0, v0, [I

    .line 456
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->namespacePrefixHash:[I

    if-eqz v2, :cond_1

    .line 457
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->namespacePrefixHash:[I

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 460
    :cond_1
    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->namespacePrefixHash:[I

    .line 465
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 436
    goto :goto_0

    .line 438
    :cond_4
    const/16 v0, 0x8

    goto :goto_1
.end method

.method protected ensurePC(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3754
    const/16 v0, 0x2000

    if-le p1, v0, :cond_0

    mul-int/lit8 v0, p1, 0x2

    .line 3755
    :goto_0
    new-array v0, v0, [C

    .line 3757
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3758
    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    .line 3760
    return-void

    .line 3754
    :cond_0
    const/16 v0, 0x4000

    goto :goto_0
.end method

.method protected fillBuf()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x2000

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3645
    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->reader:Ljava/io/Reader;

    if-nez v3, :cond_0

    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "reader must be set before parsing is started"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3649
    :cond_0
    iget v3, p0, Lcom/bea/xml/stream/MXParser;->bufEnd:I

    iget v4, p0, Lcom/bea/xml/stream/MXParser;->bufSoftLimit:I

    if-le v3, v4, :cond_2

    .line 3652
    iget v3, p0, Lcom/bea/xml/stream/MXParser;->bufStart:I

    iget v4, p0, Lcom/bea/xml/stream/MXParser;->bufSoftLimit:I

    if-le v3, v4, :cond_3

    move v3, v1

    .line 3654
    :goto_0
    if-nez v3, :cond_a

    .line 3656
    iget v4, p0, Lcom/bea/xml/stream/MXParser;->bufStart:I

    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    array-length v5, v5

    div-int/lit8 v5, v5, 0x2

    if-ge v4, v5, :cond_4

    .line 3666
    :goto_1
    if-eqz v3, :cond_5

    .line 3669
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->bufStart:I

    iget-object v4, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v5, p0, Lcom/bea/xml/stream/MXParser;->bufEnd:I

    iget v6, p0, Lcom/bea/xml/stream/MXParser;->bufStart:I

    sub-int/2addr v5, v6

    invoke-static {v1, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3685
    :cond_1
    :goto_2
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->bufEnd:I

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->bufStart:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->bufEnd:I

    .line 3686
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->bufStart:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    .line 3687
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->bufStart:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 3688
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->bufStart:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 3689
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->bufStart:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    .line 3690
    iput v2, p0, Lcom/bea/xml/stream/MXParser;->bufStart:I

    .line 3693
    :cond_2
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    array-length v1, v1

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->bufEnd:I

    sub-int/2addr v1, v2

    .line 3694
    if-le v1, v0, :cond_7

    .line 3698
    :goto_3
    :try_start_0
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->reader:Ljava/io/Reader;

    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->bufEnd:I

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/Reader;->read([CII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3702
    if-lez v0, :cond_8

    .line 3703
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->bufEnd:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->bufEnd:I

    .line 3704
    return-void

    :cond_3
    move v3, v2

    .line 3652
    goto :goto_0

    :cond_4
    move v3, v1

    move v1, v2

    .line 3661
    goto :goto_1

    .line 3672
    :cond_5
    if-eqz v1, :cond_6

    .line 3673
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    .line 3674
    new-array v1, v1, [C

    .line 3676
    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v4, p0, Lcom/bea/xml/stream/MXParser;->bufStart:I

    iget v5, p0, Lcom/bea/xml/stream/MXParser;->bufEnd:I

    iget v6, p0, Lcom/bea/xml/stream/MXParser;->bufStart:I

    sub-int/2addr v5, v6

    invoke-static {v3, v4, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3677
    iput-object v1, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    .line 3678
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->bufLoadFactor:I

    if-lez v1, :cond_1

    .line 3679
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->bufLoadFactor:I

    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    array-length v3, v3

    mul-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->bufSoftLimit:I

    goto :goto_2

    .line 3683
    :cond_6
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "internal error in fillBuffer()"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move v0, v1

    .line 3694
    goto :goto_3

    .line 3699
    :catch_0
    move-exception v0

    .line 3700
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {v1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 3706
    :cond_8
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 3707
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "no more data available"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3709
    :cond_9
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "error reading input, returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    move v1, v2

    goto/16 :goto_1
.end method

.method public getAttributeCount()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1108
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    if-eq v0, v1, :cond_0

    .line 1110
    invoke-direct {p0, v1}, Lcom/bea/xml/stream/MXParser;->throwIllegalState(I)Ljava/lang/String;

    .line 1112
    :cond_0
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    return v0
.end method

.method public getAttributeLocalName(I)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1128
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    if-eq v0, v1, :cond_0

    .line 1129
    invoke-direct {p0, v1}, Lcom/bea/xml/stream/MXParser;->throwIllegalState(I)Ljava/lang/String;

    .line 1131
    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    if-lt p1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "attribute position must be 0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1133
    :cond_2
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getAttributeName(I)Ljavax/xml/namespace/QName;
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1647
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    if-eq v0, v1, :cond_0

    .line 1648
    invoke-direct {p0, v1}, Lcom/bea/xml/stream/MXParser;->throwIllegalState(I)Ljava/lang/String;

    .line 1650
    :cond_0
    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/MXParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bea/xml/stream/MXParser;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/MXParser;->getAttributeLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/MXParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bea/xml/stream/MXParser;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1117
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    if-eq v0, v1, :cond_0

    .line 1118
    invoke-direct {p0, v1}, Lcom/bea/xml/stream/MXParser;->throwIllegalState(I)Ljava/lang/String;

    .line 1120
    :cond_0
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/bea/xml/stream/MXParser;->NO_NAMESPACE:Ljava/lang/String;

    .line 1123
    :goto_0
    return-object v0

    .line 1121
    :cond_1
    if-ltz p1, :cond_2

    iget v0, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    if-lt p1, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "attribute position must be 0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1123
    :cond_3
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1138
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    if-eq v0, v1, :cond_0

    .line 1139
    invoke-direct {p0, v1}, Lcom/bea/xml/stream/MXParser;->throwIllegalState(I)Ljava/lang/String;

    .line 1141
    :cond_0
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1144
    :goto_0
    return-object v0

    .line 1142
    :cond_1
    if-ltz p1, :cond_2

    iget v0, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    if-lt p1, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "attribute position must be 0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1144
    :cond_3
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->attributePrefix:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1148
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    if-eq v0, v1, :cond_0

    .line 1149
    invoke-direct {p0, v1}, Lcom/bea/xml/stream/MXParser;->throwIllegalState(I)Ljava/lang/String;

    .line 1151
    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    if-lt p1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "attribute position must be 0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1153
    :cond_2
    const-string v0, "CDATA"

    return-object v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1167
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    if-eq v0, v1, :cond_0

    .line 1168
    invoke-direct {p0, v1}, Lcom/bea/xml/stream/MXParser;->throwIllegalState(I)Ljava/lang/String;

    .line 1170
    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    if-lt p1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "attribute position must be 0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1172
    :cond_2
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->attributeValue:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 1178
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    if-eq v1, v2, :cond_0

    .line 1179
    invoke-direct {p0, v2}, Lcom/bea/xml/stream/MXParser;->throwIllegalState(I)Ljava/lang/String;

    .line 1181
    :cond_0
    if-nez p2, :cond_1

    .line 1182
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "attribute name can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1185
    :cond_1
    if-eqz p1, :cond_4

    .line 1186
    :goto_0
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    if-ge v0, v1, :cond_5

    .line 1190
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1193
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->attributeValue:[Ljava/lang/String;

    aget-object v0, v1, v0

    .line 1203
    :goto_1
    return-object v0

    .line 1186
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1197
    :cond_3
    add-int/lit8 v0, v0, 0x1

    :cond_4
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    if-ge v0, v1, :cond_5

    .line 1198
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1199
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->attributeValue:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_1

    .line 1203
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getAttributes()Ljava/util/Iterator;
    .locals 9

    .prologue
    .line 1454
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->hasAttributes()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/bea/xml/stream/util/EmptyIterator;->emptyIterator:Lcom/bea/xml/stream/util/EmptyIterator;

    .line 1464
    :goto_0
    return-object v0

    .line 1455
    :cond_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getAttributeCount()I

    move-result v7

    .line 1456
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1457
    const/4 v0, 0x0

    move v6, v0

    :goto_1
    if-ge v6, v7, :cond_1

    .line 1458
    new-instance v0, Lcom/bea/xml/stream/AttributeBase;

    invoke-virtual {p0, v6}, Lcom/bea/xml/stream/MXParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v6}, Lcom/bea/xml/stream/MXParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v6}, Lcom/bea/xml/stream/MXParser;->getAttributeLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v6}, Lcom/bea/xml/stream/MXParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v6}, Lcom/bea/xml/stream/MXParser;->getAttributeType(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/bea/xml/stream/AttributeBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1457
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    .line 1464
    :cond_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public getCharacterEncodingScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1691
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->charEncodingScheme:Ljava/lang/String;

    return-object v0
.end method

.method public getCharacterOffset()I
    .locals 1

    .prologue
    .line 1629
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    return v0
.end method

.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 1026
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->columnNumber:I

    return v0
.end method

.method public getConfigurationContext()Lcom/bea/xml/stream/ConfigurationContextBase;
    .locals 1

    .prologue
    .line 3790
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->configurationContext:Lcom/bea/xml/stream/ConfigurationContextBase;

    return-object v0
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 972
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    return v0
.end method

.method public getElementText()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 1314
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1315
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getEventType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 1316
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "Precondition for readText is getEventType() == START_ELEMENT"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1319
    :cond_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->next()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 1320
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "Unexpected end of Document"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1321
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->isStartElement()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1322
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "Unexpected Element start"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1323
    :cond_2
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->isCharacters()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getEventType()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_4

    .line 1324
    :cond_3
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1325
    :cond_4
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->isEndElement()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1326
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1624
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getInputEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEventType()I
    .locals 1

    .prologue
    .line 1207
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 746
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "feature name should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 747
    :cond_0
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 748
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    .line 760
    :cond_1
    :goto_0
    return v0

    .line 751
    :cond_2
    const-string v1, "http://xmlpull.org/v1/doc/features.html#names-interned"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 753
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 757
    const-string v1, "http://xmlpull.org/v1/doc/features.html#xml-roundtrip"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 758
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->inputEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 1021
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->lineNumber:I

    return v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1071
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->elName:[Ljava/lang/String;

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    aget-object v0, v0, v1

    .line 1085
    :goto_0
    return-object v0

    .line 1074
    :cond_0
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1075
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->elName:[Ljava/lang/String;

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    aget-object v0, v0, v1

    goto :goto_0

    .line 1076
    :cond_1
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    .line 1077
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityRefName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1078
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/bea/xml/stream/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityRefName:Ljava/lang/String;

    .line 1080
    :cond_2
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityRefName:Ljava/lang/String;

    goto :goto_0

    .line 1085
    :cond_3
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/bea/xml/stream/MXParser;->throwIllegalState([I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x9
    .end array-data
.end method

.method public getLocalNamespaceCount()I
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->elNamespaceCount:[I

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    .line 507
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    sub-int v0, v1, v0

    return v0
.end method

.method public getLocation()Ljavax/xml/stream/Location;
    .locals 0

    .prologue
    .line 3775
    return-object p0
.end method

.method public getLocationURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1029
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljavax/xml/namespace/QName;
    .locals 4

    .prologue
    .line 1661
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->isElementEvent(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1662
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Current state not START_ELEMENT or END_ELEMENT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1664
    :cond_0
    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bea/xml/stream/MXParser;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bea/xml/stream/MXParser;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;
    .locals 4

    .prologue
    .line 3026
    new-instance v0, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;

    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->namespacePrefix:[Ljava/lang/String;

    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->namespaceUri:[Ljava/lang/String;

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    invoke-direct {v0, v1, v2, v3}, Lcom/bea/xml/stream/ReadOnlyNamespaceContextBase;-><init>([Ljava/lang/String;[Ljava/lang/String;I)V

    return-object v0
.end method

.method public getNamespaceCount()I
    .locals 1

    .prologue
    .line 892
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->isElementEvent(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 893
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/bea/xml/stream/MXParser;->throwIllegalState([I)Ljava/lang/String;

    .line 895
    :cond_0
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->getNamespaceCount(I)I

    move-result v0

    return v0

    .line 893
    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method public getNamespaceCount(I)I
    .locals 3

    .prologue
    .line 900
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 901
    :cond_0
    const/4 v0, 0x0

    .line 906
    :goto_0
    return v0

    .line 905
    :cond_1
    if-gez p1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "namespace count may be 0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 906
    :cond_2
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->elNamespaceCount:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->elNamespaceCount:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 911
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->isElementEvent(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 912
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/bea/xml/stream/MXParser;->throwIllegalState([I)Ljava/lang/String;

    .line 914
    :cond_0
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    .line 915
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->getNamespaceCount(I)I

    move-result v1

    .line 916
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->elNamespaceCount:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v2, v0

    add-int/2addr v0, p1

    .line 917
    if-ge p1, v1, :cond_1

    .line 918
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object v0, v1, v0

    return-object v0

    .line 920
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " exceeded number of available namespaces "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 912
    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 1062
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    if-ne v0, v2, :cond_2

    .line 1064
    :cond_0
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->elUri:[Ljava/lang/String;

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    aget-object v0, v0, v1

    .line 1066
    :goto_0
    return-object v0

    .line 1064
    :cond_1
    sget-object v0, Lcom/bea/xml/stream/MXParser;->NO_NAMESPACE:Ljava/lang/String;

    goto :goto_0

    .line 1066
    :cond_2
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/bea/xml/stream/MXParser;->throwIllegalState([I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method public getNamespaceURI(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 927
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->isElementEvent(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 928
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/bea/xml/stream/MXParser;->throwIllegalState([I)Ljava/lang/String;

    .line 930
    :cond_0
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    .line 931
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->getNamespaceCount(I)I

    move-result v1

    .line 932
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->elNamespaceCount:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v2, v0

    add-int/2addr v0, p1

    .line 933
    if-ge p1, v1, :cond_1

    .line 934
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->namespaceUri:[Ljava/lang/String;

    aget-object v0, v1, v0

    return-object v0

    .line 936
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " exceedded number of available namespaces "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 928
    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 944
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->isElementEvent(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 945
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/bea/xml/stream/MXParser;->throwIllegalState([I)Ljava/lang/String;

    .line 948
    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 949
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 950
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 951
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->namespaceUri:[Ljava/lang/String;

    aget-object v0, v1, v0

    .line 967
    :goto_1
    return-object v0

    .line 949
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 954
    :cond_2
    const-string v0, "xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 955
    const-string v0, "http://www.w3.org/XML/1998/namespace"

    goto :goto_1

    .line 956
    :cond_3
    const-string v0, "xmlns"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 957
    const-string v0, "http://www.w3.org/2000/xmlns/"

    goto :goto_1

    .line 960
    :cond_4
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_6

    .line 961
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_5

    .line 962
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->namespaceUri:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_1

    .line 960
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 967
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 945
    nop

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method public getNamespaces()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 1485
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->hasNamespaces()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/bea/xml/stream/util/EmptyIterator;->emptyIterator:Lcom/bea/xml/stream/util/EmptyIterator;

    .line 1487
    :goto_0
    return-object v0

    .line 1486
    :cond_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocalNamespaceCount()I

    move-result v0

    .line 1487
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    invoke-virtual {p0, v1, v0}, Lcom/bea/xml/stream/MXParser;->internalGetNamespaces(II)Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public getOutOfScopeNamespaces()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->elNamespaceCount:[I

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    .line 1492
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->elNamespaceCount:[I

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    aget v1, v1, v2

    .line 1493
    sub-int v0, v1, v0

    .line 1494
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    invoke-virtual {p0, v1, v0}, Lcom/bea/xml/stream/MXParser;->internalGetNamespaces(II)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getPIData()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 3020
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    if-eq v0, v1, :cond_0

    .line 3021
    invoke-direct {p0, v1}, Lcom/bea/xml/stream/MXParser;->throwIllegalState(I)Ljava/lang/String;

    .line 3023
    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->piData:Ljava/lang/String;

    return-object v0
.end method

.method public getPITarget()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 3014
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    if-eq v0, v1, :cond_0

    .line 3015
    invoke-direct {p0, v1}, Lcom/bea/xml/stream/MXParser;->throwIllegalState(I)Ljava/lang/String;

    .line 3017
    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->piTarget:Ljava/lang/String;

    return-object v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1002
    const/4 v0, 0x0

    .line 1003
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    if-gt v1, v2, :cond_2

    .line 1004
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    iget v4, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    invoke-static {v1, v2, v3, v4}, Lcom/bea/xml/stream/MXParser;->findFragment(I[CII)I

    move-result v1

    .line 1006
    iget v2, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    if-ge v1, v2, :cond_0

    .line 1007
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    sub-int/2addr v3, v1

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 1009
    :cond_0
    iget v2, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    if-gtz v2, :cond_1

    if-lez v1, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1014
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    if-eqz v0, :cond_3

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, " seen "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 1090
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    if-ne v0, v2, :cond_1

    .line 1092
    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->elPrefix:[Ljava/lang/String;

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    aget-object v0, v0, v1

    .line 1094
    :goto_0
    return-object v0

    :cond_1
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/bea/xml/stream/MXParser;->throwIllegalState([I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3795
    const-string v1, "javax.xml.stream.entities"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3796
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->mDtdIntSubset:Lcom/wutka/dtd/DTD;

    if-eqz v1, :cond_3

    .line 3797
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->mDtdIntSubset:Lcom/wutka/dtd/DTD;

    sget-object v0, Lcom/bea/xml/stream/MXParser;->class$com$wutka$dtd$DTDEntity:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "com.wutka.dtd.DTDEntity"

    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/bea/xml/stream/MXParser;->class$com$wutka$dtd$DTDEntity:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/wutka/dtd/DTD;->getItemsByType(Ljava/lang/Class;)Ljava/util/Vector;

    move-result-object v0

    .line 3798
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 3799
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3800
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3801
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wutka/dtd/DTDEntity;

    .line 3802
    invoke-static {v0}, Lcom/bea/xml/stream/events/DTDEvent;->createEntityDeclaration(Lcom/wutka/dtd/DTDEntity;)Ljavax/xml/stream/events/EntityDeclaration;

    move-result-object v0

    .line 3803
    if-eqz v0, :cond_0

    .line 3804
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3797
    :cond_1
    sget-object v0, Lcom/bea/xml/stream/MXParser;->class$com$wutka$dtd$DTDEntity:Ljava/lang/Class;

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 3827
    :cond_3
    :goto_2
    return-object v0

    .line 3811
    :cond_4
    const-string v1, "javax.xml.stream.notations"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3812
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->mDtdIntSubset:Lcom/wutka/dtd/DTD;

    if-eqz v1, :cond_3

    .line 3813
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->mDtdIntSubset:Lcom/wutka/dtd/DTD;

    sget-object v0, Lcom/bea/xml/stream/MXParser;->class$com$wutka$dtd$DTDNotation:Ljava/lang/Class;

    if-nez v0, :cond_6

    const-string v0, "com.wutka.dtd.DTDNotation"

    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/bea/xml/stream/MXParser;->class$com$wutka$dtd$DTDNotation:Ljava/lang/Class;

    :goto_3
    invoke-virtual {v1, v0}, Lcom/wutka/dtd/DTD;->getItemsByType(Ljava/lang/Class;)Ljava/util/Vector;

    move-result-object v0

    .line 3814
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 3815
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3816
    :cond_5
    :goto_4
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3817
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wutka/dtd/DTDNotation;

    .line 3818
    invoke-static {v0}, Lcom/bea/xml/stream/events/DTDEvent;->createNotationDeclaration(Lcom/wutka/dtd/DTDNotation;)Ljavax/xml/stream/events/NotationDeclaration;

    move-result-object v0

    .line 3819
    if-eqz v0, :cond_5

    .line 3820
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 3813
    :cond_6
    sget-object v0, Lcom/bea/xml/stream/MXParser;->class$com$wutka$dtd$DTDNotation:Ljava/lang/Class;

    goto :goto_3

    :cond_7
    move-object v0, v1

    .line 3823
    goto :goto_2

    .line 3827
    :cond_8
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->configurationContext:Lcom/bea/xml/stream/ConfigurationContextBase;

    invoke-virtual {v0, p1}, Lcom/bea/xml/stream/ConfigurationContextBase;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3778
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3781
    const/4 v0, 0x0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1527
    invoke-direct {p0}, Lcom/bea/xml/stream/MXParser;->checkTextEvent()V

    .line 1528
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 1530
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->text:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityValue:[C

    if-eqz v0, :cond_0

    .line 1531
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->entityValue:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->text:Ljava/lang/String;

    .line 1533
    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->text:Ljava/lang/String;

    .line 1540
    :goto_0
    return-object v0

    .line 1535
    :cond_1
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-eqz v0, :cond_2

    .line 1536
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->pcStart:I

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    iget v4, p0, Lcom/bea/xml/stream/MXParser;->pcStart:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->text:Ljava/lang/String;

    .line 1540
    :goto_1
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->text:Ljava/lang/String;

    goto :goto_0

    .line 1538
    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    iget v4, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->text:Ljava/lang/String;

    goto :goto_1
.end method

.method public getTextCharacters(I[CII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 1546
    invoke-direct {p0}, Lcom/bea/xml/stream/MXParser;->checkTextEventXxx()V

    .line 1548
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getTextLength()I

    move-result v0

    .line 1554
    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    .line 1555
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1562
    :cond_1
    sub-int/2addr v0, p1

    .line 1564
    if-ge v0, p4, :cond_2

    move p4, v0

    .line 1568
    :cond_2
    if-lez p4, :cond_3

    .line 1569
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getTextCharacters()[C

    move-result-object v0

    .line 1570
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getTextStart()I

    move-result v1

    .line 1571
    add-int/2addr v1, p1

    invoke-static {v0, v1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1574
    :cond_3
    return p4
.end method

.method public getTextCharacters()[C
    .locals 2

    .prologue
    .line 1578
    invoke-direct {p0}, Lcom/bea/xml/stream/MXParser;->checkTextEventXxx()V

    .line 1580
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1581
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-eqz v0, :cond_0

    .line 1582
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    .line 1587
    :goto_0
    return-object v0

    .line 1584
    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    goto :goto_0

    .line 1587
    :cond_1
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    goto :goto_0
.end method

.method public getTextLength()I
    .locals 2

    .prologue
    .line 1602
    invoke-direct {p0}, Lcom/bea/xml/stream/MXParser;->checkTextEventXxx()V

    .line 1603
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-eqz v0, :cond_0

    .line 1604
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->pcStart:I

    sub-int/2addr v0, v1

    .line 1606
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getTextStart()I
    .locals 1

    .prologue
    .line 1592
    invoke-direct {p0}, Lcom/bea/xml/stream/MXParser;->checkTextEventXxx()V

    .line 1594
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-eqz v0, :cond_0

    .line 1595
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pcStart:I

    .line 1597
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    goto :goto_0
.end method

.method public getTextStream()Ljava/io/Reader;
    .locals 1

    .prologue
    .line 1507
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1620
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->xmlVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hasAttributes()Z
    .locals 1

    .prologue
    .line 1442
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getAttributeCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1443
    const/4 v0, 0x1

    .line 1444
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 1676
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->isElementEvent(I)Z

    move-result v0

    return v0
.end method

.method public hasNamespaces()Z
    .locals 1

    .prologue
    .line 1448
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getNamespaceCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1449
    const/4 v0, 0x1

    .line 1450
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 1346
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 2

    .prologue
    .line 1611
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public internalGetNamespaces(II)Ljava/util/Iterator;
    .locals 6

    .prologue
    .line 1469
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1470
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->elNamespaceCount:[I

    add-int/lit8 v2, p1, -0x1

    aget v2, v0, v2

    .line 1471
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 1472
    add-int v3, v0, v2

    invoke-direct {p0, v3}, Lcom/bea/xml/stream/MXParser;->getLocalNamespacePrefix(I)Ljava/lang/String;

    move-result-object v3

    .line 1473
    if-nez v3, :cond_0

    .line 1474
    new-instance v3, Lcom/bea/xml/stream/NamespaceBase;

    add-int v4, v0, v2

    invoke-direct {p0, v4}, Lcom/bea/xml/stream/MXParser;->getLocalNamespaceURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/bea/xml/stream/NamespaceBase;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1471
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1476
    :cond_0
    new-instance v4, Lcom/bea/xml/stream/NamespaceBase;

    add-int v5, v0, v2

    invoke-direct {p0, v5}, Lcom/bea/xml/stream/MXParser;->getLocalNamespaceURI(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/bea/xml/stream/NamespaceBase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1480
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public isAttributeSpecified(I)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1157
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    if-eq v0, v1, :cond_0

    .line 1158
    invoke-direct {p0, v1}, Lcom/bea/xml/stream/MXParser;->throwIllegalState(I)Ljava/lang/String;

    .line 1160
    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    if-lt p1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "attribute position must be 0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1162
    :cond_2
    return v1
.end method

.method public isCharacters()Z
    .locals 2

    .prologue
    .line 1366
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEOF()Z
    .locals 2

    .prologue
    .line 1370
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmptyElementTag()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 1100
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "parser must be on XMLStreamConstants.START_ELEMENT to check for empty element"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 1103
    :cond_0
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->emptyElementTag:Z

    return v0
.end method

.method public isEndElement()Z
    .locals 2

    .prologue
    .line 1362
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isNameChar(C)Z
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 319
    if-ge p1, v1, :cond_0

    sget-object v0, Lcom/bea/xml/stream/MXParser;->lookupNameChar:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_3

    :cond_0
    if-lt p1, v1, :cond_1

    const/16 v0, 0x2027

    if-le p1, v0, :cond_3

    :cond_1
    const/16 v0, 0x202a

    if-lt p1, v0, :cond_2

    const/16 v0, 0x218f

    if-le p1, v0, :cond_3

    :cond_2
    const/16 v0, 0x2800

    if-lt p1, v0, :cond_4

    const v0, 0xffef

    if-gt p1, v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isNameStartChar(C)Z
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 285
    if-ge p1, v1, :cond_0

    sget-object v0, Lcom/bea/xml/stream/MXParser;->lookupNameStartChar:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_3

    :cond_0
    if-lt p1, v1, :cond_1

    const/16 v0, 0x2027

    if-le p1, v0, :cond_3

    :cond_1
    const/16 v0, 0x202a

    if-lt p1, v0, :cond_2

    const/16 v0, 0x218f

    if-le p1, v0, :cond_3

    :cond_2
    const/16 v0, 0x2800

    if-lt p1, v0, :cond_4

    const v0, 0xffef

    if-gt p1, v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isS(C)Z
    .locals 1

    .prologue
    .line 341
    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStandalone()Z
    .locals 1

    .prologue
    .line 1684
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->standalone:Z

    return v0
.end method

.method public isStartElement()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1358
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWhiteSpace()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1034
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/16 v3, 0xc

    if-ne v0, v3, :cond_6

    .line 1035
    :cond_0
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-eqz v0, :cond_3

    .line 1036
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pcStart:I

    :goto_0
    iget v3, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    if-ge v0, v3, :cond_2

    .line 1038
    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    aget-char v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/bea/xml/stream/MXParser;->isS(C)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v2

    .line 1056
    :goto_1
    return v0

    .line 1036
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1040
    goto :goto_1

    .line 1042
    :cond_3
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    :goto_2
    iget v3, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    if-ge v0, v3, :cond_5

    .line 1044
    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    aget-char v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/bea/xml/stream/MXParser;->isS(C)Z

    move-result v3

    if-nez v3, :cond_4

    move v0, v2

    goto :goto_1

    .line 1042
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move v0, v1

    .line 1046
    goto :goto_1

    .line 1048
    :cond_6
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_7

    move v0, v1

    .line 1049
    goto :goto_1

    :cond_7
    move v0, v2

    .line 1056
    goto :goto_1
.end method

.method protected joinPC()V
    .locals 5

    .prologue
    .line 3765
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    sub-int/2addr v0, v1

    .line 3766
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    .line 3767
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    array-length v2, v2

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/MXParser;->ensurePC(I)V

    .line 3769
    :cond_0
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    iget v4, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3770
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    .line 3771
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    .line 3773
    return-void
.end method

.method protected lookupEntityReplacement(I)[C
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 2900
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-nez v0, :cond_4

    .line 2901
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/bea/xml/stream/MXParser;->fastHash([CII)I

    move-result v2

    .line 2903
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_7

    .line 2905
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityNameHash:[I

    aget v0, v0, v1

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityNameBuf:[[C

    aget-object v0, v0, v1

    array-length v0, v0

    if-ne p1, v0, :cond_0

    .line 2906
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityNameBuf:[[C

    aget-object v3, v0, v1

    .line 2907
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_2

    .line 2909
    iget-object v4, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v5, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    add-int/2addr v5, v0

    aget-char v4, v4, v5

    aget-char v5, v3, v0

    if-eq v4, v5, :cond_1

    .line 2903
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 2907
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2911
    :cond_2
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-eqz v0, :cond_3

    .line 2912
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityReplacement:[Ljava/lang/String;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->text:Ljava/lang/String;

    .line 2914
    :cond_3
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityName:[Ljava/lang/String;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityRefName:Ljava/lang/String;

    .line 2915
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityReplacementBuf:[[C

    aget-object v0, v0, v1

    .line 2931
    :goto_2
    return-object v0

    .line 2919
    :cond_4
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/bea/xml/stream/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityRefName:Ljava/lang/String;

    .line 2920
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->entityEnd:I

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_7

    .line 2923
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->entityRefName:Ljava/lang/String;

    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->entityName:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-ne v1, v2, :cond_6

    .line 2924
    iget-boolean v1, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-eqz v1, :cond_5

    .line 2925
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->entityReplacement:[Ljava/lang/String;

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/bea/xml/stream/MXParser;->text:Ljava/lang/String;

    .line 2927
    :cond_5
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->entityReplacementBuf:[[C

    aget-object v0, v1, v0

    goto :goto_2

    .line 2920
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 2931
    :cond_7
    const/4 v0, 0x0

    goto :goto_2
.end method

.method protected more()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 3715
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->bufEnd:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->fillBuf()V

    .line 3716
    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    aget-char v0, v0, v1

    .line 3721
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->lineNumber:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->columnNumber:I

    .line 3723
    :goto_0
    return v0

    .line 3722
    :cond_1
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->columnNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->columnNumber:I

    goto :goto_0
.end method

.method public moveToEndElement()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1408
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->isEndElement()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1414
    :goto_0
    return v0

    .line 1412
    :cond_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->next()I

    .line 1409
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1410
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->isEndElement()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1414
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToEndElement(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1420
    if-nez p1, :cond_2

    .line 1426
    :cond_0
    :goto_0
    return v0

    .line 1424
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->next()I

    .line 1421
    :cond_2
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->moveToEndElement()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1422
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    .line 1423
    :cond_3
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0
.end method

.method public moveToEndElement(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1432
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 1438
    :cond_0
    :goto_0
    return v0

    .line 1436
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->next()I

    .line 1433
    :cond_2
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/MXParser;->moveToEndElement(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1434
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    .line 1435
    :cond_3
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0
.end method

.method public moveToStartElement()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1374
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->isStartElement()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1380
    :goto_0
    return v0

    .line 1378
    :cond_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->next()I

    .line 1375
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1376
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->isStartElement()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1380
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToStartElement(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1386
    if-nez p1, :cond_2

    .line 1392
    :cond_0
    :goto_0
    return v0

    .line 1390
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->next()I

    .line 1387
    :cond_2
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->moveToStartElement()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1388
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    .line 1389
    :cond_3
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0
.end method

.method public moveToStartElement(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1398
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 1404
    :cond_0
    :goto_0
    return v0

    .line 1402
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->next()I

    .line 1399
    :cond_2
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/MXParser;->moveToStartElement(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1400
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    .line 1401
    :cond_3
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0
.end method

.method protected newString([CII)Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method protected newStringIntern([CII)Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    .line 1331
    iput v1, p0, Lcom/bea/xml/stream/MXParser;->pcStart:I

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    .line 1332
    iput-boolean v1, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    .line 1333
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->nextImpl()I

    move-result v0

    return v0
.end method

.method public nextElement()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 1342
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->nextTag()I

    move-result v0

    return v0
.end method

.method protected nextImpl()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x26

    const/16 v10, 0xa

    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1700
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->text:Ljava/lang/String;

    .line 1701
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->bufStart:I

    .line 1702
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->pastEndTag:Z

    if-eqz v0, :cond_0

    .line 1703
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->pastEndTag:Z

    .line 1704
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    .line 1705
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->elNamespaceCount:[I

    iget v4, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    aget v0, v0, v4

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    .line 1707
    :cond_0
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->emptyElementTag:Z

    if-eqz v0, :cond_1

    .line 1708
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->emptyElementTag:Z

    .line 1709
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->pastEndTag:Z

    .line 1710
    const/4 v0, 0x2

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    .line 1947
    :goto_0
    return v0

    .line 1714
    :cond_1
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    if-lez v0, :cond_2e

    .line 1716
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->seenStartTag:Z

    if-eqz v0, :cond_2

    .line 1717
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->seenStartTag:Z

    .line 1718
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parseStartTag()I

    move-result v0

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1951
    :catch_0
    move-exception v0

    .line 1952
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    const-string v2, "Unexpected end of stream"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v1

    .line 1720
    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->seenEndTag:Z

    if-eqz v0, :cond_3

    .line 1721
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->seenEndTag:Z

    .line 1722
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parseEndTag()I

    move-result v0

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    goto :goto_0

    .line 1728
    :cond_3
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->seenMarkup:Z

    if-eqz v0, :cond_4

    .line 1729
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->seenMarkup:Z

    .line 1730
    const/16 v5, 0x3c

    .line 1737
    :goto_1
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    move v0, v2

    move v4, v2

    .line 1748
    :goto_2
    const/16 v7, 0x3c

    if-ne v5, v7, :cond_18

    .line 1749
    if-eqz v4, :cond_6

    .line 1751
    iget-boolean v5, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-eqz v5, :cond_6

    .line 1752
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->seenMarkup:Z

    .line 1753
    const/4 v0, 0x4

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    move v0, v3

    goto :goto_0

    .line 1731
    :cond_4
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->seenAmpersand:Z

    if-eqz v0, :cond_5

    .line 1732
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->seenAmpersand:Z

    move v5, v6

    .line 1734
    goto :goto_1

    .line 1735
    :cond_5
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v5

    goto :goto_1

    .line 1756
    :cond_6
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v5

    .line 1757
    const/16 v7, 0x2f

    if-ne v5, v7, :cond_8

    .line 1758
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-nez v0, :cond_7

    if-eqz v4, :cond_7

    .line 1759
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->seenEndTag:Z

    .line 1761
    const/4 v0, 0x4

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    move v0, v3

    goto :goto_0

    .line 1763
    :cond_7
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parseEndTag()I

    move-result v0

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    goto :goto_0

    .line 1764
    :cond_8
    const/16 v7, 0x21

    if-ne v5, v7, :cond_13

    .line 1765
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v5

    .line 1766
    const/16 v7, 0x2d

    if-ne v5, v7, :cond_b

    .line 1768
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parseComment()V

    .line 1769
    iget-boolean v5, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-eqz v5, :cond_9

    const/4 v0, 0x5

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    goto/16 :goto_0

    .line 1770
    :cond_9
    iget-boolean v5, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-nez v5, :cond_a

    if-eqz v4, :cond_a

    move v0, v1

    .line 1941
    :cond_a
    :goto_3
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v5

    goto :goto_2

    .line 1771
    :cond_b
    const/16 v7, 0x5b

    if-ne v5, v7, :cond_12

    .line 1774
    iget v5, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 1775
    iget v7, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 1776
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parseCDATA()V

    .line 1778
    iget v8, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 1779
    iget v9, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 1780
    iput v5, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 1781
    iput v7, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 1782
    sub-int v5, v9, v8

    .line 1783
    if-lez v5, :cond_11

    .line 1784
    if-eqz v4, :cond_10

    .line 1786
    iget-boolean v4, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-nez v4, :cond_c

    .line 1788
    iget v4, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    iget v7, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    if-le v4, v7, :cond_f

    .line 1789
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->joinPC()V

    .line 1795
    :cond_c
    :goto_4
    iget v4, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    add-int/2addr v4, v5

    iget-object v7, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    array-length v7, v7

    if-lt v4, v7, :cond_d

    iget v4, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/bea/xml/stream/MXParser;->ensurePC(I)V

    .line 1797
    :cond_d
    iget-object v4, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget-object v7, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    iget v9, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    invoke-static {v4, v8, v7, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1798
    iget v4, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    :goto_5
    move v4, v1

    .line 1809
    :cond_e
    :goto_6
    iget-boolean v5, p0, Lcom/bea/xml/stream/MXParser;->reportCdataEvent:Z

    if-eqz v5, :cond_a

    const/16 v0, 0xc

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    goto/16 :goto_0

    .line 1791
    :cond_f
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    .line 1792
    const/4 v4, 0x0

    iput v4, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    iput v4, p0, Lcom/bea/xml/stream/MXParser;->pcStart:I

    goto :goto_4

    .line 1801
    :cond_10
    iput v8, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 1802
    iput v9, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    move v0, v1

    goto :goto_5

    .line 1806
    :cond_11
    iget-boolean v5, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-nez v5, :cond_e

    if-eqz v4, :cond_e

    move v0, v1

    goto :goto_6

    .line 1811
    :cond_12
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "unexpected character in markup "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 1816
    :cond_13
    const/16 v7, 0x3f

    if-ne v5, v7, :cond_15

    .line 1817
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parsePI()Z

    .line 1818
    iget-boolean v5, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-eqz v5, :cond_14

    const/4 v0, 0x3

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    goto/16 :goto_0

    .line 1819
    :cond_14
    iget-boolean v5, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-nez v5, :cond_a

    if-eqz v4, :cond_a

    move v0, v1

    goto/16 :goto_3

    .line 1820
    :cond_15
    invoke-virtual {p0, v5}, Lcom/bea/xml/stream/MXParser;->isNameStartChar(C)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1821
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-nez v0, :cond_16

    if-eqz v4, :cond_16

    .line 1822
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->seenStartTag:Z

    .line 1824
    const/4 v0, 0x4

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    move v0, v3

    goto/16 :goto_0

    .line 1826
    :cond_16
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parseStartTag()I

    move-result v0

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    goto/16 :goto_0

    .line 1828
    :cond_17
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "unexpected character in markup "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 1834
    :cond_18
    if-ne v5, v6, :cond_21

    .line 1838
    iget-boolean v5, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-eqz v5, :cond_19

    if-eqz v4, :cond_19

    .line 1839
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->seenAmpersand:Z

    .line 1840
    const/4 v0, 0x4

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    move v0, v3

    goto/16 :goto_0

    .line 1843
    :cond_19
    iget v5, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 1844
    iget v7, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 1845
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getConfigurationContext()Lcom/bea/xml/stream/ConfigurationContextBase;

    move-result-object v8

    invoke-virtual {v8}, Lcom/bea/xml/stream/ConfigurationContextBase;->isReplacingEntities()Z

    move-result v8

    .line 1846
    invoke-virtual {p0, v8}, Lcom/bea/xml/stream/MXParser;->parseEntityRef(Z)[C

    move-result-object v9

    .line 1847
    if-nez v8, :cond_1a

    .line 1848
    const/16 v0, 0x9

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    goto/16 :goto_0

    .line 1850
    :cond_1a
    const/4 v8, 0x4

    iput v8, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    .line 1852
    if-nez v9, :cond_1c

    .line 1853
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityRefName:Ljava/lang/String;

    if-nez v0, :cond_1b

    .line 1854
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/bea/xml/stream/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityRefName:Ljava/lang/String;

    .line 1856
    :cond_1b
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "could not resolve entity named \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->entityRefName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/MXParser;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 1862
    :cond_1c
    iput v5, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 1863
    iput v7, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 1864
    iget-boolean v5, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-nez v5, :cond_1d

    .line 1865
    if-eqz v4, :cond_1f

    .line 1866
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->joinPC()V

    move v0, v2

    :cond_1d
    :goto_7
    move v4, v2

    .line 1875
    :goto_8
    array-length v5, v9

    if-ge v4, v5, :cond_20

    .line 1877
    iget v5, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    iget-object v7, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    array-length v7, v7

    if-lt v5, v7, :cond_1e

    iget v5, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    invoke-virtual {p0, v5}, Lcom/bea/xml/stream/MXParser;->ensurePC(I)V

    .line 1878
    :cond_1e
    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    iget v7, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    aget-char v8, v9, v4

    aput-char v8, v5, v7

    .line 1875
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1869
    :cond_1f
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    .line 1870
    const/4 v4, 0x0

    iput v4, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    iput v4, p0, Lcom/bea/xml/stream/MXParser;->pcStart:I

    goto :goto_7

    :cond_20
    move v4, v1

    .line 1886
    goto/16 :goto_3

    .line 1888
    :cond_21
    if-eqz v0, :cond_22

    .line 1890
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->joinPC()V

    move v0, v2

    :cond_22
    move v4, v2

    .line 1906
    :cond_23
    const/16 v7, 0xd

    if-ne v5, v7, :cond_28

    .line 1908
    iget v4, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 1910
    iget-boolean v4, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-nez v4, :cond_24

    .line 1911
    iget v4, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    iget v5, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    if-le v4, v5, :cond_27

    .line 1912
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->joinPC()V

    .line 1919
    :cond_24
    :goto_9
    iget v4, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    array-length v5, v5

    if-lt v4, v5, :cond_25

    iget v4, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    invoke-virtual {p0, v4}, Lcom/bea/xml/stream/MXParser;->ensurePC(I)V

    .line 1920
    :cond_25
    iget-object v4, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    iget v5, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    const/16 v7, 0xa

    aput-char v7, v4, v5

    move v4, v1

    .line 1936
    :goto_a
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v5

    .line 1937
    const/16 v7, 0x3c

    if-eq v5, v7, :cond_26

    if-ne v5, v6, :cond_23

    .line 1938
    :cond_26
    iget v4, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    move v4, v1

    .line 1939
    goto/16 :goto_2

    .line 1914
    :cond_27
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    .line 1915
    const/4 v4, 0x0

    iput v4, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    iput v4, p0, Lcom/bea/xml/stream/MXParser;->pcStart:I

    goto :goto_9

    .line 1921
    :cond_28
    if-ne v5, v10, :cond_2b

    .line 1923
    if-nez v4, :cond_2a

    iget-boolean v4, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-eqz v4, :cond_2a

    .line 1924
    iget v4, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    array-length v5, v5

    if-lt v4, v5, :cond_29

    iget v4, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    invoke-virtual {p0, v4}, Lcom/bea/xml/stream/MXParser;->ensurePC(I)V

    .line 1925
    :cond_29
    iget-object v4, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    iget v5, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    const/16 v7, 0xa

    aput-char v7, v4, v5

    :cond_2a
    move v4, v2

    .line 1928
    goto :goto_a

    .line 1929
    :cond_2b
    iget-boolean v4, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-eqz v4, :cond_2d

    .line 1930
    iget v4, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    iget-object v7, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    array-length v7, v7

    if-lt v4, v7, :cond_2c

    iget v4, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    invoke-virtual {p0, v4}, Lcom/bea/xml/stream/MXParser;->ensurePC(I)V

    .line 1931
    :cond_2c
    iget-object v4, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    iget v7, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    aput-char v5, v4, v7

    :cond_2d
    move v4, v2

    .line 1933
    goto :goto_a

    .line 1944
    :cond_2e
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->seenRoot:Z

    if-eqz v0, :cond_2f

    .line 1945
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parseEpilog()I

    move-result v0

    goto/16 :goto_0

    .line 1947
    :cond_2f
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parseProlog()I
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto/16 :goto_0
.end method

.method public nextTag()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 1294
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->next()I

    .line 1300
    :goto_0
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->isWhiteSpace()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->isWhiteSpace()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1301
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->next()I

    goto :goto_0

    .line 1303
    :cond_2
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 1304
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "expected XMLStreamConstants.START_ELEMENT or XMLStreamConstants.END_ELEMENT not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getEventType()I

    move-result v2

    invoke-static {v2}, Lcom/bea/xml/stream/util/ElementTypeNames;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 1308
    :cond_3
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    return v0
.end method

.method public nextText()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 1266
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1267
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "parser must be on START_ELEMENT to read next text"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 1271
    :cond_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->next()I

    move-result v0

    .line 1272
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1273
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1274
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->next()I

    move-result v1

    .line 1275
    if-eq v1, v2, :cond_2

    .line 1276
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "TEXT must be immediately followed by END_ELEMENT and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getEventType()I

    move-result v2

    invoke-static {v2}, Lcom/bea/xml/stream/util/ElementTypeNames;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 1282
    :cond_1
    if-ne v0, v2, :cond_3

    .line 1283
    const-string v0, ""

    :cond_2
    return-object v0

    .line 1285
    :cond_3
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "parser must be on START_ELEMENT or TEXT to read text"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0
.end method

.method public nextToken()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 1337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    .line 1338
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->nextImpl()I

    move-result v0

    return v0
.end method

.method protected parseAttribute()C
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/16 v11, 0x3a

    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 2457
    :try_start_0
    iget v4, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    iget v5, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    add-int v8, v4, v5

    .line 2458
    iget v4, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    add-int v9, v4, v5

    .line 2460
    iget-object v4, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v5, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v5, v5, -0x1

    aget-char v4, v4, v5

    .line 2461
    if-ne v4, v11, :cond_0

    iget-boolean v5, p0, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    if-eqz v5, :cond_0

    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "when namespaces processing enabled colon can not be at attribute name start"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2741
    :catch_0
    move-exception v0

    .line 2742
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    const-string v2, "Unexpected end of stream"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v1

    .line 2466
    :cond_0
    :try_start_1
    iget-boolean v5, p0, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    if-eqz v5, :cond_1

    const/16 v5, 0x78

    if-ne v4, v5, :cond_1

    move v4, v1

    .line 2469
    :goto_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v5

    move v6, v2

    move v7, v3

    .line 2470
    :goto_1
    invoke-virtual {p0, v5}, Lcom/bea/xml/stream/MXParser;->isNameChar(C)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2471
    iget-boolean v10, p0, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    if-eqz v10, :cond_37

    .line 2472
    if-eqz v4, :cond_36

    const/4 v10, 0x5

    if-ge v6, v10, :cond_36

    .line 2473
    add-int/lit8 v6, v6, 0x1

    .line 2474
    if-ne v6, v1, :cond_2

    const/16 v10, 0x6d

    if-eq v5, v10, :cond_36

    move v4, v6

    move v6, v2

    .line 2486
    :goto_2
    if-ne v5, v11, :cond_35

    .line 2487
    if-eq v7, v3, :cond_6

    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "only one colon is allowed in attribute name when namespaces are enabled"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    :cond_1
    move v4, v2

    .line 2466
    goto :goto_0

    .line 2475
    :cond_2
    const/4 v10, 0x2

    if-ne v6, v10, :cond_3

    const/16 v10, 0x6c

    if-eq v5, v10, :cond_36

    move v4, v6

    move v6, v2

    goto :goto_2

    .line 2476
    :cond_3
    const/4 v10, 0x3

    if-ne v6, v10, :cond_4

    const/16 v10, 0x6e

    if-eq v5, v10, :cond_36

    move v4, v6

    move v6, v2

    goto :goto_2

    .line 2477
    :cond_4
    const/4 v10, 0x4

    if-ne v6, v10, :cond_5

    const/16 v10, 0x73

    if-eq v5, v10, :cond_36

    move v4, v6

    move v6, v2

    goto :goto_2

    .line 2478
    :cond_5
    const/4 v10, 0x5

    if-ne v6, v10, :cond_36

    .line 2479
    if-eq v5, v11, :cond_36

    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "after xmlns in attribute name must be colonwhen namespaces are enabled"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2491
    :cond_6
    iget v5, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v5, v5, -0x1

    iget v7, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    add-int/2addr v5, v7

    move v14, v6

    move v6, v5

    move v5, v14

    .line 2494
    :goto_3
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v7

    move v14, v4

    move v4, v5

    move v5, v7

    move v7, v6

    move v6, v14

    .line 2495
    goto :goto_1

    .line 2497
    :cond_7
    iget v10, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    invoke-virtual {p0, v10}, Lcom/bea/xml/stream/MXParser;->ensureAttributesCapacity(I)V

    .line 2503
    iget-boolean v10, p0, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    if-eqz v10, :cond_b

    .line 2504
    const/4 v10, 0x4

    if-ge v6, v10, :cond_8

    move v4, v2

    .line 2505
    :cond_8
    if-eqz v4, :cond_9

    .line 2506
    if-eq v7, v3, :cond_34

    .line 2508
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v6, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    sub-int v6, v7, v6

    add-int/lit8 v6, v6, 0x1

    iget v9, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v9, v9, -0x2

    iget v10, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    sub-int v10, v7, v10

    sub-int/2addr v9, v10

    invoke-virtual {p0, v0, v6, v9}, Lcom/bea/xml/stream/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v0

    .line 2519
    const-string v6, "xmlns"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2520
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "trying to bind reserved NS prefix \'xmlns\'"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2525
    :cond_9
    if-eq v7, v3, :cond_a

    .line 2526
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->attributePrefix:[Ljava/lang/String;

    iget v6, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    iget-object v10, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v11, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    sub-int v11, v9, v11

    sub-int v9, v7, v9

    invoke-virtual {p0, v10, v11, v9}, Lcom/bea/xml/stream/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v6

    .line 2530
    iget-object v6, p0, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    iget v9, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v10, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    sub-int v10, v7, v10

    add-int/lit8 v10, v10, 0x1

    iget v11, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v11, v11, -0x2

    iget v12, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    sub-int v12, v7, v12

    sub-int/2addr v11, v12

    invoke-virtual {p0, v0, v10, v11}, Lcom/bea/xml/stream/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v9

    .line 2541
    :goto_4
    iget-boolean v6, p0, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-nez v6, :cond_c

    .line 2542
    iget-object v6, p0, Lcom/bea/xml/stream/MXParser;->attributeNameHash:[I

    iget v9, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    aput v10, v6, v9

    move v6, v4

    move-object v14, v0

    move v0, v5

    move-object v5, v14

    .line 2558
    :goto_5
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->isS(C)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    goto :goto_5

    .line 2536
    :cond_a
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->attributePrefix:[Ljava/lang/String;

    iget v6, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    const/4 v10, 0x0

    aput-object v10, v0, v6

    .line 2537
    iget-object v6, p0, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    iget v10, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v11, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    sub-int v11, v9, v11

    iget v12, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v12, v12, -0x1

    iget v13, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v9, v13

    sub-int v9, v12, v9

    invoke-virtual {p0, v0, v11, v9}, Lcom/bea/xml/stream/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v10

    goto :goto_4

    .line 2548
    :cond_b
    iget-object v6, p0, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    iget v10, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v11, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    sub-int v11, v9, v11

    iget v12, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v12, v12, -0x1

    iget v13, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v9, v13

    sub-int v9, v12, v9

    invoke-virtual {p0, v0, v11, v9}, Lcom/bea/xml/stream/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v10

    .line 2552
    iget-boolean v6, p0, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-nez v6, :cond_c

    .line 2553
    iget-object v6, p0, Lcom/bea/xml/stream/MXParser;->attributeNameHash:[I

    iget v9, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    aput v10, v6, v9

    :cond_c
    move v6, v4

    move-object v14, v0

    move v0, v5

    move-object v5, v14

    goto :goto_5

    .line 2559
    :cond_d
    const/16 v4, 0x3d

    if-eq v0, v4, :cond_e

    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "expected = after attribute name"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2562
    :cond_e
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    move v4, v0

    .line 2563
    :goto_6
    invoke-virtual {p0, v4}, Lcom/bea/xml/stream/MXParser;->isS(C)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    move v4, v0

    goto :goto_6

    .line 2568
    :cond_f
    const/16 v0, 0x22

    if-eq v4, v0, :cond_10

    const/16 v0, 0x27

    if-eq v4, v0, :cond_10

    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "attribute value must start with quotation or apostrophe not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2578
    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    .line 2579
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->pcStart:I

    .line 2580
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    move v0, v2

    .line 2583
    :goto_7
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v9

    .line 2584
    if-ne v9, v4, :cond_11

    .line 2651
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    if-eqz v0, :cond_2f

    if-eqz v6, :cond_2f

    .line 2654
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-nez v0, :cond_23

    .line 2655
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v2, v2, -0x1

    iget v4, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    sub-int/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2}, Lcom/bea/xml/stream/MXParser;->newStringIntern([CII)Ljava/lang/String;

    move-result-object v1

    .line 2659
    :goto_8
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->ensureNamespacesCapacity(I)V

    .line 2666
    const-string v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2667
    const-string v0, "xml"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 2668
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "trying to bind reserved NS URI  \'http://www.w3.org/XML/1998/namespace\' to prefix other than \'xml\'"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2586
    :cond_11
    const/16 v10, 0x3c

    if-ne v9, v10, :cond_12

    .line 2587
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "markup not allowed inside attribute value - illegal < "

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2589
    :cond_12
    const/16 v10, 0x26

    if-ne v9, v10, :cond_19

    .line 2591
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 2592
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-nez v0, :cond_13

    .line 2593
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    iget v10, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    if-le v0, v10, :cond_15

    move v0, v1

    .line 2594
    :goto_9
    if-eqz v0, :cond_16

    .line 2596
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->joinPC()V

    .line 2604
    :cond_13
    :goto_a
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getConfigurationContext()Lcom/bea/xml/stream/ConfigurationContextBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bea/xml/stream/ConfigurationContextBase;->isReplacingEntities()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->parseEntityRef(Z)[C

    move-result-object v10

    .line 2606
    if-nez v10, :cond_17

    .line 2607
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityRefName:Ljava/lang/String;

    if-nez v0, :cond_14

    .line 2608
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/bea/xml/stream/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityRefName:Ljava/lang/String;

    .line 2610
    :cond_14
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "could not resolve entity named \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->entityRefName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/MXParser;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    :cond_15
    move v0, v2

    .line 2593
    goto :goto_9

    .line 2598
    :cond_16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    .line 2599
    const/4 v0, 0x0

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->pcStart:I

    goto :goto_a

    :cond_17
    move v0, v2

    .line 2615
    :goto_b
    array-length v11, v10

    if-ge v0, v11, :cond_1e

    .line 2617
    iget v11, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    iget-object v12, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    array-length v12, v12

    if-lt v11, v12, :cond_18

    iget v11, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    invoke-virtual {p0, v11}, Lcom/bea/xml/stream/MXParser;->ensurePC(I)V

    .line 2618
    :cond_18
    iget-object v11, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    iget v12, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    aget-char v13, v10, v0

    aput-char v13, v11, v12

    .line 2615
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 2621
    :cond_19
    const/16 v10, 0x9

    if-eq v9, v10, :cond_1a

    const/16 v10, 0xa

    if-eq v9, v10, :cond_1a

    const/16 v10, 0xd

    if-ne v9, v10, :cond_20

    .line 2626
    :cond_1a
    iget-boolean v10, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-nez v10, :cond_1b

    .line 2627
    iget v10, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 2628
    iget v10, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    iget v11, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    if-le v10, v11, :cond_1f

    .line 2629
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->joinPC()V

    .line 2636
    :cond_1b
    :goto_c
    iget v10, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    iget-object v11, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    array-length v11, v11

    if-lt v10, v11, :cond_1c

    iget v10, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    invoke-virtual {p0, v10}, Lcom/bea/xml/stream/MXParser;->ensurePC(I)V

    .line 2637
    :cond_1c
    const/16 v10, 0xa

    if-ne v9, v10, :cond_1d

    if-nez v0, :cond_1e

    .line 2638
    :cond_1d
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    iget v10, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    const/16 v11, 0x20

    aput-char v11, v0, v10

    .line 2647
    :cond_1e
    :goto_d
    const/16 v0, 0xd

    if-ne v9, v0, :cond_22

    move v0, v1

    goto/16 :goto_7

    .line 2631
    :cond_1f
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    .line 2632
    const/4 v10, 0x0

    iput v10, p0, Lcom/bea/xml/stream/MXParser;->pcStart:I

    iput v10, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    goto :goto_c

    .line 2642
    :cond_20
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-eqz v0, :cond_1e

    .line 2643
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    iget-object v10, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    array-length v10, v10

    if-lt v0, v10, :cond_21

    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->ensurePC(I)V

    .line 2644
    :cond_21
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    iget v10, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    aput-char v9, v0, v10

    goto :goto_d

    :cond_22
    move v0, v2

    .line 2647
    goto/16 :goto_7

    .line 2657
    :cond_23
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->pcStart:I

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    iget v4, p0, Lcom/bea/xml/stream/MXParser;->pcStart:I

    sub-int/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2}, Lcom/bea/xml/stream/MXParser;->newStringIntern([CII)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_8

    .line 2670
    :cond_24
    const-string v0, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2672
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "trying to bind reserved NS URI  \'http://www.w3.org/2000/xmlns/\'"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2675
    :cond_25
    if-eq v7, v3, :cond_2b

    .line 2676
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_26

    .line 2677
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "non-default namespace can not be declared to be empty string (in xml 1.0)"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2685
    :cond_26
    const-string v0, "xml"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2686
    const-string v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 2687
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "trying to bind reserved NS prefix \'xml\' to URI other than its standard value (http://www.w3.org/XML/1998/namespace)"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2693
    :cond_27
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->namespacePrefix:[Ljava/lang/String;

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    aput-object v5, v0, v2

    .line 2694
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-nez v0, :cond_33

    .line 2695
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->namespacePrefixHash:[I

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v0

    aput v0, v2, v3

    move v14, v0

    move-object v0, v1

    move v1, v14

    .line 2707
    :goto_e
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->namespaceUri:[Ljava/lang/String;

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    aput-object v0, v2, v3

    .line 2710
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->elNamespaceCount:[I

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    add-int/lit8 v2, v2, -0x1

    aget v2, v0, v2

    .line 2711
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    add-int/lit8 v0, v0, -0x1

    :goto_f
    if-lt v0, v2, :cond_2e

    .line 2713
    iget-boolean v3, p0, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-nez v3, :cond_28

    if-nez v5, :cond_29

    :cond_28
    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eq v3, v5, :cond_2a

    :cond_29
    iget-boolean v3, p0, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-nez v3, :cond_2d

    if-eqz v5, :cond_2d

    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->namespacePrefixHash:[I

    aget v3, v3, v0

    if-ne v3, v1, :cond_2d

    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 2719
    :cond_2a
    if-nez v5, :cond_2c

    const-string v0, "default"

    .line 2720
    :goto_10
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "duplicated namespace declaration for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " prefix"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    .line 2699
    :cond_2b
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->namespacePrefix:[Ljava/lang/String;

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    const/4 v4, 0x0

    aput-object v4, v0, v2

    .line 2700
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_32

    .line 2701
    sget-object v0, Lcom/bea/xml/stream/MXParser;->NO_NAMESPACE:Ljava/lang/String;

    .line 2703
    :goto_11
    iget-boolean v1, p0, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-nez v1, :cond_31

    .line 2704
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->namespacePrefixHash:[I

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    const/4 v4, -0x1

    aput v4, v1, v2

    move v1, v3

    goto :goto_e

    .line 2719
    :cond_2c
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 2711
    :cond_2d
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_f

    .line 2726
    :cond_2e
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    .line 2738
    :goto_12
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    sub-int v0, v8, v0

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 2739
    return v9

    .line 2729
    :cond_2f
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->usePC:Z

    if-nez v0, :cond_30

    .line 2730
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->attributeValue:[Ljava/lang/String;

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v4, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    iget v5, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    sub-int/2addr v5, v6

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    aput-object v2, v0, v1

    .line 2736
    :goto_13
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    goto :goto_12

    .line 2733
    :cond_30
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->attributeValue:[Ljava/lang/String;

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->pc:[C

    iget v4, p0, Lcom/bea/xml/stream/MXParser;->pcStart:I

    iget v5, p0, Lcom/bea/xml/stream/MXParser;->pcEnd:I

    iget v6, p0, Lcom/bea/xml/stream/MXParser;->pcStart:I

    sub-int/2addr v5, v6

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    aput-object v2, v0, v1
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_13

    :cond_31
    move v1, v3

    goto/16 :goto_e

    :cond_32
    move-object v0, v1

    goto :goto_11

    :cond_33
    move-object v0, v1

    move v1, v3

    goto/16 :goto_e

    :cond_34
    move v6, v4

    move-object v14, v0

    move v0, v5

    move-object v5, v14

    goto/16 :goto_5

    :cond_35
    move v5, v6

    move v6, v7

    goto/16 :goto_3

    :cond_36
    move v14, v6

    move v6, v4

    move v4, v14

    goto/16 :goto_2

    :cond_37
    move v5, v4

    move v4, v6

    move v6, v7

    goto/16 :goto_3
.end method

.method protected parseCDATA()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x41

    const/4 v6, 0x1

    const/16 v4, 0xa

    const/4 v2, 0x0

    .line 3565
    :try_start_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    const/16 v1, 0x43

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    const/16 v1, 0x44

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_1

    .line 3572
    :cond_0
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "expected <[CDATA[ for CDATA start"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3574
    :catch_0
    move-exception v0

    .line 3575
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    const-string v2, "Unexpected EOF in directive"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v1

    .line 3581
    :cond_1
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 3582
    iget v9, p0, Lcom/bea/xml/stream/MXParser;->lineNumber:I

    .line 3583
    iget v10, p0, Lcom/bea/xml/stream/MXParser;->columnNumber:I

    .line 3586
    const/4 v1, -0x2

    .line 3587
    const/4 v0, -0x1

    move v5, v2

    move v8, v2

    move v12, v1

    move v1, v0

    move v0, v12

    .line 3591
    :goto_0
    add-int/lit8 v7, v1, 0x1

    .line 3592
    :try_start_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v3

    .line 3593
    const/16 v1, 0x5d

    if-ne v3, v1, :cond_2

    .line 3594
    add-int/lit8 v1, v8, 0x1

    .line 3625
    :goto_1
    if-eqz v5, :cond_8

    .line 3626
    iget-object v8, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v11, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    aput-char v3, v8, v11

    .line 3627
    iget v3, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    move v8, v1

    move v1, v7

    .line 3628
    goto :goto_0

    .line 3596
    :cond_2
    const/16 v1, 0x3e

    if-ne v3, v1, :cond_4

    .line 3597
    const/4 v1, 0x2

    if-lt v8, v1, :cond_3

    .line 3630
    if-eqz v5, :cond_7

    .line 3631
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 3641
    :goto_2
    return-void

    :cond_3
    move v1, v2

    .line 3601
    goto :goto_1

    .line 3603
    :cond_4
    const/16 v1, 0xd

    if-ne v3, v1, :cond_6

    .line 3604
    const/4 v0, 0x1

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->columnNumber:I

    .line 3605
    add-int/lit8 v0, v7, 0x1

    .line 3607
    if-nez v5, :cond_5

    .line 3608
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v3, v3, -0x1

    const/16 v8, 0xa

    aput-char v8, v1, v3

    move v1, v7

    move v8, v2

    .line 3609
    goto :goto_0

    :cond_5
    move v1, v2

    move v3, v4

    .line 3613
    goto :goto_1

    :cond_6
    if-ne v3, v4, :cond_9

    .line 3614
    if-ne v0, v7, :cond_9

    .line 3616
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    move v5, v6

    move v1, v7

    move v8, v2

    .line 3617
    goto :goto_0

    .line 3633
    :cond_7
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 3635
    :catch_1
    move-exception v0

    .line 3637
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "CDATA section on line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " and column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " was not closed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v1

    :cond_8
    move v8, v1

    move v1, v7

    goto/16 :goto_0

    :cond_9
    move v1, v2

    goto/16 :goto_1
.end method

.method protected parseComment()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x2d

    const/4 v5, 0x1

    const/4 v2, -0x2

    const/16 v3, 0xa

    .line 2941
    :try_start_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    .line 2942
    if-eq v0, v11, :cond_0

    .line 2943
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "expected <!-- for COMMENT start"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3008
    :catch_0
    move-exception v0

    .line 3009
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    const-string v2, "Unexpected end of stream"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v1

    .line 2945
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 2947
    iget v7, p0, Lcom/bea/xml/stream/MXParser;->lineNumber:I

    .line 2948
    iget v8, p0, Lcom/bea/xml/stream/MXParser;->columnNumber:I
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2952
    const/4 v1, -0x1

    .line 2953
    const/4 v0, 0x0

    move v4, v0

    move v6, v1

    move v0, v2

    move v1, v2

    .line 2956
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v2

    .line 2957
    add-int/lit8 v6, v6, 0x1

    .line 2959
    if-ne v2, v11, :cond_4

    .line 2960
    if-ge v1, v6, :cond_3

    .line 2961
    add-int/lit8 v1, v6, 0x1

    .line 2991
    :cond_2
    :goto_1
    if-eqz v4, :cond_1

    .line 2992
    iget-object v9, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v10, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    aput-char v2, v9, v10

    .line 2993
    iget v2, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 3001
    :catch_1
    move-exception v0

    .line 3003
    :try_start_3
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "COMMENT started on line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " and column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " was not closed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2963
    :cond_3
    :try_start_4
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    .line 2964
    const/16 v1, 0x3e

    if-eq v0, v1, :cond_7

    .line 2965
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "in COMMENT after two dashes (--) next character must be \'>\' not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    .line 2969
    :cond_4
    const/16 v9, 0xd

    if-ne v2, v9, :cond_6

    .line 2970
    const/4 v0, 0x1

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->columnNumber:I

    .line 2971
    add-int/lit8 v0, v6, 0x1

    .line 2973
    if-nez v4, :cond_5

    .line 2974
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v9, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v9, v9, -0x1

    const/16 v10, 0xa

    aput-char v10, v2, v9

    goto/16 :goto_0

    :cond_5
    move v2, v3

    .line 2979
    goto :goto_1

    :cond_6
    if-ne v2, v3, :cond_2

    .line 2980
    if-ne v0, v6, :cond_2

    .line 2981
    if-nez v4, :cond_1

    .line 2983
    iget v2, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    move v4, v5

    .line 2984
    goto/16 :goto_0

    .line 2996
    :cond_7
    if-eqz v4, :cond_8

    .line 2997
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 3011
    :goto_2
    return-void

    .line 2999
    :cond_8
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2
.end method

.method protected parseDocdecl()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x45

    const/16 v6, 0x43

    const/16 v5, 0x27

    const/16 v4, 0x22

    const/16 v3, 0x53

    .line 3396
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 3399
    :try_start_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    const/16 v1, 0x4f

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    if-ne v0, v6, :cond_0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    const/16 v1, 0x59

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    const/16 v1, 0x50

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    if-eq v0, v7, :cond_1

    .line 3405
    :cond_0
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "expected <!DOCTYPE"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3506
    :catch_0
    move-exception v0

    .line 3507
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    const-string v2, "Unexpected end of stream"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v1

    .line 3419
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->requireNextS()C

    move-result v0

    .line 3422
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->isNameStartChar(C)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3423
    invoke-direct {p0, v0}, Lcom/bea/xml/stream/MXParser;->throwNotNameStart(C)V

    .line 3425
    :cond_2
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    add-int/2addr v0, v1

    .line 3427
    :cond_3
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    .line 3428
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->isNameChar(C)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3431
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v0

    .line 3433
    if-eq v0, v3, :cond_4

    const/16 v1, 0x50

    if-ne v0, v1, :cond_c

    .line 3434
    :cond_4
    if-ne v0, v3, :cond_6

    .line 3435
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v1

    const/16 v2, 0x59

    if-ne v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v1

    if-ne v1, v3, :cond_5

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v1

    const/16 v2, 0x54

    if-ne v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v1

    if-ne v1, v7, :cond_5

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v1

    const/16 v2, 0x4d

    if-eq v1, v2, :cond_a

    .line 3437
    :cond_5
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "expected keyword SYSTEM"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 3440
    :cond_6
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v1

    const/16 v2, 0x55

    if-ne v1, v2, :cond_7

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v1

    const/16 v2, 0x42

    if-ne v1, v2, :cond_7

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v1

    const/16 v2, 0x4c

    if-ne v1, v2, :cond_7

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v1

    const/16 v2, 0x49

    if-ne v1, v2, :cond_7

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v1

    if-eq v1, v6, :cond_8

    .line 3442
    :cond_7
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "expected keyword PUBLIC"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 3445
    :cond_8
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->requireNextS()C

    move-result v1

    .line 3446
    if-eq v1, v4, :cond_9

    if-eq v1, v5, :cond_9

    .line 3447
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Public identifier has to be enclosed in quotes, not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    .line 3449
    :cond_9
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    if-ne v0, v1, :cond_9

    .line 3454
    :cond_a
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->requireNextS()C

    move-result v1

    .line 3455
    if-eq v1, v4, :cond_b

    if-eq v1, v5, :cond_b

    .line 3456
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "System identifier has to be enclosed in quotes, not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    .line 3458
    :cond_b
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    if-ne v0, v1, :cond_b

    .line 3462
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v0

    .line 3465
    :cond_c
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_f

    .line 3466
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 3467
    const/4 v0, 0x1

    .line 3474
    :cond_d
    :goto_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v1

    .line 3475
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 3489
    :goto_1
    :sswitch_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v2

    if-eq v2, v1, :cond_d

    goto :goto_1

    .line 3477
    :sswitch_1
    add-int/lit8 v0, v0, 0x1

    .line 3478
    goto :goto_0

    .line 3480
    :sswitch_2
    add-int/lit8 v0, v0, -0x1

    .line 3481
    goto :goto_0

    .line 3483
    :sswitch_3
    if-gtz v0, :cond_d

    .line 3495
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 3496
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->processDTD()V

    .line 3509
    :cond_e
    return-void

    .line 3499
    :cond_f
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 3500
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v0

    .line 3501
    const/16 v1, 0x3e

    if-eq v0, v1, :cond_e

    .line 3502
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Expected closing \'>\' after internal DTD subset, not \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3475
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x27 -> :sswitch_0
        0x3e -> :sswitch_3
        0x5b -> :sswitch_1
        0x5d -> :sswitch_2
    .end sparse-switch
.end method

.method public parseEndTag()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x0

    .line 2152
    iput v7, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    .line 2155
    :try_start_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    .line 2156
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->isNameStartChar(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2157
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "expected name start and not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2209
    :catch_0
    move-exception v0

    .line 2210
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    const-string v2, "Unexpected end of stream"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v1

    .line 2161
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 2162
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    add-int/2addr v2, v0

    .line 2164
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    .line 2165
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->isNameChar(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2173
    iget v3, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v3, v3, -0x1

    .line 2174
    iget v4, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v2, v4

    .line 2175
    sub-int v4, v3, v2

    .line 2176
    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->elRawName:[[C

    iget v5, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    aget-object v5, v3, v5

    .line 2177
    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->elRawNameEnd:[I

    iget v6, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    aget v3, v3, v6

    if-eq v3, v4, :cond_3

    .line 2179
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->elRawNameEnd:[I

    iget v6, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    aget v3, v3, v6

    invoke-direct {v0, v5, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 2180
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    invoke-direct {v1, v3, v2, v4}, Ljava/lang/String;-><init>([CII)V

    .line 2181
    new-instance v2, Ljavax/xml/stream/XMLStreamException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "end tag name \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "\' must match start tag name \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v2

    .line 2185
    :cond_2
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    :cond_3
    if-ge v1, v4, :cond_4

    .line 2187
    iget-object v6, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    add-int/lit8 v3, v2, 0x1

    aget-char v2, v6, v2

    aget-char v6, v5, v1

    if-eq v2, v6, :cond_2

    .line 2189
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v5, v2, v4}, Ljava/lang/String;-><init>([CII)V

    .line 2190
    new-instance v2, Ljava/lang/String;

    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    sub-int v1, v3, v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v2, v5, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 2191
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "end tag name \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\' must be the same as start tag \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    .line 2197
    :cond_4
    :goto_0
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->isS(C)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    goto :goto_0

    .line 2198
    :cond_5
    const/16 v1, 0x3e

    if-eq v0, v1, :cond_6

    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "expected > to finsh end tag not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    .line 2206
    :cond_6
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 2207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->pastEndTag:Z
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2213
    return v7
.end method

.method protected parseEntityRef(Z)[C
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/16 v5, 0x74

    const/16 v4, 0x61

    const/16 v3, 0x3b

    const/4 v0, 0x0

    .line 2767
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/bea/xml/stream/MXParser;->entityRefName:Ljava/lang/String;

    .line 2768
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 2769
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v1

    .line 2772
    const/16 v2, 0x23

    if-ne v1, v2, :cond_a

    .line 2775
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v1

    .line 2776
    const/16 v2, 0x78

    if-ne v1, v2, :cond_7

    .line 2779
    :cond_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v1

    .line 2780
    if-ne v1, v3, :cond_3

    .line 2811
    :cond_1
    :goto_0
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 2816
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bea/xml/stream/MXParser;->checkCharValidity(IZ)V

    .line 2818
    const v1, 0xffff

    if-le v0, v1, :cond_9

    .line 2819
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->charRefTwoCharBuf:[C

    if-nez v1, :cond_2

    .line 2820
    const/4 v1, 0x2

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/bea/xml/stream/MXParser;->charRefTwoCharBuf:[C

    .line 2822
    :cond_2
    const/high16 v1, 0x10000

    sub-int/2addr v0, v1

    .line 2823
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->charRefTwoCharBuf:[C

    const/4 v2, 0x0

    shr-int/lit8 v3, v0, 0xa

    const v4, 0xd800

    add-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 2824
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->charRefTwoCharBuf:[C

    const/4 v2, 0x1

    and-int/lit16 v0, v0, 0x3ff

    const v3, 0xdc00

    add-int/2addr v0, v3

    int-to-char v0, v0

    aput-char v0, v1, v2

    .line 2825
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->charRefTwoCharBuf:[C

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityValue:[C

    .line 2887
    :goto_1
    return-object v0

    .line 2783
    :cond_3
    shl-int/lit8 v0, v0, 0x4

    .line 2784
    const/16 v2, 0x30

    if-lt v1, v2, :cond_4

    const/16 v2, 0x39

    if-gt v1, v2, :cond_4

    .line 2785
    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    .line 2795
    :goto_2
    const v1, 0x10ffff

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 2786
    :cond_4
    if-lt v1, v4, :cond_5

    const/16 v2, 0x66

    if-gt v1, v2, :cond_5

    .line 2787
    add-int/lit8 v1, v1, -0x57

    add-int/2addr v0, v1

    .line 2788
    goto :goto_2

    :cond_5
    const/16 v2, 0x41

    if-lt v1, v2, :cond_6

    const/16 v2, 0x46

    if-gt v1, v2, :cond_6

    .line 2789
    add-int/lit8 v1, v1, -0x37

    add-int/2addr v0, v1

    .line 2790
    goto :goto_2

    .line 2791
    :cond_6
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "character reference (with hex value) may not contain "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2888
    :catch_0
    move-exception v0

    .line 2889
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    const-string v2, "Unexpected end of stream"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v1

    .line 2799
    :cond_7
    const/16 v2, 0x30

    if-lt v1, v2, :cond_8

    const/16 v2, 0x39

    if-gt v1, v2, :cond_8

    .line 2800
    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    .line 2808
    :try_start_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v1

    .line 2809
    const v2, 0x10ffff

    if-le v0, v2, :cond_7

    goto/16 :goto_0

    .line 2801
    :cond_8
    if-eq v1, v3, :cond_1

    .line 2804
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "character reference (with decimal value) may not contain "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2828
    :cond_9
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->charRefOneCharBuf:[C

    const/4 v2, 0x0

    int-to-char v0, v0

    aput-char v0, v1, v2

    .line 2829
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->charRefOneCharBuf:[C

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityValue:[C

    goto/16 :goto_1

    .line 2835
    :cond_a
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    if-ne v0, v3, :cond_a

    .line 2836
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 2838
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    sub-int/2addr v0, v1

    .line 2839
    if-ne v0, v6, :cond_e

    .line 2840
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    aget-char v1, v1, v2

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_c

    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-ne v1, v5, :cond_c

    .line 2841
    if-nez p1, :cond_b

    .line 2842
    const-string v0, "<"

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->text:Ljava/lang/String;

    .line 2843
    :cond_b
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->charRefOneCharBuf:[C

    const/4 v1, 0x0

    const/16 v2, 0x3c

    aput-char v2, v0, v1

    .line 2845
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->charRefOneCharBuf:[C

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityValue:[C

    goto/16 :goto_1

    .line 2851
    :cond_c
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    aget-char v1, v1, v2

    const/16 v2, 0x67

    if-ne v1, v2, :cond_14

    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-ne v1, v5, :cond_14

    .line 2852
    if-nez p1, :cond_d

    .line 2853
    const-string v0, ">"

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->text:Ljava/lang/String;

    .line 2854
    :cond_d
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->charRefOneCharBuf:[C

    const/4 v1, 0x0

    const/16 v2, 0x3e

    aput-char v2, v0, v1

    .line 2856
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->charRefOneCharBuf:[C

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityValue:[C

    goto/16 :goto_1

    .line 2858
    :cond_e
    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    .line 2859
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    aget-char v1, v1, v2

    if-ne v1, v4, :cond_14

    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    const/16 v2, 0x6d

    if-ne v1, v2, :cond_14

    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    add-int/lit8 v2, v2, 0x2

    aget-char v1, v1, v2

    const/16 v2, 0x70

    if-ne v1, v2, :cond_14

    .line 2861
    if-nez p1, :cond_f

    .line 2862
    const-string v0, "&"

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->text:Ljava/lang/String;

    .line 2863
    :cond_f
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->charRefOneCharBuf:[C

    const/4 v1, 0x0

    const/16 v2, 0x26

    aput-char v2, v0, v1

    .line 2865
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->charRefOneCharBuf:[C

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityValue:[C

    goto/16 :goto_1

    .line 2867
    :cond_10
    const/4 v1, 0x4

    if-ne v0, v1, :cond_14

    .line 2868
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    aget-char v1, v1, v2

    if-ne v1, v4, :cond_12

    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    const/16 v2, 0x70

    if-ne v1, v2, :cond_12

    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    add-int/lit8 v2, v2, 0x2

    aget-char v1, v1, v2

    const/16 v2, 0x6f

    if-ne v1, v2, :cond_12

    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    add-int/lit8 v2, v2, 0x3

    aget-char v1, v1, v2

    const/16 v2, 0x73

    if-ne v1, v2, :cond_12

    .line 2870
    if-nez p1, :cond_11

    .line 2871
    const-string v0, "\'"

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->text:Ljava/lang/String;

    .line 2872
    :cond_11
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->charRefOneCharBuf:[C

    const/4 v1, 0x0

    const/16 v2, 0x27

    aput-char v2, v0, v1

    .line 2874
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->charRefOneCharBuf:[C

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityValue:[C

    goto/16 :goto_1

    .line 2876
    :cond_12
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    aget-char v1, v1, v2

    const/16 v2, 0x71

    if-ne v1, v2, :cond_14

    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    const/16 v2, 0x75

    if-ne v1, v2, :cond_14

    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    add-int/lit8 v2, v2, 0x2

    aget-char v1, v1, v2

    const/16 v2, 0x6f

    if-ne v1, v2, :cond_14

    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    add-int/lit8 v2, v2, 0x3

    aget-char v1, v1, v2

    if-ne v1, v5, :cond_14

    .line 2878
    if-nez p1, :cond_13

    .line 2879
    const-string v0, "\""

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->text:Ljava/lang/String;

    .line 2880
    :cond_13
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->charRefOneCharBuf:[C

    const/4 v1, 0x0

    const/16 v2, 0x22

    aput-char v2, v0, v1

    .line 2882
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->charRefOneCharBuf:[C

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityValue:[C

    goto/16 :goto_1

    .line 2887
    :cond_14
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->lookupEntityReplacement(I)[C

    move-result-object v0

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->entityValue:[C
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method protected parseEpilog()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x6

    const/4 v2, 0x0

    const/16 v0, 0x8

    const/4 v4, 0x1

    .line 2059
    iget v3, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    if-ne v3, v0, :cond_0

    .line 2060
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "already reached end document"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2064
    :cond_0
    iget-boolean v3, p0, Lcom/bea/xml/stream/MXParser;->reachedEnd:Z

    if-eqz v3, :cond_1

    .line 2065
    iput v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    .line 2139
    :goto_0
    return v0

    .line 2071
    :cond_1
    :try_start_0
    iget-boolean v3, p0, Lcom/bea/xml/stream/MXParser;->seenMarkup:Z

    if-eqz v3, :cond_2

    .line 2072
    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v5, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v5, v5, -0x1

    aget-char v3, v3, v5

    .line 2076
    :goto_1
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/bea/xml/stream/MXParser;->seenMarkup:Z

    .line 2077
    iget v5, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/bea/xml/stream/MXParser;->posStart:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1

    move v8, v3

    move v3, v2

    move v2, v8

    .line 2081
    :goto_2
    const/16 v5, 0x3c

    if-ne v2, v5, :cond_a

    .line 2082
    if-eqz v3, :cond_3

    :try_start_1
    iget-boolean v2, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-eqz v2, :cond_3

    .line 2083
    iget v2, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 2084
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/bea/xml/stream/MXParser;->seenMarkup:Z

    .line 2085
    const/4 v2, 0x6

    iput v2, p0, Lcom/bea/xml/stream/MXParser;->eventType:I
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    goto :goto_0

    .line 2074
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v3

    goto :goto_1

    .line 2087
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v2

    .line 2088
    const/16 v5, 0x3f

    if-ne v2, v5, :cond_4

    .line 2091
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parsePI()Z

    .line 2092
    iget-boolean v2, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-eqz v2, :cond_d

    const/4 v2, 0x3

    iput v2, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    move v0, v2

    goto :goto_0

    .line 2094
    :cond_4
    const/16 v5, 0x21

    if-ne v2, v5, :cond_7

    .line 2095
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v2

    .line 2096
    const/16 v5, 0x44

    if-ne v2, v5, :cond_5

    .line 2097
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parseDocdecl()V

    .line 2098
    iget-boolean v2, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-eqz v2, :cond_d

    const/16 v2, 0xb

    iput v2, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    move v0, v2

    goto :goto_0

    .line 2099
    :cond_5
    const/16 v5, 0x2d

    if-ne v2, v5, :cond_6

    .line 2100
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parseComment()V

    .line 2101
    iget-boolean v2, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-eqz v2, :cond_d

    const/4 v2, 0x5

    iput v2, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    move v0, v2

    goto :goto_0

    .line 2103
    :cond_6
    new-instance v5, Ljavax/xml/stream/XMLStreamException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "unexpected markup <!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v5
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2133
    :catch_0
    move-exception v2

    move v2, v3

    .line 2134
    :goto_3
    iput-boolean v4, p0, Lcom/bea/xml/stream/MXParser;->reachedEnd:Z

    .line 2135
    iget-boolean v3, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-eqz v3, :cond_c

    if-eqz v2, :cond_c

    .line 2136
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 2137
    iput v1, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    move v0, v1

    goto/16 :goto_0

    .line 2107
    :cond_7
    const/16 v5, 0x2f

    if-ne v2, v5, :cond_8

    .line 2108
    :try_start_4
    new-instance v5, Ljavax/xml/stream/XMLStreamException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "end tag not allowed in epilog but got "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v5

    .line 2111
    :cond_8
    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/MXParser;->isNameStartChar(C)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2112
    new-instance v5, Ljavax/xml/stream/XMLStreamException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "start tag not allowed in epilog but got "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v5

    .line 2116
    :cond_9
    new-instance v5, Ljavax/xml/stream/XMLStreamException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "in epilog expected ignorable content and not "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v5

    .line 2120
    :cond_a
    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/MXParser;->isS(C)Z
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v5

    if-eqz v5, :cond_b

    move v2, v4

    .line 2127
    :goto_4
    :try_start_5
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_1

    move-result v3

    move v8, v3

    move v3, v2

    move v2, v8

    .line 2128
    goto/16 :goto_2

    .line 2123
    :cond_b
    :try_start_6
    new-instance v5, Ljavax/xml/stream/XMLStreamException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "in epilog non whitespace content is not allowed but got "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v5
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_0

    .line 2139
    :cond_c
    iput v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    goto/16 :goto_0

    .line 2133
    :catch_1
    move-exception v3

    goto/16 :goto_3

    :cond_d
    move v2, v3

    goto :goto_4
.end method

.method protected parsePI()Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x2

    const/16 v12, 0x3f

    const/16 v6, 0xa

    const/4 v0, 0x1

    .line 3042
    iget v8, p0, Lcom/bea/xml/stream/MXParser;->lineNumber:I

    .line 3043
    iget v9, p0, Lcom/bea/xml/stream/MXParser;->columnNumber:I

    .line 3046
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/bea/xml/stream/MXParser;->piTarget:Ljava/lang/String;

    .line 3047
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bea/xml/stream/MXParser;->piData:Ljava/lang/String;

    .line 3052
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 3055
    :cond_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v5

    .line 3056
    if-ne v5, v12, :cond_2

    .line 3068
    :cond_1
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    .line 3070
    if-nez v1, :cond_3

    .line 3071
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "processing instruction must have PITarget name"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3157
    :catch_0
    move-exception v0

    .line 3159
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "processing instruction started on line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " and column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " was not closed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v1

    .line 3059
    :cond_2
    :try_start_1
    invoke-virtual {p0, v5}, Lcom/bea/xml/stream/MXParser;->isNameChar(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3061
    invoke-virtual {p0, v5}, Lcom/bea/xml/stream/MXParser;->isS(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3064
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "unexpected character "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " after processing instruction name; expected a white space or \'?>\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 3075
    :cond_3
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v7, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    invoke-direct {v2, v3, v7, v1}, Ljava/lang/String;-><init>([CII)V

    iput-object v2, p0, Lcom/bea/xml/stream/MXParser;->piTarget:Ljava/lang/String;

    .line 3080
    if-eq v5, v12, :cond_4

    .line 3081
    invoke-virtual {p0, v5}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v5

    .line 3084
    :cond_4
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->piTarget:Ljava/lang/String;

    const-string v2, "xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 3087
    if-eqz v1, :cond_7

    .line 3093
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    add-int/2addr v1, v2

    const/4 v2, 0x2

    if-le v1, v2, :cond_5

    .line 3094
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "processing instruction can not have PITarget with reserved name \'xml\'"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 3097
    :cond_5
    const-string v1, "xml"

    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->piTarget:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 3098
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "XMLDecl must have xml name in lowercase"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 3101
    :cond_6
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 3102
    invoke-virtual {p0, v5}, Lcom/bea/xml/stream/MXParser;->parseXmlDecl(C)V

    .line 3104
    iget v1, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 3154
    :goto_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    iget v4, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    iget v5, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    sub-int/2addr v4, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lcom/bea/xml/stream/MXParser;->piData:Ljava/lang/String;

    .line 3155
    return v0

    .line 3106
    :cond_7
    iget v2, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 3110
    const/4 v3, -0x1

    .line 3111
    const/4 v2, 0x0

    move v7, v3

    move v3, v4

    .line 3114
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 3115
    if-ne v5, v12, :cond_a

    .line 3116
    add-int/lit8 v4, v7, 0x1

    .line 3143
    :cond_8
    :goto_2
    if-eqz v2, :cond_9

    .line 3144
    iget-object v10, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v11, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    aput-char v5, v10, v11

    .line 3145
    iget v5, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 3113
    :cond_9
    :goto_3
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v5

    goto :goto_1

    .line 3117
    :cond_a
    const/16 v10, 0x3e

    if-ne v5, v10, :cond_b

    .line 3118
    if-ne v7, v4, :cond_8

    .line 3148
    if-eqz v2, :cond_e

    .line 3149
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    move v0, v1

    .line 3150
    goto :goto_0

    .line 3121
    :cond_b
    const/16 v10, 0xd

    if-ne v5, v10, :cond_d

    .line 3122
    const/4 v3, 0x1

    iput v3, p0, Lcom/bea/xml/stream/MXParser;->columnNumber:I

    .line 3123
    add-int/lit8 v3, v7, 0x1

    .line 3125
    if-nez v2, :cond_c

    .line 3126
    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v10, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v10, v10, -0x1

    const/16 v11, 0xa

    aput-char v11, v5, v10

    goto :goto_3

    :cond_c
    move v5, v6

    .line 3131
    goto :goto_2

    :cond_d
    if-ne v5, v6, :cond_8

    .line 3132
    if-ne v3, v7, :cond_8

    .line 3133
    if-nez v2, :cond_9

    .line 3135
    iget v2, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    move v2, v0

    .line 3136
    goto :goto_3

    .line 3151
    :cond_e
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    goto :goto_0
.end method

.method protected parseProlog()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1965
    :try_start_0
    iget-boolean v3, p0, Lcom/bea/xml/stream/MXParser;->seenMarkup:Z

    if-eqz v3, :cond_0

    .line 1966
    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v4, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v4, v4, -0x1

    aget-char v3, v3, v4

    .line 1971
    :goto_0
    iget v4, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    if-ne v4, v0, :cond_2

    .line 1975
    const v4, 0xfffe

    if-ne v3, v4, :cond_1

    .line 1976
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "first character in input was UNICODE noncharacter (0xFFFE)- input requires int swapping"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2051
    :catch_0
    move-exception v0

    .line 2052
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    const-string v2, "Unexpected end of stream"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v1

    .line 1968
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v3

    goto :goto_0

    .line 1981
    :cond_1
    const v4, 0xfeff

    if-ne v3, v4, :cond_2

    .line 1983
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v3

    .line 1986
    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/bea/xml/stream/MXParser;->seenMarkup:Z

    .line 1988
    iget v4, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 1994
    :goto_1
    const/16 v4, 0x3c

    if-ne v3, v4, :cond_c

    .line 1995
    if-eqz v1, :cond_3

    iget-boolean v3, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-eqz v3, :cond_3

    .line 1996
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 1997
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->seenMarkup:Z

    .line 1998
    const/4 v0, 0x6

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    .line 2035
    :goto_2
    return v0

    .line 2000
    :cond_3
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v3

    .line 2001
    const/16 v4, 0x3f

    if-ne v3, v4, :cond_5

    .line 2004
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parsePI()Z

    move-result v3

    .line 2005
    iget-boolean v4, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-eqz v4, :cond_d

    .line 2006
    if-eqz v3, :cond_4

    .line 2007
    const/4 v1, 0x7

    iput v1, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    goto :goto_2

    .line 2008
    :cond_4
    const/4 v0, 0x3

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    goto :goto_2

    .line 2010
    :cond_5
    const/16 v4, 0x21

    if-ne v3, v4, :cond_9

    .line 2011
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v3

    .line 2012
    const/16 v4, 0x44

    if-ne v3, v4, :cond_7

    .line 2013
    iget-boolean v3, p0, Lcom/bea/xml/stream/MXParser;->seenDocdecl:Z

    if-eqz v3, :cond_6

    .line 2014
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "only one docdecl allowed in XML document"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2018
    :cond_6
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/bea/xml/stream/MXParser;->seenDocdecl:Z

    .line 2019
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parseDocdecl()V

    .line 2020
    iget-boolean v3, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-eqz v3, :cond_d

    const/16 v0, 0xb

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    goto :goto_2

    .line 2021
    :cond_7
    const/16 v4, 0x2d

    if-ne v3, v4, :cond_8

    .line 2022
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parseComment()V

    .line 2023
    iget-boolean v3, p0, Lcom/bea/xml/stream/MXParser;->tokenize:Z

    if-eqz v3, :cond_d

    const/4 v0, 0x5

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    goto :goto_2

    .line 2025
    :cond_8
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "unexpected markup <!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2029
    :cond_9
    const/16 v0, 0x2f

    if-ne v3, v0, :cond_a

    .line 2030
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "expected start tag name and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2033
    :cond_a
    invoke-virtual {p0, v3}, Lcom/bea/xml/stream/MXParser;->isNameStartChar(C)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2034
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->seenRoot:Z

    .line 2035
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parseStartTag()I

    move-result v0

    goto/16 :goto_2

    .line 2037
    :cond_b
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "expected start tag name and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2041
    :cond_c
    invoke-virtual {p0, v3}, Lcom/bea/xml/stream/MXParser;->isS(C)Z

    move-result v1

    if-eqz v1, :cond_e

    move v1, v2

    .line 2048
    :cond_d
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v3

    goto/16 :goto_1

    .line 2044
    :cond_e
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "only whitespace content allowed before start tag and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public parseStartTag()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x3a

    const/16 v11, 0x3e

    const/4 v5, -0x1

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 2225
    iput v3, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    .line 2229
    :try_start_0
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    .line 2231
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    .line 2233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->emptyElementTag:Z

    .line 2234
    const/4 v0, 0x0

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    .line 2235
    const/4 v0, 0x0

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->localNamespaceEnd:I

    .line 2237
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    add-int v6, v0, v2

    .line 2239
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v2, v2, -0x1

    aget-char v0, v0, v2

    .line 2240
    if-ne v0, v7, :cond_21

    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    if-eqz v0, :cond_21

    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "when namespaces processing enabled colon can not be at element name start"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2412
    :catch_0
    move-exception v0

    .line 2413
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    const-string v2, "Unexpected end of stream"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v1

    .line 2250
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    add-int/2addr v0, v2

    move v2, v0

    .line 2244
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v4

    .line 2245
    invoke-virtual {p0, v4}, Lcom/bea/xml/stream/MXParser;->isNameChar(C)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2255
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->ensureElementsCapacity()V

    .line 2260
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v0, v0, -0x1

    iget v7, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    sub-int v7, v6, v7

    sub-int v7, v0, v7

    .line 2261
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->elRawName:[[C

    iget v8, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    aget-object v0, v0, v8

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->elRawName:[[C

    iget v8, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    aget-object v0, v0, v8

    array-length v0, v0

    if-ge v0, v7, :cond_3

    .line 2262
    :cond_2
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->elRawName:[[C

    iget v8, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    mul-int/lit8 v9, v7, 0x2

    new-array v9, v9, [C

    aput-object v9, v0, v8

    .line 2264
    :cond_3
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v8, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    sub-int v8, v6, v8

    iget-object v9, p0, Lcom/bea/xml/stream/MXParser;->elRawName:[[C

    iget v10, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    aget-object v9, v9, v10

    const/4 v10, 0x0

    invoke-static {v0, v8, v9, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2265
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->elRawNameEnd:[I

    iget v8, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    aput v7, v0, v8

    .line 2270
    const/4 v0, 0x0

    .line 2271
    iget-boolean v8, p0, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    if-eqz v8, :cond_a

    .line 2272
    if-eq v2, v5, :cond_9

    .line 2273
    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->elPrefix:[Ljava/lang/String;

    iget v7, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v8, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    sub-int v8, v6, v8

    sub-int v6, v2, v6

    invoke-virtual {p0, v0, v8, v6}, Lcom/bea/xml/stream/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v7

    .line 2275
    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->elName:[Ljava/lang/String;

    iget v6, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    iget-object v7, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    add-int/lit8 v8, v2, 0x1

    iget v9, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v9, v9, -0x2

    iget v10, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v2, v10

    sub-int v2, v9, v2

    invoke-virtual {p0, v7, v8, v2}, Lcom/bea/xml/stream/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    move-object v5, v0

    move-object v6, v2

    move v0, v4

    .line 2287
    :goto_1
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->isS(C)Z

    move-result v2

    .line 2288
    if-eqz v2, :cond_5

    .line 2289
    :cond_4
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->isS(C)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2291
    :cond_5
    if-ne v0, v11, :cond_b

    .line 2315
    :cond_6
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    if-eqz v0, :cond_18

    .line 2316
    invoke-virtual {p0, v5}, Lcom/bea/xml/stream/MXParser;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2317
    if-nez v0, :cond_7

    .line 2318
    if-nez v5, :cond_f

    .line 2319
    sget-object v0, Lcom/bea/xml/stream/MXParser;->NO_NAMESPACE:Ljava/lang/String;

    .line 2327
    :cond_7
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->elUri:[Ljava/lang/String;

    iget v4, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    aput-object v0, v2, v4

    move v0, v1

    .line 2335
    :goto_2
    iget v2, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    if-ge v0, v2, :cond_12

    .line 2337
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->attributePrefix:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 2338
    if-eqz v2, :cond_11

    .line 2339
    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/MXParser;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2340
    if-nez v4, :cond_10

    .line 2341
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "could not determine namespace bound to attribute prefix "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2246
    :cond_8
    if-ne v4, v7, :cond_1

    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    if-eqz v0, :cond_1

    .line 2247
    if-eq v2, v5, :cond_0

    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "only one colon is allowed in name of element when namespaces are enabled"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2279
    :cond_9
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->elPrefix:[Ljava/lang/String;

    iget v5, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    const/4 v0, 0x0

    aput-object v0, v2, v5

    .line 2280
    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->elName:[Ljava/lang/String;

    iget v8, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v9, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v6, v9

    invoke-virtual {p0, v2, v6, v7}, Lcom/bea/xml/stream/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v8

    move-object v5, v0

    move-object v6, v2

    move v0, v4

    .line 2282
    goto/16 :goto_1

    .line 2283
    :cond_a
    iget-object v5, p0, Lcom/bea/xml/stream/MXParser;->elName:[Ljava/lang/String;

    iget v8, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v9, p0, Lcom/bea/xml/stream/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v6, v9

    invoke-virtual {p0, v2, v6, v7}, Lcom/bea/xml/stream/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v8

    move-object v5, v0

    move-object v6, v2

    move v0, v4

    goto/16 :goto_1

    .line 2293
    :cond_b
    const/16 v4, 0x2f

    if-ne v0, v4, :cond_c

    .line 2294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->emptyElementTag:Z

    .line 2295
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    .line 2296
    if-eq v0, v11, :cond_6

    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "expected > to end empty tag not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    .line 2299
    :cond_c
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->isNameStartChar(C)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2300
    if-nez v2, :cond_d

    .line 2301
    if-eq v0, v11, :cond_d

    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "expected a white space between attributes"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2303
    :cond_d
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->parseAttribute()C

    .line 2304
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    goto/16 :goto_1

    .line 2307
    :cond_e
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "start tag unexpected character "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    .line 2321
    :cond_f
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "could not determine namespace bound to element prefix "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 2346
    :cond_10
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->attributeUri:[Ljava/lang/String;

    aput-object v4, v2, v0

    .line 2335
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 2348
    :cond_11
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->attributeUri:[Ljava/lang/String;

    sget-object v4, Lcom/bea/xml/stream/MXParser;->NO_NAMESPACE:Ljava/lang/String;

    aput-object v4, v2, v0

    goto :goto_3

    :cond_12
    move v4, v3

    .line 2356
    :goto_4
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    if-ge v4, v0, :cond_1d

    move v2, v1

    .line 2358
    :goto_5
    if-ge v2, v4, :cond_17

    .line 2360
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v0, v0, v2

    iget-object v7, p0, Lcom/bea/xml/stream/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v7, v7, v4

    if-ne v0, v7, :cond_16

    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v0, v0, v2

    iget-object v7, p0, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_13
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->attributeNameHash:[I

    aget v0, v0, v2

    iget-object v7, p0, Lcom/bea/xml/stream/MXParser;->attributeNameHash:[I

    aget v7, v7, v4

    if-ne v0, v7, :cond_16

    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v0, v0, v2

    iget-object v7, p0, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2367
    :cond_14
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v0, v0, v2

    .line 2368
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v1, v1, v2

    if-eqz v1, :cond_20

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v2, v3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 2369
    :goto_6
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v0, v0, v4

    .line 2370
    iget-object v2, p0, Lcom/bea/xml/stream/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v2, v2, v4

    if-eqz v2, :cond_15

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2371
    :cond_15
    new-instance v2, Ljavax/xml/stream/XMLStreamException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "duplicated attributes "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " and "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v2

    .line 2358
    :cond_16
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_5

    .line 2356
    :cond_17
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_4

    :cond_18
    move v2, v3

    .line 2383
    :goto_7
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->attributeCount:I

    if-ge v2, v0, :cond_1d

    move v0, v1

    .line 2385
    :goto_8
    if-ge v0, v2, :cond_1c

    .line 2387
    iget-boolean v4, p0, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-eqz v4, :cond_19

    iget-object v4, p0, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v4, v4, v0

    iget-object v7, p0, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    :cond_19
    iget-boolean v4, p0, Lcom/bea/xml/stream/MXParser;->allStringsInterned:Z

    if-nez v4, :cond_1b

    iget-object v4, p0, Lcom/bea/xml/stream/MXParser;->attributeNameHash:[I

    aget v4, v4, v0

    iget-object v7, p0, Lcom/bea/xml/stream/MXParser;->attributeNameHash:[I

    aget v7, v7, v2

    if-ne v4, v7, :cond_1b

    iget-object v4, p0, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v4, v4, v0

    iget-object v7, p0, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 2394
    :cond_1a
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v0, v1, v0

    .line 2395
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v1, v1, v2

    .line 2396
    new-instance v2, Ljavax/xml/stream/XMLStreamException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "duplicated attributes "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, " and "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v2

    .line 2385
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 2383
    :cond_1c
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    .line 2404
    :cond_1d
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->elNamespaceCount:[I

    iget v1, p0, Lcom/bea/xml/stream/MXParser;->depth:I

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->namespaceEnd:I

    aput v2, v0, v1

    .line 2405
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    iput v0, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    .line 2407
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->defaultAttributes:Ljava/util/HashMap;

    if-eqz v0, :cond_1e

    .line 2408
    if-eqz v5, :cond_1f

    .line 2409
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->addDefaultAttributes(Ljava/lang/String;)V

    .line 2416
    :cond_1e
    :goto_9
    return v3

    .line 2411
    :cond_1f
    invoke-virtual {p0, v6}, Lcom/bea/xml/stream/MXParser;->addDefaultAttributes(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_9

    :cond_20
    move-object v1, v0

    goto/16 :goto_6

    :cond_21
    move v2, v5

    goto/16 :goto_0
.end method

.method protected parseXmlDecl(C)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 3230
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v0

    .line 3231
    sget-object v1, Lcom/bea/xml/stream/MXParser;->VERSION:[C

    invoke-virtual {p0, v0, v1}, Lcom/bea/xml/stream/MXParser;->requireInput(C[C)C

    move-result v0

    .line 3233
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v0

    .line 3234
    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    .line 3235
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "expected equals sign (=) after version and not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3262
    :catch_0
    move-exception v0

    .line 3263
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    const-string v2, "Unexpected end of stream"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v1

    .line 3238
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    .line 3239
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v1

    .line 3240
    const/16 v0, 0x27

    if-eq v1, v0, :cond_1

    const/16 v0, 0x22

    if-eq v1, v0, :cond_1

    .line 3241
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "expected apostrophe (\') or quotation mark (\") after version and not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 3246
    :cond_1
    iget v2, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    .line 3247
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    .line 3249
    :goto_0
    if-eq v0, v1, :cond_6

    .line 3250
    const/16 v3, 0x61

    if-lt v0, v3, :cond_2

    const/16 v3, 0x7a

    if-le v0, v3, :cond_5

    :cond_2
    const/16 v3, 0x41

    if-lt v0, v3, :cond_3

    const/16 v3, 0x5a

    if-le v0, v3, :cond_5

    :cond_3
    const/16 v3, 0x30

    if-lt v0, v3, :cond_4

    const/16 v3, 0x39

    if-le v0, v3, :cond_5

    :cond_4
    const/16 v3, 0x5f

    if-eq v0, v3, :cond_5

    const/16 v3, 0x2e

    if-eq v0, v3, :cond_5

    const/16 v3, 0x3a

    if-eq v0, v3, :cond_5

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_5

    .line 3253
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "<?xml version value expected to be in ([a-zA-Z0-9_.:] | \'-\') not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    .line 3257
    :cond_5
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    goto :goto_0

    .line 3259
    :cond_6
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v0, v0, -0x1

    .line 3260
    invoke-virtual {p0, v2, v0}, Lcom/bea/xml/stream/MXParser;->parseXmlDeclWithVersion(II)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3265
    return-void
.end method

.method protected parseXmlDeclWithVersion(II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x27

    const/16 v5, 0x22

    const/16 v4, 0x3f

    .line 3275
    sub-int v0, p2, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    aget-char v0, v0, p1

    const/16 v1, 0x31

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    add-int/lit8 v1, p1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    add-int/lit8 v1, p1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    .line 3280
    :cond_0
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "only 1.0 is supported as <?xml version not \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    invoke-direct {v2, v3, p1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/MXParser;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3387
    :catch_0
    move-exception v0

    .line 3388
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    const-string v2, "Unexpected end of stream"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v1

    .line 3284
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->xmlVersion:Ljava/lang/String;

    .line 3287
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    .line 3288
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v0

    .line 3289
    if-eq v0, v4, :cond_12

    .line 3290
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v0

    .line 3292
    sget-object v1, Lcom/bea/xml/stream/MXParser;->ENCODING:[C

    const/4 v2, 0x0

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_c

    .line 3293
    sget-object v1, Lcom/bea/xml/stream/MXParser;->ENCODING:[C

    invoke-virtual {p0, v0, v1}, Lcom/bea/xml/stream/MXParser;->requireInput(C[C)C

    move-result v0

    .line 3294
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v0

    .line 3295
    const/16 v1, 0x3d

    if-eq v0, v1, :cond_2

    .line 3296
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "expected equals sign (=) after encoding and not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    .line 3299
    :cond_2
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    .line 3300
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v1

    .line 3301
    if-eq v1, v6, :cond_3

    if-eq v1, v5, :cond_3

    .line 3302
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "expected apostrophe (\') or quotation mark (\") after encoding and not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 3307
    :cond_3
    iget v2, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    .line 3308
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    .line 3310
    const/16 v3, 0x61

    if-lt v0, v3, :cond_4

    const/16 v3, 0x7a

    if-le v0, v3, :cond_6

    :cond_4
    const/16 v3, 0x41

    if-lt v0, v3, :cond_5

    const/16 v3, 0x5a

    if-le v0, v3, :cond_6

    .line 3312
    :cond_5
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "<?xml encoding name expected to start with [A-Za-z] not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    .line 3316
    :cond_6
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    .line 3317
    :goto_0
    if-eq v0, v1, :cond_b

    .line 3318
    const/16 v3, 0x61

    if-lt v0, v3, :cond_7

    const/16 v3, 0x7a

    if-le v0, v3, :cond_a

    :cond_7
    const/16 v3, 0x41

    if-lt v0, v3, :cond_8

    const/16 v3, 0x5a

    if-le v0, v3, :cond_a

    :cond_8
    const/16 v3, 0x30

    if-lt v0, v3, :cond_9

    const/16 v3, 0x39

    if-le v0, v3, :cond_a

    :cond_9
    const/16 v3, 0x2e

    if-eq v0, v3, :cond_a

    const/16 v3, 0x5f

    if-eq v0, v3, :cond_a

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_a

    .line 3321
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "<?xml encoding value expected to be in ([A-Za-z0-9._] | \'-\') not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    .line 3325
    :cond_a
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    goto :goto_0

    .line 3327
    :cond_b
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    add-int/lit8 v0, v0, -0x1

    .line 3330
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    sub-int/2addr v0, v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/bea/xml/stream/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->charEncodingScheme:Ljava/lang/String;

    .line 3331
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    .line 3332
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v0

    .line 3335
    :cond_c
    if-eq v0, v4, :cond_12

    .line 3336
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v0

    .line 3337
    sget-object v1, Lcom/bea/xml/stream/MXParser;->STANDALONE:[C

    invoke-virtual {p0, v0, v1}, Lcom/bea/xml/stream/MXParser;->requireInput(C[C)C

    move-result v0

    .line 3338
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v0

    .line 3339
    const/16 v1, 0x3d

    if-eq v0, v1, :cond_d

    .line 3340
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "expected equals sign (=) after standalone and not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    .line 3344
    :cond_d
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    .line 3345
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v1

    .line 3346
    if-eq v1, v6, :cond_e

    if-eq v1, v5, :cond_e

    .line 3347
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "expected apostrophe (\') or quotation mark (\") after encoding and not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 3352
    :cond_e
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->pos:I

    .line 3353
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    .line 3354
    const/16 v2, 0x79

    if-ne v0, v2, :cond_f

    .line 3355
    sget-object v2, Lcom/bea/xml/stream/MXParser;->YES:[C

    invoke-virtual {p0, v0, v2}, Lcom/bea/xml/stream/MXParser;->requireInput(C[C)C

    move-result v0

    .line 3356
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/bea/xml/stream/MXParser;->standalone:Z

    .line 3365
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/bea/xml/stream/MXParser;->standaloneSet:Z

    .line 3366
    if-eq v0, v1, :cond_11

    .line 3367
    new-instance v2, Ljavax/xml/stream/XMLStreamException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " after standalone value not "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v2

    .line 3357
    :cond_f
    const/16 v2, 0x6e

    if-ne v0, v2, :cond_10

    .line 3358
    sget-object v2, Lcom/bea/xml/stream/MXParser;->NO:[C

    invoke-virtual {p0, v0, v2}, Lcom/bea/xml/stream/MXParser;->requireInput(C[C)C

    move-result v0

    .line 3359
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/bea/xml/stream/MXParser;->standalone:Z

    goto :goto_1

    .line 3361
    :cond_10
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "expected \'yes\' or \'no\' after standalone and not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    .line 3371
    :cond_11
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    .line 3374
    :cond_12
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v0

    .line 3375
    if-eq v0, v4, :cond_13

    .line 3376
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "expected ?> as last part of <?xml not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    .line 3380
    :cond_13
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C

    move-result v0

    .line 3381
    const/16 v1, 0x3e

    if-eq v0, v1, :cond_14

    .line 3382
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "expected ?> as last part of <?xml not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3390
    :cond_14
    return-void
.end method

.method protected printable(C)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3728
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 3729
    const-string v0, "\\n"

    .line 3739
    :goto_0
    return-object v0

    .line 3730
    :cond_0
    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    .line 3731
    const-string v0, "\\r"

    goto :goto_0

    .line 3732
    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    .line 3733
    const-string v0, "\\t"

    goto :goto_0

    .line 3734
    :cond_2
    const/16 v0, 0x27

    if-ne p1, v0, :cond_3

    .line 3735
    const-string v0, "\\\'"

    goto :goto_0

    .line 3736
    :cond_3
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_4

    const/16 v0, 0x20

    if-ge p1, v0, :cond_5

    .line 3737
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\\u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3739
    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected printable(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 3743
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 3749
    :goto_0
    return-object v0

    .line 3744
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 3745
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 3746
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3745
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3748
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected processDTD()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 3515
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->buf:[C

    iget v2, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    iget v3, p0, Lcom/bea/xml/stream/MXParser;->posEnd:I

    iget v4, p0, Lcom/bea/xml/stream/MXParser;->posStart:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 3516
    new-instance v1, Lcom/wutka/dtd/DTDParser;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/wutka/dtd/DTDParser;-><init>(Ljava/io/Reader;)V

    .line 3517
    invoke-virtual {v1}, Lcom/wutka/dtd/DTDParser;->parse()Lcom/wutka/dtd/DTD;

    move-result-object v0

    iput-object v0, p0, Lcom/bea/xml/stream/MXParser;->mDtdIntSubset:Lcom/wutka/dtd/DTD;

    .line 3519
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->mDtdIntSubset:Lcom/wutka/dtd/DTD;

    sget-object v0, Lcom/bea/xml/stream/MXParser;->class$com$wutka$dtd$DTDEntity:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "com.wutka.dtd.DTDEntity"

    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/bea/xml/stream/MXParser;->class$com$wutka$dtd$DTDEntity:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/wutka/dtd/DTD;->getItemsByType(Ljava/lang/Class;)Ljava/util/Vector;

    move-result-object v0

    .line 3520
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 3521
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3522
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wutka/dtd/DTDEntity;

    .line 3523
    invoke-virtual {v0}, Lcom/wutka/dtd/DTDEntity;->isParsed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3524
    invoke-virtual {v0}, Lcom/wutka/dtd/DTDEntity;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/wutka/dtd/DTDEntity;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/bea/xml/stream/MXParser;->defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3544
    :catch_0
    move-exception v0

    .line 3547
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {v1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 3519
    :cond_1
    :try_start_1
    sget-object v0, Lcom/bea/xml/stream/MXParser;->class$com$wutka$dtd$DTDEntity:Ljava/lang/Class;

    goto :goto_0

    .line 3530
    :cond_2
    iget-object v1, p0, Lcom/bea/xml/stream/MXParser;->mDtdIntSubset:Lcom/wutka/dtd/DTD;

    sget-object v0, Lcom/bea/xml/stream/MXParser;->class$com$wutka$dtd$DTDAttlist:Ljava/lang/Class;

    if-nez v0, :cond_6

    const-string v0, "com.wutka.dtd.DTDAttlist"

    invoke-static {v0}, Lcom/bea/xml/stream/MXParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/bea/xml/stream/MXParser;->class$com$wutka$dtd$DTDAttlist:Ljava/lang/Class;

    :goto_2
    invoke-virtual {v1, v0}, Lcom/wutka/dtd/DTD;->getItemsByType(Ljava/lang/Class;)Ljava/util/Vector;

    move-result-object v0

    .line 3531
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 3532
    :cond_3
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3533
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wutka/dtd/DTDAttlist;

    .line 3534
    invoke-virtual {v0}, Lcom/wutka/dtd/DTDAttlist;->getAttribute()[Lcom/wutka/dtd/DTDAttribute;

    move-result-object v3

    .line 3535
    const/4 v1, 0x0

    :goto_3
    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 3536
    aget-object v4, v3, v1

    .line 3537
    invoke-virtual {v4}, Lcom/wutka/dtd/DTDAttribute;->getDefaultValue()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 3538
    iget-object v4, p0, Lcom/bea/xml/stream/MXParser;->defaultAttributes:Ljava/util/HashMap;

    if-nez v4, :cond_4

    .line 3539
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/bea/xml/stream/MXParser;->defaultAttributes:Ljava/util/HashMap;

    .line 3540
    :cond_4
    iget-object v4, p0, Lcom/bea/xml/stream/MXParser;->defaultAttributes:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/wutka/dtd/DTDAttlist;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3535
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3530
    :cond_6
    sget-object v0, Lcom/bea/xml/stream/MXParser;->class$com$wutka$dtd$DTDAttlist:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 3549
    :cond_7
    return-void
.end method

.method public recycle()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 1503
    invoke-direct {p0}, Lcom/bea/xml/stream/MXParser;->reset()V

    .line 1504
    return-void
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1213
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getEventType()I

    move-result v3

    .line 1214
    if-ne p1, v3, :cond_3

    move v2, v0

    .line 1216
    :goto_0
    if-eqz v2, :cond_1

    if-eqz p3, :cond_1

    .line 1217
    if-eq v3, v0, :cond_0

    const/4 v2, 0x2

    if-eq v3, v2, :cond_0

    const/16 v2, 0x9

    if-ne v3, v2, :cond_4

    .line 1219
    :cond_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1228
    :cond_1
    if-eqz v2, :cond_f

    if-eqz p2, :cond_f

    .line 1229
    if-eq v3, v0, :cond_2

    if-ne v3, v0, :cond_f

    .line 1234
    :cond_2
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    .line 1235
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_6

    .line 1236
    if-nez v2, :cond_5

    .line 1243
    :goto_1
    if-nez v0, :cond_e

    .line 1244
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "expected event "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p1}, Lcom/bea/xml/stream/util/ElementTypeNames;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    if-eqz p3, :cond_7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, " with name \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    if-eqz p2, :cond_8

    if-eqz p3, :cond_8

    const-string v0, " and"

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    if-eqz p2, :cond_9

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, " with namespace \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " but got"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getEventType()I

    move-result v0

    if-eq p1, v0, :cond_a

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getEventType()I

    move-result v3

    invoke-static {v3}, Lcom/bea/xml/stream/util/ElementTypeNames;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    if-eqz p3, :cond_b

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, " name \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    if-eqz p2, :cond_c

    if-eqz p3, :cond_c

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, " and"

    :goto_7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    if-eqz p2, :cond_d

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, " namespace \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " (position:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    :cond_3
    move v2, v1

    .line 1214
    goto/16 :goto_0

    .line 1221
    :cond_4
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Using non-null local name argument for require(); "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v3}, Lcom/bea/xml/stream/util/ElementTypeNames;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " event does not have local name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    :cond_5
    move v0, v1

    .line 1236
    goto/16 :goto_1

    .line 1238
    :cond_6
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_1

    .line 1244
    :cond_7
    const-string v0, ""

    goto/16 :goto_2

    :cond_8
    const-string v0, ""

    goto/16 :goto_3

    :cond_9
    const-string v0, ""

    goto/16 :goto_4

    :cond_a
    const-string v0, ""

    goto/16 :goto_5

    :cond_b
    const-string v0, ""

    goto/16 :goto_6

    :cond_c
    const-string v0, ""

    goto/16 :goto_7

    :cond_d
    const-string v0, ""

    goto :goto_8

    .line 1262
    :cond_e
    return-void

    :cond_f
    move v0, v2

    goto/16 :goto_1
.end method

.method protected requireInput(C[C)C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 3174
    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 3176
    aget-char v1, p2, v0

    if-eq p1, v1, :cond_0

    .line 3177
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    aget-char v0, p2, v0

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " and not "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    .line 3182
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 3174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3183
    :catch_0
    move-exception v0

    .line 3184
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    const-string v2, "Unexpected end of stream"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v1

    .line 3187
    :cond_1
    return p1
.end method

.method protected requireNextS()C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 3196
    :try_start_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3200
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->isS(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3201
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "white space is required and not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    .line 3197
    :catch_0
    move-exception v0

    .line 3198
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    const-string v2, "Unexpected end of stream"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v1

    .line 3204
    :cond_0
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->skipS(C)C

    move-result v0

    return v0
.end method

.method protected resetStringCache()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public setConfigurationContext(Lcom/bea/xml/stream/ConfigurationContextBase;)V
    .locals 2

    .prologue
    .line 3785
    iput-object p1, p0, Lcom/bea/xml/stream/MXParser;->configurationContext:Lcom/bea/xml/stream/ConfigurationContextBase;

    .line 3786
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "javax.xml.stream.isCoalescing"

    invoke-virtual {p1, v1}, Lcom/bea/xml/stream/ConfigurationContextBase;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 3787
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "http://java.sun.com/xml/stream/properties/report-cdata-event"

    invoke-virtual {p1, v1}, Lcom/bea/xml/stream/ConfigurationContextBase;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->reportCdataEvent:Z

    .line 3788
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 710
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "feature name should not be nulll"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 711
    :cond_0
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 712
    iget v0, p0, Lcom/bea/xml/stream/MXParser;->eventType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "namespace processing feature can only be changed before parsing"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    .line 715
    :cond_1
    iput-boolean p2, p0, Lcom/bea/xml/stream/MXParser;->processNamespaces:Z

    .line 741
    :cond_2
    return-void

    .line 721
    :cond_3
    const-string v0, "http://xmlpull.org/v1/doc/features.html#names-interned"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 722
    if-eqz p2, :cond_2

    .line 723
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "interning names in this implementation is not supported"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 726
    :cond_4
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 727
    if-eqz p2, :cond_2

    .line 728
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "processing DOCDECL is not supported"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 733
    :cond_5
    const-string v0, "http://xmlpull.org/v1/doc/features.html#xml-roundtrip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 734
    if-nez p2, :cond_2

    .line 735
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "roundtrip feature can not be switched off"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 739
    :cond_6
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "unknown feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInput(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 814
    :try_start_0
    invoke-static {p1}, Lcom/bea/xml/stream/reader/XmlReader;->createReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v2

    .line 819
    const/4 v1, 0x0

    .line 820
    instance-of v3, v2, Lcom/bea/xml/stream/reader/XmlReader$BaseReader;

    if-eqz v3, :cond_0

    .line 821
    move-object v0, v2

    check-cast v0, Lcom/bea/xml/stream/reader/XmlReader$BaseReader;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/bea/xml/stream/reader/XmlReader$BaseReader;->getEncoding()Ljava/lang/String;

    move-result-object v1

    .line 823
    :cond_0
    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/MXParser;->setInput(Ljava/io/Reader;)V

    .line 824
    if-eqz v1, :cond_1

    .line 825
    iput-object v1, p0, Lcom/bea/xml/stream/MXParser;->inputEncoding:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    :cond_1
    return-void

    .line 827
    :catch_0
    move-exception v1

    .line 828
    new-instance v2, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {v2, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 835
    if-nez p1, :cond_0

    .line 836
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input stream can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 840
    :cond_0
    if-eqz p2, :cond_2

    :try_start_0
    invoke-static {p1, p2}, Lcom/bea/xml/stream/reader/XmlReader;->createReader(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/Reader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 848
    :goto_0
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/MXParser;->setInput(Ljava/io/Reader;)V

    .line 850
    if-eqz p2, :cond_1

    .line 851
    iput-object p2, p0, Lcom/bea/xml/stream/MXParser;->inputEncoding:Ljava/lang/String;

    .line 853
    :cond_1
    return-void

    .line 840
    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/bea/xml/stream/reader/XmlReader;->createReader(Ljava/io/InputStream;)Ljava/io/Reader;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 843
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 844
    if-nez p2, :cond_3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "(for encoding \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\')"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 845
    :goto_1
    new-instance v2, Ljavax/xml/stream/XMLStreamException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "could not create reader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v2, v0, v3, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v2

    .line 844
    :cond_3
    const-string v0, ""

    goto :goto_1
.end method

.method public setInput(Ljava/io/Reader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 804
    invoke-direct {p0}, Lcom/bea/xml/stream/MXParser;->reset()V

    .line 805
    iput-object p1, p0, Lcom/bea/xml/stream/MXParser;->reader:Ljava/io/Reader;

    .line 806
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->checkForXMLDecl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->next()I

    .line 809
    :cond_0
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 767
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "unsupported property: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 1350
    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->nextToken()I

    .line 1351
    return-void
.end method

.method protected skipS(C)C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 3211
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/MXParser;->isS(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->more()C
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 3213
    :catch_0
    move-exception v0

    .line 3214
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    const-string v2, "Unexpected end of stream"

    invoke-virtual {p0}, Lcom/bea/xml/stream/MXParser;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v1

    .line 3212
    :cond_0
    return p1
.end method

.method public standaloneSet()Z
    .locals 1

    .prologue
    .line 1687
    iget-boolean v0, p0, Lcom/bea/xml/stream/MXParser;->standaloneSet:Z

    return v0
.end method

.method public subReader()Ljavax/xml/stream/XMLStreamReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 1499
    new-instance v0, Lcom/bea/xml/stream/SubReader;

    invoke-direct {v0, p0}, Lcom/bea/xml/stream/SubReader;-><init>(Ljavax/xml/stream/XMLStreamReader;)V

    return-object v0
.end method
