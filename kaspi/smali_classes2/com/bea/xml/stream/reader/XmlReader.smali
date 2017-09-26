.class public final Lcom/bea/xml/stream/reader/XmlReader;
.super Ljava/io/Reader;
.source "XmlReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;,
        Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;,
        Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;,
        Lcom/bea/xml/stream/reader/XmlReader$BaseReader;
    }
.end annotation


# static fields
.field private static final MAXPUSHBACK:I = 0x200

.field private static final charsets:Ljava/util/Hashtable;


# instance fields
.field private assignedEncoding:Ljava/lang/String;

.field private closed:Z

.field private in:Ljava/io/Reader;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 163
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lcom/bea/xml/stream/reader/XmlReader;->charsets:Ljava/util/Hashtable;

    .line 166
    sget-object v0, Lcom/bea/xml/stream/reader/XmlReader;->charsets:Ljava/util/Hashtable;

    const-string v1, "UTF-16"

    const-string v2, "Unicode"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/bea/xml/stream/reader/XmlReader;->charsets:Ljava/util/Hashtable;

    const-string v1, "ISO-10646-UCS-2"

    const-string v2, "Unicode"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/bea/xml/stream/reader/XmlReader;->charsets:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-US"

    const-string v2, "cp037"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/bea/xml/stream/reader/XmlReader;->charsets:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-CA"

    const-string v2, "cp037"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/bea/xml/stream/reader/XmlReader;->charsets:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-NL"

    const-string v2, "cp037"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/bea/xml/stream/reader/XmlReader;->charsets:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-WT"

    const-string v2, "cp037"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/bea/xml/stream/reader/XmlReader;->charsets:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-DK"

    const-string v2, "cp277"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/bea/xml/stream/reader/XmlReader;->charsets:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-NO"

    const-string v2, "cp277"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/bea/xml/stream/reader/XmlReader;->charsets:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-FI"

    const-string v2, "cp278"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/bea/xml/stream/reader/XmlReader;->charsets:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-SE"

    const-string v2, "cp278"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/bea/xml/stream/reader/XmlReader;->charsets:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-IT"

    const-string v2, "cp280"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/bea/xml/stream/reader/XmlReader;->charsets:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-ES"

    const-string v2, "cp284"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/bea/xml/stream/reader/XmlReader;->charsets:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-GB"

    const-string v2, "cp285"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/bea/xml/stream/reader/XmlReader;->charsets:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-FR"

    const-string v2, "cp297"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/bea/xml/stream/reader/XmlReader;->charsets:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-AR1"

    const-string v2, "cp420"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/bea/xml/stream/reader/XmlReader;->charsets:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-HE"

    const-string v2, "cp424"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/bea/xml/stream/reader/XmlReader;->charsets:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-BE"

    const-string v2, "cp500"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/bea/xml/stream/reader/XmlReader;->charsets:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-CH"

    const-string v2, "cp500"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/bea/xml/stream/reader/XmlReader;->charsets:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-ROECE"

    const-string v2, "cp870"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/bea/xml/stream/reader/XmlReader;->charsets:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-YU"

    const-string v2, "cp870"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/bea/xml/stream/reader/XmlReader;->charsets:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-IS"

    const-string v2, "cp871"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/bea/xml/stream/reader/XmlReader;->charsets:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-AR2"

    const-string v2, "cp918"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 218
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    .line 235
    new-instance v0, Ljava/io/PushbackInputStream;

    const/16 v1, 0x200

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 241
    new-array v1, v7, [B

    .line 242
    invoke-virtual {v0, v1}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v2

    .line 243
    if-lez v2, :cond_0

    .line 244
    invoke-virtual {v0, v1, v6, v2}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 246
    :cond_0
    if-ne v2, v7, :cond_1

    aget-byte v2, v1, v6

    and-int/lit16 v2, v2, 0xff

    sparse-switch v2, :sswitch_data_0

    .line 320
    :cond_1
    :goto_0
    const-string v1, "UTF-8"

    invoke-direct {p0, v0, v1}, Lcom/bea/xml/stream/reader/XmlReader;->setEncoding(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 321
    :goto_1
    return-void

    .line 249
    :sswitch_0
    aget-byte v2, v1, v3

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_1

    aget-byte v2, v1, v4

    if-nez v2, :cond_1

    aget-byte v1, v1, v5

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_1

    .line 250
    const-string v1, "UnicodeBig"

    invoke-direct {p0, v0, v1}, Lcom/bea/xml/stream/reader/XmlReader;->setEncoding(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_1

    .line 257
    :sswitch_1
    aget-byte v2, v1, v3

    and-int/lit16 v2, v2, 0xff

    sparse-switch v2, :sswitch_data_1

    goto :goto_0

    .line 266
    :sswitch_2
    aget-byte v2, v1, v4

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_1

    aget-byte v1, v1, v5

    if-nez v1, :cond_1

    .line 267
    const-string v1, "UnicodeLittle"

    invoke-direct {p0, v0, v1}, Lcom/bea/xml/stream/reader/XmlReader;->setEncoding(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_1

    .line 275
    :sswitch_3
    aget-byte v2, v1, v4

    const/16 v3, 0x78

    if-ne v2, v3, :cond_1

    aget-byte v1, v1, v5

    const/16 v2, 0x6d

    if-ne v1, v2, :cond_1

    .line 281
    const-string v1, "UTF8"

    invoke-direct {p0, v0, v1}, Lcom/bea/xml/stream/reader/XmlReader;->useEncodingDecl(Ljava/io/PushbackInputStream;Ljava/lang/String;)V

    goto :goto_1

    .line 288
    :sswitch_4
    aget-byte v2, v1, v3

    const/16 v3, 0x6f

    if-ne v2, v3, :cond_1

    aget-byte v2, v1, v4

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xa7

    if-ne v2, v3, :cond_1

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x94

    if-ne v1, v2, :cond_1

    .line 291
    const-string v1, "CP037"

    invoke-direct {p0, v0, v1}, Lcom/bea/xml/stream/reader/XmlReader;->useEncodingDecl(Ljava/io/PushbackInputStream;Ljava/lang/String;)V

    goto :goto_1

    .line 299
    :sswitch_5
    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xff

    if-ne v1, v2, :cond_1

    .line 301
    const-string v1, "UTF-16"

    invoke-direct {p0, v0, v1}, Lcom/bea/xml/stream/reader/XmlReader;->setEncoding(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_1

    .line 306
    :sswitch_6
    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xfe

    if-ne v1, v2, :cond_1

    .line 308
    const-string v1, "UTF-16"

    invoke-direct {p0, v0, v1}, Lcom/bea/xml/stream/reader/XmlReader;->setEncoding(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_1

    .line 246
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3c -> :sswitch_1
        0x4c -> :sswitch_4
        0xfe -> :sswitch_5
        0xff -> :sswitch_6
    .end sparse-switch

    .line 257
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x3f -> :sswitch_3
    .end sparse-switch
.end method

.method public static createReader(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Lcom/bea/xml/stream/reader/XmlReader;

    invoke-direct {v0, p0}, Lcom/bea/xml/stream/reader/XmlReader;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static createReader(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    if-nez p1, :cond_0

    .line 135
    new-instance v0, Lcom/bea/xml/stream/reader/XmlReader;

    invoke-direct {v0, p0}, Lcom/bea/xml/stream/reader/XmlReader;-><init>(Ljava/io/InputStream;)V

    .line 157
    :goto_0
    return-object v0

    .line 137
    :cond_0
    const-string v0, "UTF-8"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "UTF8"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    :cond_1
    new-instance v0, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;

    invoke-direct {v0, p0}, Lcom/bea/xml/stream/reader/XmlReader$Utf8Reader;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 141
    :cond_2
    const-string v0, "US-ASCII"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ASCII"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 143
    :cond_3
    new-instance v0, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;

    invoke-direct {v0, p0}, Lcom/bea/xml/stream/reader/XmlReader$AsciiReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 145
    :cond_4
    const-string v0, "ISO-8859-1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 148
    new-instance v0, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;

    invoke-direct {v0, p0}, Lcom/bea/xml/stream/reader/XmlReader$Iso8859_1Reader;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 157
    :cond_5
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-static {p1}, Lcom/bea/xml/stream/reader/XmlReader;->std2java(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setEncoding(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 468
    iput-object p2, p0, Lcom/bea/xml/stream/reader/XmlReader;->assignedEncoding:Ljava/lang/String;

    .line 469
    invoke-static {p1, p2}, Lcom/bea/xml/stream/reader/XmlReader;->createReader(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    iput-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->in:Ljava/io/Reader;

    .line 470
    return-void
.end method

.method private static std2java(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 205
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 206
    sget-object v1, Lcom/bea/xml/stream/reader/XmlReader;->charsets:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 207
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method private useEncodingDecl(Ljava/io/PushbackInputStream;Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 336
    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 347
    array-length v1, v0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v1

    .line 348
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 349
    new-instance v10, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    const/4 v5, 0x4

    invoke-direct {v3, v0, v5, v1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v10, v3, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 357
    invoke-virtual {v10}, Ljava/io/Reader;->read()I

    move-result v0

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_0

    .line 358
    const-string v0, "UTF-8"

    invoke-direct {p0, p1, v0}, Lcom/bea/xml/stream/reader/XmlReader;->setEncoding(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 463
    :goto_0
    return-void

    .line 371
    :cond_0
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    move v9, v2

    move v0, v2

    move v1, v2

    move v3, v2

    move-object v5, v6

    move-object v7, v6

    .line 379
    :goto_1
    const/16 v11, 0x1fb

    if-ge v9, v11, :cond_1

    .line 380
    invoke-virtual {v10}, Ljava/io/Reader;->read()I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_2

    .line 462
    :cond_1
    const-string v0, "UTF-8"

    invoke-direct {p0, p1, v0}, Lcom/bea/xml/stream/reader/XmlReader;->setEncoding(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 384
    :cond_2
    const/16 v12, 0x20

    if-eq v11, v12, :cond_3

    const/16 v12, 0x9

    if-eq v11, v12, :cond_3

    const/16 v12, 0xa

    if-eq v11, v12, :cond_3

    const/16 v12, 0xd

    if-ne v11, v12, :cond_4

    .line 379
    :cond_3
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 388
    :cond_4
    if-eqz v9, :cond_1

    .line 392
    const/16 v12, 0x3f

    if-ne v11, v12, :cond_7

    move v0, v4

    .line 401
    :cond_5
    :goto_3
    if-eqz v5, :cond_6

    if-nez v3, :cond_b

    .line 402
    :cond_6
    if-nez v7, :cond_8

    .line 403
    int-to-char v12, v11

    invoke-static {v12}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v12

    if-nez v12, :cond_3

    .line 406
    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 407
    int-to-char v3, v11

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v3, v2

    move-object v7, v8

    .line 409
    goto :goto_2

    .line 394
    :cond_7
    if-eqz v0, :cond_5

    .line 395
    const/16 v0, 0x3e

    if-eq v11, v0, :cond_1

    move v0, v2

    .line 397
    goto :goto_3

    .line 409
    :cond_8
    int-to-char v12, v11

    invoke-static {v12}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 410
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 411
    :cond_9
    const/16 v12, 0x3d

    if-ne v11, v12, :cond_a

    .line 412
    if-nez v5, :cond_15

    .line 413
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    move v3, v4

    move-object v5, v1

    move-object v7, v6

    move v1, v2

    .line 417
    goto :goto_2

    .line 418
    :cond_a
    int-to-char v11, v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 423
    :cond_b
    int-to-char v12, v11

    invoke-static {v12}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v12

    if-nez v12, :cond_3

    .line 425
    const/16 v12, 0x22

    if-eq v11, v12, :cond_c

    const/16 v12, 0x27

    if-ne v11, v12, :cond_14

    .line 426
    :cond_c
    if-nez v1, :cond_d

    .line 427
    int-to-char v1, v11

    .line 428
    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_2

    .line 430
    :cond_d
    if-ne v11, v1, :cond_14

    .line 431
    const-string v11, "encoding"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 432
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->assignedEncoding:Ljava/lang/String;

    .line 435
    :goto_5
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->assignedEncoding:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_12

    .line 436
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->assignedEncoding:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 437
    const/16 v1, 0x41

    if-lt v0, v1, :cond_e

    const/16 v1, 0x5a

    if-le v0, v1, :cond_f

    :cond_e
    const/16 v1, 0x61

    if-lt v0, v1, :cond_10

    const/16 v1, 0x7a

    if-gt v0, v1, :cond_10

    .line 435
    :cond_f
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 440
    :cond_10
    if-eqz v2, :cond_1

    .line 442
    if-lez v2, :cond_1

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_f

    const/16 v1, 0x30

    if-lt v0, v1, :cond_11

    const/16 v1, 0x39

    if-le v0, v1, :cond_f

    :cond_11
    const/16 v1, 0x2e

    if-eq v0, v1, :cond_f

    const/16 v1, 0x5f

    if-ne v0, v1, :cond_1

    goto :goto_6

    .line 450
    :cond_12
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->assignedEncoding:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/bea/xml/stream/reader/XmlReader;->setEncoding(Ljava/io/InputStream;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    move-object v5, v6

    .line 455
    goto/16 :goto_2

    .line 459
    :cond_14
    int-to-char v11, v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :cond_15
    move-object v1, v5

    goto :goto_4
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 551
    iget-boolean v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->closed:Z

    if-eqz v0, :cond_0

    .line 556
    :goto_0
    return-void

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 554
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->in:Ljava/io/Reader;

    .line 555
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->closed:Z

    goto :goto_0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->assignedEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public mark(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 519
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->in:Ljava/io/Reader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->in:Ljava/io/Reader;

    invoke-virtual {v0, p1}, Ljava/io/Reader;->mark(I)V

    .line 520
    :cond_0
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->in:Ljava/io/Reader;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    goto :goto_0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->closed:Z

    if-eqz v0, :cond_0

    .line 495
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 498
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 499
    invoke-virtual {p0}, Lcom/bea/xml/stream/reader/XmlReader;->close()V

    .line 501
    :cond_1
    return v0
.end method

.method public read([CII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 479
    iget-boolean v1, p0, Lcom/bea/xml/stream/reader/XmlReader;->closed:Z

    if-eqz v1, :cond_0

    .line 484
    :goto_0
    return v0

    .line 481
    :cond_0
    iget-object v1, p0, Lcom/bea/xml/stream/reader/XmlReader;->in:Ljava/io/Reader;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .line 482
    if-ne v1, v0, :cond_1

    .line 483
    invoke-virtual {p0}, Lcom/bea/xml/stream/reader/XmlReader;->close()V

    :cond_1
    move v0, v1

    .line 484
    goto :goto_0
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 543
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->in:Ljava/io/Reader;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z

    move-result v0

    goto :goto_0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 527
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->in:Ljava/io/Reader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->reset()V

    .line 528
    :cond_0
    return-void
.end method

.method public skip(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 535
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->in:Ljava/io/Reader;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/reader/XmlReader;->in:Ljava/io/Reader;

    invoke-virtual {v0, p1, p2}, Ljava/io/Reader;->skip(J)J

    move-result-wide v0

    goto :goto_0
.end method
