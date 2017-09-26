.class Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;
.super Lcom/mopub/mobileads/RepeatingHandlerRunnable;
.source "NativeVideoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/NativeVideoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NativeVideoProgressRunnable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable$ProgressListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCurrentPosition:J

.field private mDuration:J

.field private mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mProgressListener:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable$ProgressListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mTextureView:Landroid/view/TextureView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mVisibilityChecker:Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mVisibilityTrackingEvents:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/List;Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/mopub/mobileads/VastVideoConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;",
            ">;",
            "Lcom/mopub/mobileads/VastVideoConfig;",
            ")V"
        }
    .end annotation

    .prologue
    .line 514
    new-instance v4, Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;

    invoke-direct {v4}, Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/List;Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 516
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/List;Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/mopub/mobileads/VastVideoConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;",
            ">;",
            "Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;",
            "Lcom/mopub/mobileads/VastVideoConfig;",
            ")V"
        }
    .end annotation

    .prologue
    .line 524
    invoke-direct {p0, p2}, Lcom/mopub/mobileads/RepeatingHandlerRunnable;-><init>(Landroid/os/Handler;)V

    .line 525
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 526
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 527
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 528
    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 530
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mContext:Landroid/content/Context;

    .line 531
    iput-object p3, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mVisibilityTrackingEvents:Ljava/util/List;

    .line 532
    iput-object p4, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mVisibilityChecker:Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;

    .line 533
    iput-object p5, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    .line 534
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mDuration:J

    .line 535
    return-void
.end method


# virtual methods
.method checkImpressionTrackers(Z)V
    .locals 6

    .prologue
    .line 562
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mVisibilityTrackingEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;

    .line 563
    iget-boolean v2, v0, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;->isTracked:Z

    if-nez v2, :cond_0

    .line 566
    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mVisibilityChecker:Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;

    iget-object v3, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mTextureView:Landroid/view/TextureView;

    iget-object v4, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mTextureView:Landroid/view/TextureView;

    iget v5, v0, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;->minimumPercentageVisible:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;->isVisible(Landroid/view/View;Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 568
    :cond_1
    iget v2, v0, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;->totalQualifiedPlayCounter:I

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mUpdateIntervalMillis:J

    add-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, v0, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;->totalQualifiedPlayCounter:I

    .line 569
    if-nez p1, :cond_2

    iget v2, v0, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;->totalQualifiedPlayCounter:I

    iget v3, v0, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;->totalRequiredPlayTimeMs:I

    if-lt v2, v3, :cond_0

    .line 571
    :cond_2
    iget-object v2, v0, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;->strategy:Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent$OnTrackedStrategy;

    invoke-interface {v2}, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent$OnTrackedStrategy;->execute()V

    .line 572
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;->isTracked:Z

    goto :goto_0

    .line 576
    :cond_3
    return-void
.end method

.method public doWork()V
    .locals 4

    .prologue
    .line 580
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mCurrentPosition:J

    .line 585
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mDuration:J

    .line 586
    iget-wide v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 590
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->checkImpressionTrackers(Z)V

    .line 592
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mProgressListener:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable$ProgressListener;

    if-eqz v0, :cond_2

    .line 593
    iget-wide v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mCurrentPosition:J

    long-to-float v0, v0

    iget-wide v2, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mDuration:J

    long-to-float v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    .line 594
    iget-object v1, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mProgressListener:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable$ProgressListener;

    float-to-int v0, v0

    invoke-interface {v1, v0}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable$ProgressListener;->updateProgress(I)V

    .line 597
    :cond_2
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    iget-wide v2, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mCurrentPosition:J

    long-to-int v1, v2

    iget-wide v2, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mDuration:J

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastVideoConfig;->getUntriggeredTrackersBefore(II)Ljava/util/List;

    move-result-object v0

    .line 600
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 601
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 602
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/VastTracker;

    .line 603
    invoke-virtual {v0}, Lcom/mopub/mobileads/VastTracker;->isTracked()Z

    move-result v3

    if-nez v3, :cond_3

    .line 606
    invoke-virtual {v0}, Lcom/mopub/mobileads/VastTracker;->getTrackingUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    invoke-virtual {v0}, Lcom/mopub/mobileads/VastTracker;->setTracked()V

    goto :goto_1

    .line 609
    :cond_4
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    goto :goto_0
.end method

.method getCurrentPosition()J
    .locals 2

    .prologue
    .line 554
    iget-wide v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mCurrentPosition:J

    return-wide v0
.end method

.method getDuration()J
    .locals 2

    .prologue
    .line 558
    iget-wide v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mDuration:J

    return-wide v0
.end method

.method seekTo(J)V
    .locals 1

    .prologue
    .line 550
    iput-wide p1, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mCurrentPosition:J

    .line 551
    return-void
.end method

.method setExoPlayer(Lcom/google/android/exoplayer/ExoPlayer;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer/ExoPlayer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 538
    iput-object p1, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    .line 539
    return-void
.end method

.method setProgressListener(Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable$ProgressListener;)V
    .locals 0
    .param p1    # Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable$ProgressListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 546
    iput-object p1, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mProgressListener:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable$ProgressListener;

    .line 547
    return-void
.end method

.method setTextureView(Landroid/view/TextureView;)V
    .locals 0
    .param p1    # Landroid/view/TextureView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 542
    iput-object p1, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mTextureView:Landroid/view/TextureView;

    .line 543
    return-void
.end method

.method setUpdateIntervalMillis(J)V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 616
    iput-wide p1, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mUpdateIntervalMillis:J

    .line 617
    return-void
.end method
