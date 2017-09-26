.class public final Lcom/google/android/exoplayer/text/ttml/TtmlParser;
.super Ljava/lang/Object;
.source "TtmlParser.java"

# interfaces
.implements Lcom/google/android/exoplayer/text/SubtitleParser;


# static fields
.field private static final ATTR_BEGIN:Ljava/lang/String; = "begin"

.field private static final ATTR_DURATION:Ljava/lang/String; = "dur"

.field private static final ATTR_END:Ljava/lang/String; = "end"

.field private static final CLOCK_TIME:Ljava/util/regex/Pattern;

.field private static final DEFAULT_FRAMERATE:I = 0x1e

.field private static final DEFAULT_SUBFRAMERATE:I = 0x1

.field private static final DEFAULT_TICKRATE:I = 0x1

.field private static final OFFSET_TIME:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "TtmlParser"


# instance fields
.field private final strictParsing:Z

.field private final xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-string v0, "^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->CLOCK_TIME:Ljava/util/regex/Pattern;

    .line 68
    const-string v0, "^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->OFFSET_TIME:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/text/ttml/TtmlParser;-><init>(Z)V

    .line 84
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-boolean p1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->strictParsing:Z

    .line 95
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static isSupportedTag(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 208
    const-string v0, "tt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "head"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "body"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "div"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "p"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "span"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "br"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "style"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "styling"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "layout"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "region"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "metadata"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "smpte:image"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "smpte:data"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "smpte:information"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    :cond_0
    const/4 v0, 0x1

    .line 225
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseNode(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer/text/ttml/TtmlNode;)Lcom/google/android/exoplayer/text/ttml/TtmlNode;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 166
    const-wide/16 v6, 0x0

    .line 167
    const-wide/16 v4, -0x1

    .line 168
    const-wide/16 v2, -0x1

    .line 169
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v8

    .line 170
    const/4 v0, 0x0

    move v11, v0

    move-wide v0, v2

    move-wide v2, v4

    move-wide v4, v6

    move v6, v11

    :goto_0
    if-ge v6, v8, :cond_3

    .line 172
    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    const-string v9, "^.*:"

    const-string v10, ""

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 173
    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    .line 174
    const-string v10, "begin"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 175
    const/16 v2, 0x1e

    const/4 v3, 0x1

    const/4 v7, 0x1

    invoke-static {v9, v2, v3, v7}, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->parseTimeExpression(Ljava/lang/String;III)J

    move-result-wide v2

    .line 170
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 177
    :cond_1
    const-string v10, "end"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 178
    const/16 v0, 0x1e

    const/4 v1, 0x1

    const/4 v7, 0x1

    invoke-static {v9, v0, v1, v7}, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->parseTimeExpression(Ljava/lang/String;III)J

    move-result-wide v0

    goto :goto_1

    .line 180
    :cond_2
    const-string v10, "dur"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 181
    const/16 v4, 0x1e

    const/4 v5, 0x1

    const/4 v7, 0x1

    invoke-static {v9, v4, v5, v7}, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->parseTimeExpression(Ljava/lang/String;III)J

    move-result-wide v4

    goto :goto_1

    .line 187
    :cond_3
    if-eqz p2, :cond_5

    iget-wide v6, p2, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->startTimeUs:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_5

    .line 188
    const-wide/16 v6, -0x1

    cmp-long v6, v2, v6

    if-eqz v6, :cond_4

    .line 189
    iget-wide v6, p2, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->startTimeUs:J

    add-long/2addr v2, v6

    .line 191
    :cond_4
    const-wide/16 v6, -0x1

    cmp-long v6, v0, v6

    if-eqz v6, :cond_5

    .line 192
    iget-wide v6, p2, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->startTimeUs:J

    add-long/2addr v0, v6

    .line 195
    :cond_5
    const-wide/16 v6, -0x1

    cmp-long v6, v0, v6

    if-nez v6, :cond_6

    .line 196
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_7

    .line 198
    add-long v0, v2, v4

    .line 204
    :cond_6
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2, v3, v0, v1}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->buildNode(Ljava/lang/String;JJ)Lcom/google/android/exoplayer/text/ttml/TtmlNode;

    move-result-object v0

    return-object v0

    .line 199
    :cond_7
    if-eqz p2, :cond_6

    iget-wide v4, p2, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->endTimeUs:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6

    .line 201
    iget-wide v0, p2, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->endTimeUs:J

    goto :goto_2
.end method

.method private static parseTimeExpression(Ljava/lang/String;III)J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const-wide v10, 0x412e848000000000L    # 1000000.0

    const-wide/16 v2, 0x0

    .line 243
    sget-object v0, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->CLOCK_TIME:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 244
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 245
    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v6, 0xe10

    mul-long/2addr v0, v6

    long-to-double v0, v0

    .line 247
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 248
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x3c

    mul-long/2addr v6, v8

    long-to-double v6, v6

    add-double/2addr v0, v6

    .line 249
    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 250
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-double v6, v6

    add-double/2addr v6, v0

    .line 251
    const/4 v0, 0x4

    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    :goto_0
    add-double/2addr v6, v0

    .line 253
    const/4 v0, 0x5

    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 254
    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-double v0, v0

    int-to-double v8, p1

    div-double/2addr v0, v8

    :goto_1
    add-double/2addr v0, v6

    .line 255
    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 256
    if-eqz v4, :cond_0

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-double v2, v2

    int-to-double v4, p2

    div-double/2addr v2, v4

    int-to-double v4, p1

    div-double/2addr v2, v4

    :cond_0
    add-double/2addr v0, v2

    .line 258
    mul-double/2addr v0, v10

    double-to-long v0, v0

    .line 278
    :goto_2
    return-wide v0

    :cond_1
    move-wide v0, v2

    .line 252
    goto :goto_0

    :cond_2
    move-wide v0, v2

    .line 254
    goto :goto_1

    .line 260
    :cond_3
    sget-object v0, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->OFFSET_TIME:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 261
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 262
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 264
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 265
    const-string v3, "h"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 266
    const-wide v2, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v0, v2

    .line 278
    :cond_4
    :goto_3
    mul-double/2addr v0, v10

    double-to-long v0, v0

    goto :goto_2

    .line 267
    :cond_5
    const-string v3, "m"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 268
    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    mul-double/2addr v0, v2

    goto :goto_3

    .line 269
    :cond_6
    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 271
    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 272
    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    goto :goto_3

    .line 273
    :cond_7
    const-string v3, "f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 274
    int-to-double v2, p1

    div-double/2addr v0, v2

    goto :goto_3

    .line 275
    :cond_8
    const-string v3, "t"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 276
    int-to-double v2, p3

    div-double/2addr v0, v2

    goto :goto_3

    .line 280
    :cond_9
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed time expression: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public canParse(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 162
    const-string v0, "application/ttml+xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public parse(Ljava/io/InputStream;Ljava/lang/String;J)Lcom/google/android/exoplayer/text/Subtitle;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 106
    invoke-interface {v4, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 107
    const/4 v2, 0x0

    .line 108
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 109
    const/4 v1, 0x0

    .line 110
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move v3, v0

    .line 111
    :goto_0
    const/4 v0, 0x1

    if-eq v3, v0, :cond_8

    .line 112
    invoke-virtual {v5}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;

    .line 113
    if-nez v1, :cond_6

    .line 114
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 115
    if-ne v3, v7, :cond_4

    .line 116
    invoke-static {v6}, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->isSupportedTag(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 117
    const-string v0, "TtmlParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring unsupported tag: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    add-int/lit8 v0, v1, 0x1

    move-object v1, v2

    :goto_1
    move-object v2, v1

    move v1, v0

    .line 151
    :cond_0
    :goto_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 152
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    move v3, v0

    .line 153
    goto :goto_0

    .line 121
    :cond_1
    :try_start_1
    invoke-direct {p0, v4, v0}, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->parseNode(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer/text/ttml/TtmlNode;)Lcom/google/android/exoplayer/text/ttml/TtmlNode;

    move-result-object v3

    .line 122
    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 123
    if-eqz v0, :cond_2

    .line 124
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->addChild(Lcom/google/android/exoplayer/text/ttml/TtmlNode;)V
    :try_end_1
    .catch Lcom/google/android/exoplayer/ParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    move v0, v1

    move-object v1, v2

    .line 134
    goto :goto_1

    .line 126
    :catch_0
    move-exception v0

    .line 127
    :try_start_2
    iget-boolean v3, p0, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->strictParsing:Z

    if-eqz v3, :cond_3

    .line 128
    throw v0
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    .line 155
    :catch_1
    move-exception v0

    .line 156
    new-instance v1, Lcom/google/android/exoplayer/ParserException;

    const-string v2, "Unable to parse source"

    invoke-direct {v1, v2, v0}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 130
    :cond_3
    :try_start_3
    const-string v3, "TtmlParser"

    const-string v6, "Suppressing parser error"

    invoke-static {v3, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    add-int/lit8 v0, v1, 0x1

    move-object v1, v2

    .line 134
    goto :goto_1

    .line 136
    :cond_4
    const/4 v6, 0x4

    if-ne v3, v6, :cond_5

    .line 137
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->buildTextNode(Ljava/lang/String;)Lcom/google/android/exoplayer/text/ttml/TtmlNode;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->addChild(Lcom/google/android/exoplayer/text/ttml/TtmlNode;)V

    move v0, v1

    move-object v1, v2

    goto :goto_1

    .line 138
    :cond_5
    if-ne v3, v8, :cond_a

    .line 139
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "tt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 140
    new-instance v2, Lcom/google/android/exoplayer/text/ttml/TtmlSubtitle;

    invoke-virtual {v5}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;

    invoke-direct {v2, v0, p3, p4}, Lcom/google/android/exoplayer/text/ttml/TtmlSubtitle;-><init>(Lcom/google/android/exoplayer/text/ttml/TtmlNode;J)V

    move-object v0, v2

    .line 142
    :goto_3
    invoke-virtual {v5}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1

    move v9, v1

    move-object v1, v0

    move v0, v9

    goto :goto_1

    .line 145
    :cond_6
    if-ne v3, v7, :cond_7

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 147
    :cond_7
    if-ne v3, v8, :cond_0

    .line 148
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 154
    :cond_8
    return-object v2

    :cond_9
    move-object v0, v2

    goto :goto_3

    :cond_a
    move v0, v1

    move-object v1, v2

    goto :goto_1
.end method
