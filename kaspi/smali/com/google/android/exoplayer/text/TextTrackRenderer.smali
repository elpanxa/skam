.class public final Lcom/google/android/exoplayer/text/TextTrackRenderer;
.super Lcom/google/android/exoplayer/TrackRenderer;
.source "TextTrackRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final DEFAULT_PARSER_CLASSES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/exoplayer/text/SubtitleParser;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final MSG_UPDATE_OVERLAY:I


# instance fields
.field private final formatHolder:Lcom/google/android/exoplayer/MediaFormatHolder;

.field private inputStreamEnded:Z

.field private nextSubtitle:Lcom/google/android/exoplayer/text/Subtitle;

.field private nextSubtitleEventIndex:I

.field private parserHelper:Lcom/google/android/exoplayer/text/SubtitleParserHelper;

.field private parserIndex:I

.field private parserThread:Landroid/os/HandlerThread;

.field private final source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

.field private subtitle:Lcom/google/android/exoplayer/text/Subtitle;

.field private final subtitleParsers:[Lcom/google/android/exoplayer/text/SubtitleParser;

.field private final textRenderer:Lcom/google/android/exoplayer/text/TextRenderer;

.field private final textRendererHandler:Landroid/os/Handler;

.field private trackIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->DEFAULT_PARSER_CLASSES:Ljava/util/List;

    .line 76
    :try_start_0
    sget-object v0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->DEFAULT_PARSER_CLASSES:Ljava/util/List;

    const-string v1, "com.google.android.exoplayer.text.webvtt.WebvttParser"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/exoplayer/text/SubtitleParser;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 83
    :goto_0
    :try_start_1
    sget-object v0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->DEFAULT_PARSER_CLASSES:Ljava/util/List;

    const-string v1, "com.google.android.exoplayer.text.ttml.TtmlParser"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/exoplayer/text/SubtitleParser;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 90
    :goto_1
    :try_start_2
    sget-object v0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->DEFAULT_PARSER_CLASSES:Ljava/util/List;

    const-string v1, "com.google.android.exoplayer.text.subrip.SubripParser"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/exoplayer/text/SubtitleParser;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 97
    :goto_2
    :try_start_3
    sget-object v0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->DEFAULT_PARSER_CLASSES:Ljava/util/List;

    const-string v1, "com.google.android.exoplayer.text.tx3g.Tx3gParser"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/exoplayer/text/SubtitleParser;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 103
    :goto_3
    return-void

    .line 100
    :catch_0
    move-exception v0

    goto :goto_3

    .line 93
    :catch_1
    move-exception v0

    goto :goto_2

    .line 86
    :catch_2
    move-exception v0

    goto :goto_1

    .line 79
    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public varargs constructor <init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/text/TextRenderer;Landroid/os/Looper;[Lcom/google/android/exoplayer/text/SubtitleParser;)V
    .locals 3

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/google/android/exoplayer/TrackRenderer;-><init>()V

    .line 135
    invoke-interface {p1}, Lcom/google/android/exoplayer/SampleSource;->register()Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    .line 136
    invoke-static {p2}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/text/TextRenderer;

    iput-object v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->textRenderer:Lcom/google/android/exoplayer/text/TextRenderer;

    .line 137
    if-nez p3, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->textRendererHandler:Landroid/os/Handler;

    .line 139
    if-eqz p4, :cond_0

    array-length v0, p4

    if-nez v0, :cond_2

    .line 140
    :cond_0
    sget-object v0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->DEFAULT_PARSER_CLASSES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array p4, v0, [Lcom/google/android/exoplayer/text/SubtitleParser;

    .line 141
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    array-length v0, p4

    if-ge v1, v0, :cond_2

    .line 143
    :try_start_0
    sget-object v0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->DEFAULT_PARSER_CLASSES:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/text/SubtitleParser;

    aput-object v0, p4, v1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 141
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 137
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected error creating default parser"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 146
    :catch_1
    move-exception v0

    .line 147
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected error creating default parser"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 151
    :cond_2
    iput-object p4, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->subtitleParsers:[Lcom/google/android/exoplayer/text/SubtitleParser;

    .line 152
    new-instance v0, Lcom/google/android/exoplayer/MediaFormatHolder;

    invoke-direct {v0}, Lcom/google/android/exoplayer/MediaFormatHolder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->formatHolder:Lcom/google/android/exoplayer/MediaFormatHolder;

    .line 153
    return-void
.end method

.method private clearTextRenderer()V
    .locals 1

    .prologue
    .line 316
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/text/TextTrackRenderer;->updateTextRenderer(Ljava/util/List;)V

    .line 317
    return-void
.end method

.method private getNextEventTime()J
    .locals 2

    .prologue
    .line 302
    iget v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->nextSubtitleEventIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->nextSubtitleEventIndex:I

    iget-object v1, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->subtitle:Lcom/google/android/exoplayer/text/Subtitle;

    invoke-interface {v1}, Lcom/google/android/exoplayer/text/Subtitle;->getEventTimeCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->subtitle:Lcom/google/android/exoplayer/text/Subtitle;

    iget v1, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->nextSubtitleEventIndex:I

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/text/Subtitle;->getEventTime(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private invokeRendererInternalCues(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/text/Cue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->textRenderer:Lcom/google/android/exoplayer/text/TextRenderer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/text/TextRenderer;->onCues(Ljava/util/List;)V

    .line 332
    return-void
.end method

.method private seekToInternal()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->inputStreamEnded:Z

    .line 191
    iput-object v1, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->subtitle:Lcom/google/android/exoplayer/text/Subtitle;

    .line 192
    iput-object v1, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->nextSubtitle:Lcom/google/android/exoplayer/text/Subtitle;

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->parserHelper:Lcom/google/android/exoplayer/text/SubtitleParserHelper;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->flush()V

    .line 194
    invoke-direct {p0}, Lcom/google/android/exoplayer/text/TextTrackRenderer;->clearTextRenderer()V

    .line 195
    return-void
.end method

.method private updateTextRenderer(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/text/Cue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->textRendererHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->textRendererHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 313
    :goto_0
    return-void

    .line 311
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/text/TextTrackRenderer;->invokeRendererInternalCues(Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method protected doPrepare(J)I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 157
    iget-object v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->prepare(J)Z

    move-result v0

    .line 158
    if-nez v0, :cond_0

    .line 171
    :goto_0
    return v1

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    invoke-interface {v0}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->getTrackCount()I

    move-result v3

    move v0, v1

    .line 162
    :goto_1
    iget-object v2, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->subtitleParsers:[Lcom/google/android/exoplayer/text/SubtitleParser;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    move v2, v1

    .line 163
    :goto_2
    if-ge v2, v3, :cond_2

    .line 164
    iget-object v4, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->subtitleParsers:[Lcom/google/android/exoplayer/text/SubtitleParser;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    invoke-interface {v5, v2}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->getTrackInfo(I)Lcom/google/android/exoplayer/TrackInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/exoplayer/TrackInfo;->mimeType:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/google/android/exoplayer/text/SubtitleParser;->canParse(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 165
    iput v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->parserIndex:I

    .line 166
    iput v2, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->trackIndex:I

    .line 167
    const/4 v1, 0x1

    goto :goto_0

    .line 163
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 162
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 171
    :cond_3
    const/4 v1, -0x1

    goto :goto_0
.end method

.method protected doSomeWork(JJ)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 199
    iget-object v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget v1, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->trackIndex:I

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->continueBuffering(IJ)Z

    .line 201
    iget-object v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->nextSubtitle:Lcom/google/android/exoplayer/text/Subtitle;

    if-nez v0, :cond_0

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->parserHelper:Lcom/google/android/exoplayer/text/SubtitleParserHelper;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->getAndClearResult()Lcom/google/android/exoplayer/text/Subtitle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->nextSubtitle:Lcom/google/android/exoplayer/text/Subtitle;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/TextTrackRenderer;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 251
    :cond_1
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    new-instance v1, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->subtitle:Lcom/google/android/exoplayer/text/Subtitle;

    if-eqz v0, :cond_7

    .line 218
    invoke-direct {p0}, Lcom/google/android/exoplayer/text/TextTrackRenderer;->getNextEventTime()J

    move-result-wide v0

    move v2, v6

    .line 219
    :goto_1
    cmp-long v3, v0, p1

    if-gtz v3, :cond_3

    .line 220
    iget v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->nextSubtitleEventIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->nextSubtitleEventIndex:I

    .line 221
    invoke-direct {p0}, Lcom/google/android/exoplayer/text/TextTrackRenderer;->getNextEventTime()J

    move-result-wide v0

    move v2, v7

    .line 222
    goto :goto_1

    :cond_3
    move-wide v8, v0

    move v0, v2

    move-wide v2, v8

    .line 226
    :goto_2
    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->nextSubtitle:Lcom/google/android/exoplayer/text/Subtitle;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->nextSubtitle:Lcom/google/android/exoplayer/text/Subtitle;

    invoke-interface {v1}, Lcom/google/android/exoplayer/text/Subtitle;->getStartTime()J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-gtz v1, :cond_4

    .line 229
    iget-object v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->nextSubtitle:Lcom/google/android/exoplayer/text/Subtitle;

    iput-object v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->subtitle:Lcom/google/android/exoplayer/text/Subtitle;

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->nextSubtitle:Lcom/google/android/exoplayer/text/Subtitle;

    .line 231
    iget-object v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->subtitle:Lcom/google/android/exoplayer/text/Subtitle;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer/text/Subtitle;->getNextEventTimeIndex(J)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->nextSubtitleEventIndex:I

    move v0, v7

    .line 235
    :cond_4
    if-eqz v0, :cond_5

    .line 237
    iget-object v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->subtitle:Lcom/google/android/exoplayer/text/Subtitle;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer/text/Subtitle;->getCues(J)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/text/TextTrackRenderer;->updateTextRenderer(Ljava/util/List;)V

    .line 240
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->inputStreamEnded:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->nextSubtitle:Lcom/google/android/exoplayer/text/Subtitle;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->parserHelper:Lcom/google/android/exoplayer/text/SubtitleParserHelper;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->isParsing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->parserHelper:Lcom/google/android/exoplayer/text/SubtitleParserHelper;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->getSampleHolder()Lcom/google/android/exoplayer/SampleHolder;

    move-result-object v5

    .line 243
    invoke-virtual {v5}, Lcom/google/android/exoplayer/SampleHolder;->clearData()V

    .line 244
    iget-object v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget v1, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->trackIndex:I

    iget-object v4, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->formatHolder:Lcom/google/android/exoplayer/MediaFormatHolder;

    move-wide v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->readData(IJLcom/google/android/exoplayer/MediaFormatHolder;Lcom/google/android/exoplayer/SampleHolder;Z)I

    move-result v0

    .line 245
    const/4 v1, -0x3

    if-ne v0, v1, :cond_6

    .line 246
    iget-object v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->parserHelper:Lcom/google/android/exoplayer/text/SubtitleParserHelper;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->startParseOperation()V

    goto :goto_0

    .line 247
    :cond_6
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 248
    iput-boolean v7, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->inputStreamEnded:Z

    goto/16 :goto_0

    :cond_7
    move-wide v2, v4

    move v0, v6

    goto :goto_2
.end method

.method protected getBufferedPositionUs()J
    .locals 2

    .prologue
    .line 286
    const-wide/16 v0, -0x3

    return-wide v0
.end method

.method protected getDurationUs()J
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget v1, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->trackIndex:I

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->getTrackInfo(I)Lcom/google/android/exoplayer/TrackInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/exoplayer/TrackInfo;->durationUs:J

    return-wide v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 322
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 327
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 324
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/text/TextTrackRenderer;->invokeRendererInternalCues(Ljava/util/List;)V

    .line 325
    const/4 v0, 0x1

    goto :goto_0

    .line 322
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected isEnded()Z
    .locals 4

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->inputStreamEnded:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->subtitle:Lcom/google/android/exoplayer/text/Subtitle;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer/text/TextTrackRenderer;->getNextEventTime()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isReady()Z
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x1

    return v0
.end method

.method protected maybeThrowError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    invoke-interface {v0}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->maybeThrowError()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    return-void

    .line 273
    :catch_0
    move-exception v0

    .line 274
    new-instance v1, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected onDisabled()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 255
    iput-object v1, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->subtitle:Lcom/google/android/exoplayer/text/Subtitle;

    .line 256
    iput-object v1, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->nextSubtitle:Lcom/google/android/exoplayer/text/Subtitle;

    .line 257
    iget-object v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->parserThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 258
    iput-object v1, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->parserThread:Landroid/os/HandlerThread;

    .line 259
    iput-object v1, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->parserHelper:Lcom/google/android/exoplayer/text/SubtitleParserHelper;

    .line 260
    invoke-direct {p0}, Lcom/google/android/exoplayer/text/TextTrackRenderer;->clearTextRenderer()V

    .line 261
    iget-object v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget v1, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->trackIndex:I

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->disable(I)V

    .line 262
    return-void
.end method

.method protected onEnabled(JZ)V
    .locals 5

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget v1, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->trackIndex:I

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->enable(IJ)V

    .line 177
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "textParser"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->parserThread:Landroid/os/HandlerThread;

    .line 178
    iget-object v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->parserThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 179
    new-instance v0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;

    iget-object v1, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->parserThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->subtitleParsers:[Lcom/google/android/exoplayer/text/SubtitleParser;

    iget v3, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->parserIndex:I

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/text/SubtitleParserHelper;-><init>(Landroid/os/Looper;Lcom/google/android/exoplayer/text/SubtitleParser;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->parserHelper:Lcom/google/android/exoplayer/text/SubtitleParserHelper;

    .line 180
    invoke-direct {p0}, Lcom/google/android/exoplayer/text/TextTrackRenderer;->seekToInternal()V

    .line 181
    return-void
.end method

.method protected onReleased()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    invoke-interface {v0}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->release()V

    .line 267
    return-void
.end method

.method protected seekTo(J)V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/exoplayer/text/TextTrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->seekToUs(J)V

    .line 186
    invoke-direct {p0}, Lcom/google/android/exoplayer/text/TextTrackRenderer;->seekToInternal()V

    .line 187
    return-void
.end method
