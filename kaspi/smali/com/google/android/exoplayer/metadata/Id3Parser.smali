.class public final Lcom/google/android/exoplayer/metadata/Id3Parser;
.super Ljava/lang/Object;
.source "Id3Parser.java"

# interfaces
.implements Lcom/google/android/exoplayer/metadata/MetadataParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer/metadata/MetadataParser",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final ID3_TEXT_ENCODING_ISO_8859_1:I = 0x0

.field private static final ID3_TEXT_ENCODING_UTF_16:I = 0x1

.field private static final ID3_TEXT_ENCODING_UTF_16BE:I = 0x2

.field private static final ID3_TEXT_ENCODING_UTF_8:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static delimiterLength(I)I
    .locals 1

    .prologue
    .line 153
    if-eqz p0, :cond_0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private static getCharsetName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    packed-switch p0, :pswitch_data_0

    .line 210
    const-string v0, "ISO-8859-1"

    :goto_0
    return-object v0

    .line 202
    :pswitch_0
    const-string v0, "ISO-8859-1"

    goto :goto_0

    .line 204
    :pswitch_1
    const-string v0, "UTF-16"

    goto :goto_0

    .line 206
    :pswitch_2
    const-string v0, "UTF-16BE"

    goto :goto_0

    .line 208
    :pswitch_3
    const-string v0, "UTF-8"

    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static indexOf([BIB)I
    .locals 1

    .prologue
    .line 125
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    .line 126
    aget-byte v0, p0, p1

    if-ne v0, p2, :cond_0

    .line 130
    :goto_1
    return p1

    .line 125
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 130
    :cond_1
    array-length p1, p0

    goto :goto_1
.end method

.method private static indexOfEOS([BII)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 134
    invoke-static {p0, p1, v2}, Lcom/google/android/exoplayer/metadata/Id3Parser;->indexOf([BIB)I

    move-result v0

    .line 137
    if-eqz p2, :cond_0

    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    .line 149
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0, v2}, Lcom/google/android/exoplayer/metadata/Id3Parser;->indexOf([BIB)I

    move-result v0

    .line 142
    :cond_2
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    .line 143
    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 149
    :cond_3
    array-length v0, p0

    goto :goto_0
.end method

.method private static parseId3Header(Lcom/google/android/exoplayer/util/ParsableByteArray;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    .line 165
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 166
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 167
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 168
    const/16 v3, 0x49

    if-ne v0, v3, :cond_0

    const/16 v3, 0x44

    if-ne v1, v3, :cond_0

    const/16 v3, 0x33

    if-eq v2, v3, :cond_1

    .line 169
    :cond_0
    new-instance v3, Lcom/google/android/exoplayer/ParserException;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "Unexpected ID3 file identifier, expected \"ID3\", actual \"%c%c%c\"."

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 172
    :cond_1
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 174
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 175
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v0

    .line 178
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_3

    .line 179
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v2

    .line 180
    const/4 v3, 0x4

    if-le v2, v3, :cond_2

    .line 181
    add-int/lit8 v3, v2, -0x4

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 183
    :cond_2
    sub-int/2addr v0, v2

    .line 187
    :cond_3
    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    .line 188
    add-int/lit8 v0, v0, -0xa

    .line 191
    :cond_4
    return v0
.end method


# virtual methods
.method public canParse(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 40
    const-string v0, "application/id3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic parse([BI)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer/metadata/Id3Parser;->parse([BI)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public parse([BI)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 46
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 47
    new-instance v2, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v2, p1, p2}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>([BI)V

    .line 48
    invoke-static {v2}, Lcom/google/android/exoplayer/metadata/Id3Parser;->parseId3Header(Lcom/google/android/exoplayer/util/ParsableByteArray;)I

    move-result v0

    .line 50
    :goto_0
    if-lez v0, :cond_0

    .line 51
    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 52
    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 53
    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 54
    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 55
    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v7

    .line 56
    const/4 v8, 0x1

    if-gt v7, v8, :cond_1

    .line 121
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 61
    :cond_1
    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 63
    const/16 v8, 0x54

    if-ne v3, v8, :cond_2

    const/16 v8, 0x58

    if-ne v4, v8, :cond_2

    const/16 v8, 0x58

    if-ne v5, v8, :cond_2

    const/16 v8, 0x58

    if-ne v6, v8, :cond_2

    .line 64
    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 65
    invoke-static {v3}, Lcom/google/android/exoplayer/metadata/Id3Parser;->getCharsetName(I)Ljava/lang/String;

    move-result-object v4

    .line 66
    add-int/lit8 v5, v7, -0x1

    new-array v5, v5, [B

    .line 67
    const/4 v6, 0x0

    add-int/lit8 v8, v7, -0x1

    invoke-virtual {v2, v5, v6, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 69
    const/4 v6, 0x0

    invoke-static {v5, v6, v3}, Lcom/google/android/exoplayer/metadata/Id3Parser;->indexOfEOS([BII)I

    move-result v6

    .line 70
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v5, v9, v6, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 71
    invoke-static {v3}, Lcom/google/android/exoplayer/metadata/Id3Parser;->delimiterLength(I)I

    move-result v9

    add-int/2addr v6, v9

    .line 72
    invoke-static {v5, v6, v3}, Lcom/google/android/exoplayer/metadata/Id3Parser;->indexOfEOS([BII)I

    move-result v3

    .line 73
    new-instance v9, Ljava/lang/String;

    sub-int/2addr v3, v6

    invoke-direct {v9, v5, v6, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 75
    const-string v3, "TXXX"

    new-instance v4, Lcom/google/android/exoplayer/metadata/TxxxMetadata;

    invoke-direct {v4, v8, v9}, Lcom/google/android/exoplayer/metadata/TxxxMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :goto_1
    add-int/lit8 v3, v7, 0xa

    sub-int/2addr v0, v3

    .line 119
    goto :goto_0

    .line 76
    :cond_2
    const/16 v8, 0x50

    if-ne v3, v8, :cond_3

    const/16 v8, 0x52

    if-ne v4, v8, :cond_3

    const/16 v8, 0x49

    if-ne v5, v8, :cond_3

    const/16 v8, 0x56

    if-ne v6, v8, :cond_3

    .line 78
    new-array v3, v7, [B

    .line 79
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 81
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/google/android/exoplayer/metadata/Id3Parser;->indexOf([BIB)I

    move-result v4

    .line 82
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, "ISO-8859-1"

    invoke-direct {v5, v3, v6, v4, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 83
    sub-int v6, v7, v4

    add-int/lit8 v6, v6, -0x1

    new-array v6, v6, [B

    .line 84
    add-int/lit8 v8, v4, 0x1

    const/4 v9, 0x0

    sub-int v4, v7, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v8, v6, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    const-string v3, "PRIV"

    new-instance v4, Lcom/google/android/exoplayer/metadata/PrivMetadata;

    invoke-direct {v4, v5, v6}, Lcom/google/android/exoplayer/metadata/PrivMetadata;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 86
    :cond_3
    const/16 v8, 0x47

    if-ne v3, v8, :cond_4

    const/16 v8, 0x45

    if-ne v4, v8, :cond_4

    const/16 v8, 0x4f

    if-ne v5, v8, :cond_4

    const/16 v8, 0x42

    if-ne v6, v8, :cond_4

    .line 88
    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 89
    invoke-static {v3}, Lcom/google/android/exoplayer/metadata/Id3Parser;->getCharsetName(I)Ljava/lang/String;

    move-result-object v4

    .line 90
    add-int/lit8 v5, v7, -0x1

    new-array v5, v5, [B

    .line 91
    const/4 v6, 0x0

    add-int/lit8 v8, v7, -0x1

    invoke-virtual {v2, v5, v6, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 93
    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v8}, Lcom/google/android/exoplayer/metadata/Id3Parser;->indexOf([BIB)I

    move-result v6

    .line 94
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "ISO-8859-1"

    invoke-direct {v8, v5, v9, v6, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 95
    add-int/lit8 v6, v6, 0x1

    .line 96
    invoke-static {v5, v6, v3}, Lcom/google/android/exoplayer/metadata/Id3Parser;->indexOfEOS([BII)I

    move-result v9

    .line 97
    new-instance v10, Ljava/lang/String;

    sub-int v11, v9, v6

    invoke-direct {v10, v5, v6, v11, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 99
    invoke-static {v3}, Lcom/google/android/exoplayer/metadata/Id3Parser;->delimiterLength(I)I

    move-result v6

    add-int/2addr v6, v9

    .line 100
    invoke-static {v5, v6, v3}, Lcom/google/android/exoplayer/metadata/Id3Parser;->indexOfEOS([BII)I

    move-result v9

    .line 101
    new-instance v11, Ljava/lang/String;

    sub-int v12, v9, v6

    invoke-direct {v11, v5, v6, v12, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 104
    add-int/lit8 v4, v7, -0x1

    sub-int/2addr v4, v9

    invoke-static {v3}, Lcom/google/android/exoplayer/metadata/Id3Parser;->delimiterLength(I)I

    move-result v6

    sub-int/2addr v4, v6

    .line 106
    new-array v6, v4, [B

    .line 107
    invoke-static {v3}, Lcom/google/android/exoplayer/metadata/Id3Parser;->delimiterLength(I)I

    move-result v3

    add-int/2addr v3, v9

    const/4 v9, 0x0

    invoke-static {v5, v3, v6, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    const-string v3, "GEOB"

    new-instance v4, Lcom/google/android/exoplayer/metadata/GeobMetadata;

    invoke-direct {v4, v8, v10, v11, v6}, Lcom/google/android/exoplayer/metadata/GeobMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 112
    :cond_4
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%c%c%c%c"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v11

    const/4 v3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v10, v3

    const/4 v3, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v10, v3

    const/4 v3, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v10, v3

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 113
    new-array v4, v7, [B

    .line 114
    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 115
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method
