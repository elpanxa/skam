.class public final Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;
.super Lcom/google/android/exoplayer/TrackRenderer;
.source "Eia608TrackRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final CC_MODE_PAINT_ON:I = 0x3

.field private static final CC_MODE_POP_ON:I = 0x2

.field private static final CC_MODE_ROLL_UP:I = 0x1

.field private static final CC_MODE_UNKNOWN:I = 0x0

.field private static final DEFAULT_CAPTIONS_ROW_COUNT:I = 0x4

.field private static final MAX_SAMPLE_READAHEAD_US:I = 0x4c4b40

.field private static final MSG_INVOKE_RENDERER:I


# instance fields
.field private caption:Ljava/lang/String;

.field private captionMode:I

.field private captionRowCount:I

.field private final captionStringBuilder:Ljava/lang/StringBuilder;

.field private final eia608Parser:Lcom/google/android/exoplayer/text/eia608/Eia608Parser;

.field private final formatHolder:Lcom/google/android/exoplayer/MediaFormatHolder;

.field private inputStreamEnded:Z

.field private lastRenderedCaption:Ljava/lang/String;

.field private final pendingCaptionLists:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/google/android/exoplayer/text/eia608/ClosedCaptionList;",
            ">;"
        }
    .end annotation
.end field

.field private final sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

.field private final source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

.field private final textRenderer:Lcom/google/android/exoplayer/text/TextRenderer;

.field private final textRendererHandler:Landroid/os/Handler;

.field private trackIndex:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/text/TextRenderer;Landroid/os/Looper;)V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/google/android/exoplayer/TrackRenderer;-><init>()V

    .line 84
    invoke-interface {p1}, Lcom/google/android/exoplayer/SampleSource;->register()Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    .line 85
    invoke-static {p2}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/text/TextRenderer;

    iput-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->textRenderer:Lcom/google/android/exoplayer/text/TextRenderer;

    .line 86
    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->textRendererHandler:Landroid/os/Handler;

    .line 87
    new-instance v0, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;

    invoke-direct {v0}, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->eia608Parser:Lcom/google/android/exoplayer/text/eia608/Eia608Parser;

    .line 88
    new-instance v0, Lcom/google/android/exoplayer/MediaFormatHolder;

    invoke-direct {v0}, Lcom/google/android/exoplayer/MediaFormatHolder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->formatHolder:Lcom/google/android/exoplayer/MediaFormatHolder;

    .line 89
    new-instance v0, Lcom/google/android/exoplayer/SampleHolder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/SampleHolder;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    .line 91
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->pendingCaptionLists:Ljava/util/TreeSet;

    .line 92
    return-void

    .line 86
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    goto :goto_0
.end method

.method private clearPendingSample()V
    .locals 4

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    .line 380
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/SampleHolder;->clearData()V

    .line 381
    return-void
.end method

.method private consumeCaptionList(Lcom/google/android/exoplayer/text/eia608/ClosedCaptionList;)V
    .locals 4

    .prologue
    .line 243
    iget-object v0, p1, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionList;->captions:[Lcom/google/android/exoplayer/text/eia608/ClosedCaption;

    array-length v2, v0

    .line 244
    if-nez v2, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_5

    .line 249
    iget-object v0, p1, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionList;->captions:[Lcom/google/android/exoplayer/text/eia608/ClosedCaption;

    aget-object v0, v0, v1

    .line 250
    iget v3, v0, Lcom/google/android/exoplayer/text/eia608/ClosedCaption;->type:I

    if-nez v3, :cond_4

    .line 251
    check-cast v0, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;

    .line 252
    invoke-virtual {v0}, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;->isMiscCode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 253
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->handleMiscCode(Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;)V

    .line 248
    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 254
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;->isPreambleAddressCode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 255
    invoke-direct {p0}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->handlePreambleAddressCode()V

    goto :goto_2

    .line 258
    :cond_4
    check-cast v0, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionText;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->handleText(Lcom/google/android/exoplayer/text/eia608/ClosedCaptionText;)V

    goto :goto_2

    .line 262
    :cond_5
    iget v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 263
    :cond_6
    invoke-direct {p0}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->getDisplayCaption()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->caption:Ljava/lang/String;

    goto :goto_0
.end method

.method private getDisplayCaption()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, -0x1

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 351
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 352
    if-nez v0, :cond_0

    move-object v0, v1

    .line 375
    :goto_0
    return-object v0

    .line 356
    :cond_0
    iget-object v3, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v5, 0xa

    if-ne v3, v5, :cond_1

    move v3, v4

    .line 357
    :goto_1
    if-ne v0, v4, :cond_2

    if-eqz v3, :cond_2

    move-object v0, v1

    .line 358
    goto :goto_0

    :cond_1
    move v3, v2

    .line 356
    goto :goto_1

    .line 361
    :cond_2
    if-eqz v3, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 362
    :cond_3
    iget v1, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionMode:I

    if-eq v1, v4, :cond_4

    .line 363
    iget-object v1, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    move v1, v2

    move v3, v0

    .line 368
    :goto_2
    iget v4, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionRowCount:I

    if-ge v1, v4, :cond_5

    if-eq v3, v6, :cond_5

    .line 369
    iget-object v4, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    const-string v5, "\n"

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v4, v5, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v3

    .line 368
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 371
    :cond_5
    if-eq v3, v6, :cond_6

    .line 372
    add-int/lit8 v1, v3, 0x1

    .line 374
    :goto_3
    iget-object v3, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 375
    iget-object v3, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    sub-int/2addr v0, v1

    invoke-virtual {v3, v2, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_3
.end method

.method private handleMiscCode(Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 274
    iget-byte v0, p1, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;->cc2:B

    packed-switch v0, :pswitch_data_0

    .line 295
    :pswitch_0
    iget v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionMode:I

    if-nez v0, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 276
    :pswitch_1
    iput v4, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionRowCount:I

    .line 277
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->setCaptionMode(I)V

    goto :goto_0

    .line 280
    :pswitch_2
    iput v3, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionRowCount:I

    .line 281
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->setCaptionMode(I)V

    goto :goto_0

    .line 284
    :pswitch_3
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionRowCount:I

    .line 285
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->setCaptionMode(I)V

    goto :goto_0

    .line 288
    :pswitch_4
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->setCaptionMode(I)V

    goto :goto_0

    .line 291
    :pswitch_5
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->setCaptionMode(I)V

    goto :goto_0

    .line 299
    :cond_1
    iget-byte v0, p1, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;->cc2:B

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 317
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 301
    :sswitch_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->caption:Ljava/lang/String;

    .line 302
    iget v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionMode:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionMode:I

    if-ne v0, v3, :cond_0

    .line 303
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 307
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 310
    :sswitch_3
    invoke-direct {p0}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->getDisplayCaption()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->caption:Ljava/lang/String;

    .line 311
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 314
    :sswitch_4
    invoke-direct {p0}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->maybeAppendNewline()V

    goto :goto_0

    .line 274
    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 299
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2d -> :sswitch_4
        0x2e -> :sswitch_2
        0x2f -> :sswitch_3
    .end sparse-switch
.end method

.method private handlePreambleAddressCode()V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->maybeAppendNewline()V

    .line 327
    return-void
.end method

.method private handleText(Lcom/google/android/exoplayer/text/eia608/ClosedCaptionText;)V
    .locals 2

    .prologue
    .line 268
    iget v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionMode:I

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionText;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    :cond_0
    return-void
.end method

.method private invokeRenderer(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->lastRenderedCaption:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 203
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->lastRenderedCaption:Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->textRendererHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->textRendererHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 207
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->invokeRendererInternal(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private invokeRendererInternal(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 223
    if-nez p1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->textRenderer:Lcom/google/android/exoplayer/text/TextRenderer;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/text/TextRenderer;->onCues(Ljava/util/List;)V

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->textRenderer:Lcom/google/android/exoplayer/text/TextRenderer;

    new-instance v1, Lcom/google/android/exoplayer/text/Cue;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer/text/Cue;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/text/TextRenderer;->onCues(Ljava/util/List;)V

    goto :goto_0
.end method

.method private isSamplePending()Z
    .locals 4

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-wide v0, v0, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeAppendNewline()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 344
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 345
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, v2, :cond_0

    .line 346
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 348
    :cond_0
    return-void
.end method

.method private maybeParsePendingSample(J)V
    .locals 5

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-wide v0, v0, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    const-wide/32 v2, 0x4c4b40

    add-long/2addr v2, p1

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->eia608Parser:Lcom/google/android/exoplayer/text/eia608/Eia608Parser;

    iget-object v1, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->parse(Lcom/google/android/exoplayer/SampleHolder;)Lcom/google/android/exoplayer/text/eia608/ClosedCaptionList;

    move-result-object v0

    .line 236
    invoke-direct {p0}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->clearPendingSample()V

    .line 237
    if-eqz v0, :cond_0

    .line 238
    iget-object v1, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->pendingCaptionLists:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private seekToInternal()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 123
    iput-boolean v1, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->inputStreamEnded:Z

    .line 124
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->pendingCaptionLists:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 125
    invoke-direct {p0}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->clearPendingSample()V

    .line 126
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionRowCount:I

    .line 127
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->setCaptionMode(I)V

    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->invokeRenderer(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method private setCaptionMode(I)V
    .locals 2

    .prologue
    .line 330
    iget v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionMode:I

    if-ne v0, p1, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    iput p1, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionMode:I

    .line 336
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 337
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_0

    .line 339
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->caption:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected doPrepare(J)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 96
    iget-object v1, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    invoke-interface {v1, p1, p2}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->prepare(J)Z

    move-result v1

    .line 97
    if-nez v1, :cond_0

    .line 107
    :goto_0
    return v0

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    invoke-interface {v1}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->getTrackCount()I

    move-result v1

    .line 101
    :goto_1
    if-ge v0, v1, :cond_2

    .line 102
    iget-object v2, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->eia608Parser:Lcom/google/android/exoplayer/text/eia608/Eia608Parser;

    iget-object v3, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    invoke-interface {v3, v0}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->getTrackInfo(I)Lcom/google/android/exoplayer/TrackInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/exoplayer/TrackInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->canParse(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    iput v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->trackIndex:I

    .line 104
    const/4 v0, 0x1

    goto :goto_0

    .line 101
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 107
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected doSomeWork(JJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v8, -0x3

    .line 133
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget v1, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->trackIndex:I

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->continueBuffering(IJ)Z

    .line 135
    invoke-direct {p0}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->isSamplePending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->maybeParsePendingSample(J)V

    .line 139
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->inputStreamEnded:Z

    if-eqz v0, :cond_2

    move v0, v7

    .line 140
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->isSamplePending()Z

    move-result v1

    if-nez v1, :cond_5

    if-ne v0, v8, :cond_5

    .line 141
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget v1, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->trackIndex:I

    iget-object v4, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->formatHolder:Lcom/google/android/exoplayer/MediaFormatHolder;

    iget-object v5, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    const/4 v6, 0x0

    move-wide v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->readData(IJLcom/google/android/exoplayer/MediaFormatHolder;Lcom/google/android/exoplayer/SampleHolder;Z)I

    move-result v0

    .line 142
    if-ne v0, v8, :cond_3

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->maybeParsePendingSample(J)V

    goto :goto_0

    :cond_2
    move v0, v8

    .line 139
    goto :goto_0

    .line 144
    :cond_3
    if-ne v0, v7, :cond_1

    .line 145
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->inputStreamEnded:Z

    goto :goto_0

    .line 155
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->pendingCaptionLists:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionList;

    .line 156
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->consumeCaptionList(Lcom/google/android/exoplayer/text/eia608/ClosedCaptionList;)V

    .line 158
    iget-boolean v0, v0, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionList;->decodeOnly:Z

    if-nez v0, :cond_5

    .line 159
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->caption:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->invokeRenderer(Ljava/lang/String;)V

    .line 149
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->pendingCaptionLists:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 150
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->pendingCaptionLists:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionList;

    iget-wide v0, v0, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionList;->timeUs:J

    cmp-long v0, v0, p1

    if-lez v0, :cond_4

    .line 162
    :cond_6
    return-void
.end method

.method protected getBufferedPositionUs()J
    .locals 2

    .prologue
    .line 185
    const-wide/16 v0, -0x3

    return-wide v0
.end method

.method protected getDurationUs()J
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget v1, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->trackIndex:I

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->getTrackInfo(I)Lcom/google/android/exoplayer/TrackInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/exoplayer/TrackInfo;->durationUs:J

    return-wide v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 214
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 219
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 216
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->invokeRendererInternal(Ljava/lang/String;)V

    .line 217
    const/4 v0, 0x1

    goto :goto_0

    .line 214
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected isEnded()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->inputStreamEnded:Z

    return v0
.end method

.method protected isReady()Z
    .locals 1

    .prologue
    .line 195
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
    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    invoke-interface {v0}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->maybeThrowError()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    new-instance v1, Lcom/google/android/exoplayer/ExoPlaybackException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected onDisabled()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget v1, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->trackIndex:I

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->disable(I)V

    .line 167
    return-void
.end method

.method protected onEnabled(JZ)V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    iget v1, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->trackIndex:I

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->enable(IJ)V

    .line 113
    invoke-direct {p0}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->seekToInternal()V

    .line 114
    return-void
.end method

.method protected seekTo(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->source:Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer/SampleSource$SampleSourceReader;->seekToUs(J)V

    .line 119
    invoke-direct {p0}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->seekToInternal()V

    .line 120
    return-void
.end method
