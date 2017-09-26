.class public Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "MediaPresentationDescriptionParser.java"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xml/sax/helpers/DefaultHandler;",
        "Lcom/google/android/exoplayer/upstream/UriLoadable$Parser",
        "<",
        "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;",
        ">;"
    }
.end annotation


# static fields
.field private static final FRAME_RATE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final contentId:Ljava/lang/String;

.field private final xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "(\\d+)(?:/(\\d+))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->FRAME_RATE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;-><init>(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->contentId:Ljava/lang/String;

    .line 76
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static checkAdaptationSetTypeConsistency(II)I
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 578
    if-ne p0, v0, :cond_1

    move p0, p1

    .line 584
    :cond_0
    :goto_0
    return p0

    .line 580
    :cond_1
    if-eq p1, v0, :cond_0

    .line 583
    if-ne p0, p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static checkLanguageConsistency(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 556
    if-nez p0, :cond_1

    move-object p0, p1

    .line 562
    :cond_0
    :goto_0
    return-object p0

    .line 558
    :cond_1
    if-eqz p1, :cond_0

    .line 561
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    goto :goto_0
.end method

.method protected static isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 589
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 598
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 594
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 622
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 623
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer/util/UriUtil;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static parseDateTime(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 612
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 613
    if-nez v0, :cond_0

    .line 616
    :goto_0
    return-wide p2

    :cond_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->parseXsDateTime(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0
.end method

.method protected static parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 602
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 603
    if-nez v0, :cond_0

    .line 606
    :goto_0
    return-wide p2

    :cond_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->parseXsDuration(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0
.end method

.method protected static parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 627
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected static parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 631
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 632
    if-nez v0, :cond_0

    :goto_0
    return p2

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0
.end method

.method protected static parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 636
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected static parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 640
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 641
    if-nez v0, :cond_0

    :goto_0
    return-wide p2

    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0
.end method

.method protected static parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 645
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 646
    if-nez v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    move-object p2, v0

    goto :goto_0
.end method


# virtual methods
.method protected buildAdaptationSet(IILjava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/Representation;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/ContentProtection;",
            ">;)",
            "Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;"
        }
    .end annotation

    .prologue
    .line 232
    new-instance v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;-><init>(IILjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method protected buildContentProtection(Ljava/lang/String;Ljava/util/UUID;[B)Lcom/google/android/exoplayer/dash/mpd/ContentProtection;
    .locals 1

    .prologue
    .line 278
    new-instance v0, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;-><init>(Ljava/lang/String;Ljava/util/UUID;[B)V

    return-object v0
.end method

.method protected buildFormat(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer/chunk/Format;
    .locals 11

    .prologue
    .line 350
    new-instance v0, Lcom/google/android/exoplayer/chunk/Format;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer/chunk/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected buildMediaPresentationDescription(JJJZJJLcom/google/android/exoplayer/dash/mpd/UtcTimingElement;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZJJ",
            "Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/Period;",
            ">;)",
            "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;"
        }
    .end annotation

    .prologue
    .line 138
    new-instance v1, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    invoke-direct/range {v1 .. v15}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;-><init>(JJJZJJLcom/google/android/exoplayer/dash/mpd/UtcTimingElement;Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method

.method protected buildPeriod(Ljava/lang/String;JJLjava/util/List;)Lcom/google/android/exoplayer/dash/mpd/Period;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;",
            ">;)",
            "Lcom/google/android/exoplayer/dash/mpd/Period;"
        }
    .end annotation

    .prologue
    .line 180
    new-instance v0, Lcom/google/android/exoplayer/dash/mpd/Period;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/dash/mpd/Period;-><init>(Ljava/lang/String;JJLjava/util/List;)V

    return-object v0
.end method

.method protected buildRangedUri(Ljava/lang/String;Ljava/lang/String;JJ)Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .locals 9

    .prologue
    .line 540
    new-instance v1, Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer/dash/mpd/RangedUri;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    return-object v1
.end method

.method protected buildRepresentation(JJLjava/lang/String;ILcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/dash/mpd/SegmentBase;)Lcom/google/android/exoplayer/dash/mpd/Representation;
    .locals 9

    .prologue
    .line 356
    int-to-long v5, p6

    move-wide v0, p1

    move-wide v2, p3

    move-object v4, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lcom/google/android/exoplayer/dash/mpd/Representation;->newInstance(JJLjava/lang/String;JLcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/dash/mpd/SegmentBase;)Lcom/google/android/exoplayer/dash/mpd/Representation;

    move-result-object v0

    return-object v0
.end method

.method protected buildSegmentList(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJJIJLjava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/dash/mpd/RangedUri;",
            "JJJIJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/RangedUri;",
            ">;)",
            "Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;"
        }
    .end annotation

    .prologue
    .line 436
    new-instance v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;

    move-object v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move-wide/from16 v9, p9

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;-><init>(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJJIJLjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method protected buildSegmentTemplate(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJJIJLjava/util/List;Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/dash/mpd/RangedUri;",
            "JJJIJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;",
            ">;",
            "Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;",
            "Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;"
        }
    .end annotation

    .prologue
    .line 478
    new-instance v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move-wide/from16 v9, p9

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;-><init>(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJJIJLjava/util/List;Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;Ljava/lang/String;)V

    return-object v0
.end method

.method protected buildSegmentTimelineElement(JJ)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;
    .locals 1

    .prologue
    .line 502
    new-instance v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;-><init>(JJ)V

    return-object v0
.end method

.method protected buildSingleSegmentBase(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJLjava/lang/String;JJ)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;
    .locals 11

    .prologue
    .line 392
    new-instance v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;-><init>(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJLjava/lang/String;JJ)V

    return-object v0
.end method

.method protected buildUtcTimingElement(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/io/InputStream;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 89
    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 90
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 91
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "MPD"

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "inputStream does not contain a valid media presentation description"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    new-instance v1, Lcom/google/android/exoplayer/ParserException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 95
    :cond_1
    :try_start_1
    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseMediaPresentationDescription(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    return-object v0

    .line 98
    :catch_1
    move-exception v0

    .line 99
    new-instance v1, Lcom/google/android/exoplayer/ParserException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic parse(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parse(Ljava/lang/String;Ljava/io/InputStream;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    move-result-object v0

    return-object v0
.end method

.method protected parseAdaptationSet(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;JJLcom/google/android/exoplayer/dash/mpd/SegmentBase;)Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    const-string v2, "id"

    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v14

    .line 189
    const/4 v2, 0x0

    const-string v3, "mimeType"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 190
    const/4 v2, 0x0

    const-string v3, "lang"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 191
    const/4 v2, 0x0

    const-string v3, "contentType"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseAdaptationSetType(Ljava/lang/String;)I

    move-result v2

    .line 192
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 193
    const/4 v2, 0x0

    const-string v3, "mimeType"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseAdaptationSetTypeFromMimeType(Ljava/lang/String;)I

    move-result v2

    .line 196
    :cond_0
    new-instance v13, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;

    invoke-direct {v13}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;-><init>()V

    .line 197
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v12, p7

    move-object/from16 v5, p2

    .line 199
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 200
    const-string v3, "BaseURL"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 201
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 225
    :cond_2
    :goto_0
    const-string v3, "AdaptationSet"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 227
    invoke-virtual {v13}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->build()Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v2, v15, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildAdaptationSet(IILjava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;

    move-result-object v2

    return-object v2

    .line 202
    :cond_3
    const-string v3, "ContentProtection"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 203
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseContentProtection(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer/dash/mpd/ContentProtection;

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->addAdaptationSetProtection(Lcom/google/android/exoplayer/dash/mpd/ContentProtection;)V

    goto :goto_0

    .line 204
    :cond_4
    const-string v3, "ContentComponent"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 205
    const/4 v3, 0x0

    const-string v4, "lang"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->checkLanguageConsistency(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 206
    const/4 v3, 0x0

    const-string v4, "contentType"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseAdaptationSetType(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->checkAdaptationSetTypeConsistency(II)I

    move-result v2

    goto :goto_0

    .line 208
    :cond_5
    const-string v3, "Representation"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    .line 209
    invoke-virtual/range {v3 .. v13}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseRepresentation(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase;Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;)Lcom/google/android/exoplayer/dash/mpd/Representation;

    move-result-object v3

    .line 211
    invoke-virtual {v13}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->endRepresentation()V

    .line 212
    iget-object v4, v3, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v4, v4, Lcom/google/android/exoplayer/chunk/Format;->mimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseAdaptationSetTypeFromMimeType(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v4}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->checkAdaptationSetTypeConsistency(II)I

    move-result v2

    .line 214
    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 215
    :cond_6
    const-string v3, "SegmentBase"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 216
    check-cast v12, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5, v12}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    move-result-object v12

    goto/16 :goto_0

    .line 217
    :cond_7
    const-string v3, "SegmentList"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v6, v12

    .line 218
    check-cast v6, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-wide/from16 v7, p5

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;J)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;

    move-result-object v12

    goto/16 :goto_0

    .line 219
    :cond_8
    const-string v3, "SegmentTemplate"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object v6, v12

    .line 220
    check-cast v6, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-wide/from16 v7, p5

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;J)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;

    move-result-object v12

    goto/16 :goto_0

    .line 222
    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 223
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseAdaptationSetChild(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0
.end method

.method protected parseAdaptationSetChild(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    return-void
.end method

.method protected parseAdaptationSetType(Ljava/lang/String;)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 236
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "audio"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "video"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-string v1, "text"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method

.method protected parseAdaptationSetTypeFromMimeType(Ljava/lang/String;)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 244
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/google/android/exoplayer/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/google/android/exoplayer/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/google/android/exoplayer/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p1}, Lcom/google/android/exoplayer/util/MimeTypes;->isTtml(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    const/4 v0, 0x2

    goto :goto_0
.end method

.method protected parseContentProtection(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer/dash/mpd/ContentProtection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 259
    const-string v1, "schemeIdUri"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v0

    .line 263
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 265
    const-string v3, "cenc:pssh"

    invoke-static {p1, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 266
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 267
    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/mp4/PsshAtomUtil;->parseUuid([B)Ljava/util/UUID;

    move-result-object v1

    .line 268
    if-nez v1, :cond_1

    .line 269
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Invalid pssh atom in cenc:pssh element"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_1
    const-string v3, "ContentProtection"

    invoke-static {p1, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 274
    invoke-virtual {p0, v2, v1, v0}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildContentProtection(Ljava/lang/String;Ljava/util/UUID;[B)Lcom/google/android/exoplayer/dash/mpd/ContentProtection;

    move-result-object v0

    return-object v0
.end method

.method protected parseInitialization(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .locals 2

    .prologue
    .line 515
    const-string v0, "sourceURL"

    const-string v1, "range"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseRangedUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v0

    return-object v0
.end method

.method protected parseMediaPresentationDescription(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 105
    const-string v2, "availabilityStartTime"

    const-wide/16 v4, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v4, v5}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseDateTime(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    .line 106
    const-string v2, "mediaPresentationDuration"

    const-wide/16 v6, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v6, v7}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    .line 107
    const-string v2, "minBufferTime"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v8, v9}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    .line 108
    const/4 v2, 0x0

    const-string v3, "type"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    if-eqz v2, :cond_2

    const-string v3, "dynamic"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 110
    :goto_0
    if-eqz v10, :cond_3

    const-string v2, "minimumUpdatePeriod"

    const-wide/16 v12, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v12, v13}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    .line 111
    :goto_1
    if-eqz v10, :cond_4

    const-string v2, "timeShiftBufferDepth"

    const-wide/16 v14, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v14, v15}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v13

    .line 113
    :goto_2
    const/4 v15, 0x0

    .line 114
    const/16 v16, 0x0

    .line 116
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v2, p2

    .line 118
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 119
    const-string v3, "BaseURL"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 120
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 128
    :cond_1
    :goto_3
    const-string v3, "MPD"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v3, p0

    .line 130
    invoke-virtual/range {v3 .. v17}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildMediaPresentationDescription(JJJZJJLcom/google/android/exoplayer/dash/mpd/UtcTimingElement;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    move-result-object v2

    return-object v2

    .line 109
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 110
    :cond_3
    const-wide/16 v11, -0x1

    goto :goto_1

    .line 111
    :cond_4
    const-wide/16 v13, -0x1

    goto :goto_2

    .line 121
    :cond_5
    const-string v3, "UTCTiming"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 122
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseUtcTiming(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;

    move-result-object v15

    goto :goto_3

    .line 123
    :cond_6
    const-string v3, "Period"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 124
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v6, v7}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parsePeriod(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)Lcom/google/android/exoplayer/dash/mpd/Period;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 125
    :cond_7
    const-string v3, "Location"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v16

    goto :goto_3
.end method

.method protected parsePeriod(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)Lcom/google/android/exoplayer/dash/mpd/Period;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    const/4 v4, 0x0

    const-string v5, "id"

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 155
    const-string v5, "start"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6, v7}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    .line 156
    const-string v5, "duration"

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v5, v1, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v10

    .line 157
    const/4 v12, 0x0

    .line 158
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v7, p2

    .line 160
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 161
    const-string v5, "BaseURL"

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 162
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 173
    :cond_1
    :goto_0
    const-string v5, "Period"

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v6, p0

    move-object v7, v4

    move-object/from16 v12, v18

    .line 175
    invoke-virtual/range {v6 .. v12}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildPeriod(Ljava/lang/String;JJLjava/util/List;)Lcom/google/android/exoplayer/dash/mpd/Period;

    move-result-object v4

    return-object v4

    .line 163
    :cond_2
    const-string v5, "AdaptationSet"

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 164
    invoke-virtual/range {v5 .. v12}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseAdaptationSet(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;JJLcom/google/android/exoplayer/dash/mpd/SegmentBase;)Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 166
    :cond_3
    const-string v5, "SegmentBase"

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 167
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7, v5}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    move-result-object v12

    goto :goto_0

    .line 168
    :cond_4
    const-string v5, "SegmentList"

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 169
    const/4 v15, 0x0

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object v14, v7

    move-wide/from16 v16, v10

    invoke-virtual/range {v12 .. v17}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;J)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;

    move-result-object v12

    goto :goto_0

    .line 170
    :cond_5
    const-string v5, "SegmentTemplate"

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 171
    const/4 v15, 0x0

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object v14, v7

    move-wide/from16 v16, v10

    invoke-virtual/range {v12 .. v17}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;J)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;

    move-result-object v12

    goto :goto_0
.end method

.method protected parseRangedUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 524
    invoke-interface {p1, v0, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 525
    const-wide/16 v4, 0x0

    .line 526
    const-wide/16 v6, -0x1

    .line 527
    invoke-interface {p1, v0, p4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 528
    if-eqz v0, :cond_0

    .line 529
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 530
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 531
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 532
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sub-long/2addr v0, v4

    const-wide/16 v6, 0x1

    add-long/2addr v6, v0

    :cond_0
    move-object v1, p0

    move-object v2, p2

    .line 535
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildRangedUri(Ljava/lang/String;Ljava/lang/String;JJ)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v0

    return-object v0
.end method

.method protected parseRepresentation(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase;Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;)Lcom/google/android/exoplayer/dash/mpd/Representation;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    const/4 v2, 0x0

    const-string v3, "id"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 300
    const-string v2, "bandwidth"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v10

    .line 301
    const-string v2, "audioSamplingRate"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v9

    .line 302
    const-string v2, "width"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v16

    .line 303
    const-string v2, "height"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v17

    .line 305
    const/high16 v2, -0x40800000    # -1.0f

    .line 306
    const/4 v3, 0x0

    const-string v4, "frameRate"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 307
    if-eqz v3, :cond_9

    .line 308
    sget-object v4, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->FRAME_RATE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 309
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 310
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 311
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 312
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 313
    int-to-float v2, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    move v11, v2

    .line 320
    :goto_0
    const-string v2, "mimeType"

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    invoke-static {v0, v2, v1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 321
    const-string v2, "codecs"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 323
    const/4 v8, -0x1

    move-object/from16 v2, p9

    move-object/from16 v4, p2

    .line 325
    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 326
    const-string v3, "BaseURL"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 327
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v13, v2

    move-object v14, v4

    .line 340
    :goto_2
    const-string v2, "Representation"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v2, p0

    move-object v3, v15

    move-object/from16 v4, v18

    move/from16 v5, v16

    move/from16 v6, v17

    move v7, v11

    move-object/from16 v11, p8

    .line 342
    invoke-virtual/range {v2 .. v12}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildFormat(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer/chunk/Format;

    move-result-object v10

    .line 344
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->contentId:Ljava/lang/String;

    const/4 v9, -0x1

    if-eqz v13, :cond_7

    move-object v11, v13

    :goto_3
    move-object/from16 v3, p0

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v3 .. v11}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildRepresentation(JJLjava/lang/String;ILcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/dash/mpd/SegmentBase;)Lcom/google/android/exoplayer/dash/mpd/Representation;

    move-result-object v2

    return-object v2

    .line 315
    :cond_0
    int-to-float v2, v2

    move v11, v2

    goto :goto_0

    .line 328
    :cond_1
    const-string v3, "AudioChannelConfiguration"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 329
    const/4 v3, 0x0

    const-string v5, "value"

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move-object v13, v2

    move-object v14, v4

    goto :goto_2

    .line 330
    :cond_2
    const-string v3, "SegmentBase"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 331
    check-cast v2, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    move-result-object v2

    move-object v13, v2

    move-object v14, v4

    goto :goto_2

    .line 332
    :cond_3
    const-string v3, "SegmentList"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v5, v2

    .line 333
    check-cast v5, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v6, p5

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;J)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;

    move-result-object v2

    move-object v13, v2

    move-object v14, v4

    goto :goto_2

    .line 334
    :cond_4
    const-string v3, "SegmentTemplate"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v5, v2

    .line 335
    check-cast v5, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v6, p5

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;J)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;

    move-result-object v2

    move-object v13, v2

    move-object v14, v4

    goto/16 :goto_2

    .line 337
    :cond_5
    const-string v3, "ContentProtection"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 338
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseContentProtection(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer/dash/mpd/ContentProtection;

    move-result-object v3

    move-object/from16 v0, p10

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->addRepresentationProtection(Lcom/google/android/exoplayer/dash/mpd/ContentProtection;)V

    :cond_6
    move-object v13, v2

    move-object v14, v4

    goto/16 :goto_2

    .line 344
    :cond_7
    new-instance v11, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    invoke-direct {v11, v14}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_8
    move-object v2, v13

    move-object v4, v14

    goto/16 :goto_1

    :cond_9
    move v11, v2

    goto/16 :goto_0
.end method

.method protected parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    const-string v2, "timescale"

    if-eqz p3, :cond_0

    iget-wide v0, p3, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;->timescale:J

    :goto_0
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v2

    .line 366
    const-string v4, "presentationTimeOffset"

    if-eqz p3, :cond_1

    iget-wide v0, p3, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;->presentationTimeOffset:J

    :goto_1
    invoke-static {p1, v4, v0, v1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    .line 369
    if-eqz p3, :cond_2

    iget-wide v7, p3, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;->indexStart:J

    .line 370
    :goto_2
    if-eqz p3, :cond_3

    iget-wide v0, p3, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;->indexLength:J

    .line 371
    :goto_3
    const/4 v6, 0x0

    const-string v9, "indexRange"

    invoke-interface {p1, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 372
    if-eqz v6, :cond_7

    .line 373
    const-string v0, "-"

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 374
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 375
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sub-long/2addr v0, v7

    const-wide/16 v10, 0x1

    add-long v9, v0, v10

    .line 378
    :goto_4
    if-eqz p3, :cond_4

    iget-object v0, p3, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;->initialization:Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    .line 380
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 381
    const-string v1, "Initialization"

    invoke-static {p1, v1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 382
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInitialization(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v1

    .line 384
    :goto_6
    const-string v0, "SegmentBase"

    invoke-static {p1, v0}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p0

    move-object v6, p2

    .line 386
    invoke-virtual/range {v0 .. v10}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildSingleSegmentBase(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJLjava/lang/String;JJ)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    move-result-object v0

    return-object v0

    .line 365
    :cond_0
    const-wide/16 v0, 0x1

    goto :goto_0

    .line 366
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 369
    :cond_2
    const-wide/16 v7, 0x0

    goto :goto_2

    .line 370
    :cond_3
    const-wide/16 v0, -0x1

    goto :goto_3

    .line 378
    :cond_4
    const/4 v0, 0x0

    goto :goto_5

    :cond_5
    move-object v0, v1

    goto :goto_5

    :cond_6
    move-object v1, v0

    goto :goto_6

    :cond_7
    move-wide v9, v0

    goto :goto_4
.end method

.method protected parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;J)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 399
    const-string v4, "timescale"

    if-eqz p3, :cond_2

    move-object/from16 v0, p3

    iget-wide v2, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;->timescale:J

    :goto_0
    move-object/from16 v0, p1

    invoke-static {v0, v4, v2, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    .line 400
    const-string v6, "presentationTimeOffset"

    if-eqz p3, :cond_3

    move-object/from16 v0, p3

    iget-wide v2, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;->presentationTimeOffset:J

    :goto_1
    move-object/from16 v0, p1

    invoke-static {v0, v6, v2, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    .line 402
    const-string v8, "duration"

    if-eqz p3, :cond_4

    move-object/from16 v0, p3

    iget-wide v2, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;->duration:J

    :goto_2
    move-object/from16 v0, p1

    invoke-static {v0, v8, v2, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    .line 403
    const-string v3, "startNumber"

    if-eqz p3, :cond_5

    move-object/from16 v0, p3

    iget v2, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;->startNumber:I

    :goto_3
    move-object/from16 v0, p1

    invoke-static {v0, v3, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v10

    .line 405
    const/4 v8, 0x0

    .line 406
    const/4 v3, 0x0

    .line 407
    const/4 v2, 0x0

    .line 410
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 411
    const-string v9, "Initialization"

    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 412
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInitialization(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v8

    .line 421
    :cond_1
    :goto_4
    const-string v9, "SegmentList"

    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 423
    if-eqz p3, :cond_c

    .line 424
    if-eqz v8, :cond_9

    .line 425
    :goto_5
    if-eqz v3, :cond_a

    move-object v13, v3

    .line 426
    :goto_6
    if-eqz v2, :cond_b

    :goto_7
    move-object v14, v2

    move-object v3, v8

    :goto_8
    move-object/from16 v2, p0

    move-wide/from16 v8, p4

    .line 429
    invoke-virtual/range {v2 .. v14}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildSegmentList(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJJIJLjava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;

    move-result-object v2

    return-object v2

    .line 399
    :cond_2
    const-wide/16 v2, 0x1

    goto :goto_0

    .line 400
    :cond_3
    const-wide/16 v2, 0x0

    goto :goto_1

    .line 402
    :cond_4
    const-wide/16 v2, -0x1

    goto :goto_2

    .line 403
    :cond_5
    const/4 v2, 0x1

    goto :goto_3

    .line 413
    :cond_6
    const-string v9, "SegmentTimeline"

    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 414
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentTimeline(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v3

    goto :goto_4

    .line 415
    :cond_7
    const-string v9, "SegmentURL"

    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 416
    if-nez v2, :cond_8

    .line 417
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 419
    :cond_8
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 424
    :cond_9
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;->initialization:Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    goto :goto_5

    .line 425
    :cond_a
    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;->segmentTimeline:Ljava/util/List;

    goto :goto_6

    .line 426
    :cond_b
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;->mediaSegments:Ljava/util/List;

    goto :goto_7

    :cond_c
    move-object v14, v2

    move-object v13, v3

    move-object v3, v8

    goto :goto_8
.end method

.method protected parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;J)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    const-string v4, "timescale"

    if-eqz p3, :cond_2

    move-object/from16 v0, p3

    iget-wide v2, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->timescale:J

    :goto_0
    move-object/from16 v0, p1

    invoke-static {v0, v4, v2, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    .line 444
    const-string v6, "presentationTimeOffset"

    if-eqz p3, :cond_3

    move-object/from16 v0, p3

    iget-wide v2, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->presentationTimeOffset:J

    :goto_1
    move-object/from16 v0, p1

    invoke-static {v0, v6, v2, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    .line 446
    const-string v8, "duration"

    if-eqz p3, :cond_4

    move-object/from16 v0, p3

    iget-wide v2, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->duration:J

    :goto_2
    move-object/from16 v0, p1

    invoke-static {v0, v8, v2, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    .line 447
    const-string v3, "startNumber"

    if-eqz p3, :cond_5

    move-object/from16 v0, p3

    iget v2, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->startNumber:I

    :goto_3
    move-object/from16 v0, p1

    invoke-static {v0, v3, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v10

    .line 448
    const-string v3, "media"

    if-eqz p3, :cond_6

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->mediaTemplate:Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseUrlTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;)Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;

    move-result-object v15

    .line 450
    const-string v3, "initialization"

    if-eqz p3, :cond_7

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->initializationTemplate:Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseUrlTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;)Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;

    move-result-object v14

    .line 453
    const/4 v3, 0x0

    .line 454
    const/4 v2, 0x0

    .line 457
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 458
    const-string v8, "Initialization"

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 459
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInitialization(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v3

    .line 463
    :cond_1
    :goto_6
    const-string v8, "SegmentTemplate"

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 465
    if-eqz p3, :cond_b

    .line 466
    if-eqz v3, :cond_9

    .line 467
    :goto_7
    if-eqz v2, :cond_a

    :goto_8
    move-object v13, v2

    :goto_9
    move-object/from16 v2, p0

    move-wide/from16 v8, p4

    move-object/from16 v16, p2

    .line 470
    invoke-virtual/range {v2 .. v16}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildSegmentTemplate(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJJIJLjava/util/List;Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;

    move-result-object v2

    return-object v2

    .line 443
    :cond_2
    const-wide/16 v2, 0x1

    goto/16 :goto_0

    .line 444
    :cond_3
    const-wide/16 v2, 0x0

    goto :goto_1

    .line 446
    :cond_4
    const-wide/16 v2, -0x1

    goto :goto_2

    .line 447
    :cond_5
    const/4 v2, 0x1

    goto :goto_3

    .line 448
    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    .line 450
    :cond_7
    const/4 v2, 0x0

    goto :goto_5

    .line 460
    :cond_8
    const-string v8, "SegmentTimeline"

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 461
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentTimeline(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v2

    goto :goto_6

    .line 466
    :cond_9
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->initialization:Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    goto :goto_7

    .line 467
    :cond_a
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->segmentTimeline:Ljava/util/List;

    goto :goto_8

    :cond_b
    move-object v13, v2

    goto :goto_9
.end method

.method protected parseSegmentTimeline(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 484
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 485
    const-wide/16 v0, 0x0

    .line 487
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 488
    const-string v2, "S"

    invoke-static {p1, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 489
    const-string v2, "t"

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v0

    .line 490
    const-string v2, "d"

    invoke-static {p1, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v8

    .line 491
    const-string v2, "r"

    invoke-static {p1, v2, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v7, v2, 0x1

    move v2, v3

    .line 492
    :goto_0
    if-ge v2, v7, :cond_1

    .line 493
    invoke-virtual {p0, v0, v1, v8, v9}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildSegmentTimelineElement(JJ)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    add-long v4, v0, v8

    .line 492
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-wide v0, v4

    goto :goto_0

    .line 497
    :cond_1
    const-string v2, "SegmentTimeline"

    invoke-static {p1, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 498
    return-object v6
.end method

.method protected parseSegmentUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .locals 2

    .prologue
    .line 519
    const-string v0, "media"

    const-string v1, "mediaRange"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseRangedUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v0

    return-object v0
.end method

.method protected parseUrlTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;)Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;
    .locals 1

    .prologue
    .line 507
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 508
    if-eqz v0, :cond_0

    .line 509
    invoke-static {v0}, Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;->compile(Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;

    move-result-object p3

    .line 511
    :cond_0
    return-object p3
.end method

.method protected parseUtcTiming(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 143
    const-string v0, "schemeIdUri"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    const-string v1, "value"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildUtcTimingElement(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;

    move-result-object v0

    return-object v0
.end method
