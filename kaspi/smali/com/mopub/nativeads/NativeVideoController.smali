.class public Lcom/mopub/nativeads/NativeVideoController;
.super Ljava/lang/Object;
.source "NativeVideoController.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Lcom/google/android/exoplayer/ExoPlayer$Listener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;,
        Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;,
        Lcom/mopub/nativeads/NativeVideoController$ExoPlayerFactory;,
        Lcom/mopub/nativeads/NativeVideoController$Listener;
    }
.end annotation


# static fields
.field private static final BUFFER_SEGMENT_COUNT:I = 0x20

.field private static final BUFFER_SEGMENT_SIZE:I = 0x10000

.field public static final RESUME_FINISHED_THRESHOLD:J = 0x2eeL

.field public static final STATE_BUFFERING:I = 0x3

.field public static final STATE_CLEARED:I = 0x6

.field public static final STATE_ENDED:I = 0x5

.field public static final STATE_IDLE:I = 0x1

.field public static final STATE_PREPARING:I = 0x2

.field public static final STATE_READY:I = 0x4

.field private static final sManagerMap:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/mopub/nativeads/NativeVideoController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppAudioEnabled:Z

.field private mAudioEnabled:Z

.field private mAudioManager:Landroid/media/AudioManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mAudioTrackRenderer:Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mEventDetails:Lcom/mopub/common/event/EventDetails;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private volatile mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mExoPlayerFactory:Lcom/mopub/nativeads/NativeVideoController$ExoPlayerFactory;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mExoPlayerStateStartedFromIdle:Z

.field private mFinalFrame:Landroid/graphics/drawable/BitmapDrawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mListener:Lcom/mopub/nativeads/NativeVideoController$Listener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mNativeVideoProgressRunnable:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mOwnerRef:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayWhenReady:Z

.field private mPreviousExoPlayerState:I

.field private mSurface:Landroid/view/Surface;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mTextureView:Landroid/view/TextureView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mVideoTrackRenderer:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/mopub/nativeads/NativeVideoController;->sManagerMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/mopub/mobileads/VastVideoConfig;Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;Lcom/mopub/nativeads/NativeVideoController$ExoPlayerFactory;Lcom/mopub/common/event/EventDetails;Landroid/media/AudioManager;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mopub/mobileads/VastVideoConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/mopub/nativeads/NativeVideoController$ExoPlayerFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/mopub/common/event/EventDetails;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Landroid/media/AudioManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mPreviousExoPlayerState:I

    .line 97
    iput-boolean v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayerStateStartedFromIdle:Z

    .line 168
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 169
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 170
    invoke-static {p4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 171
    invoke-static {p6}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mContext:Landroid/content/Context;

    .line 174
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mHandler:Landroid/os/Handler;

    .line 175
    iput-object p2, p0, Lcom/mopub/nativeads/NativeVideoController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    .line 176
    iput-object p3, p0, Lcom/mopub/nativeads/NativeVideoController;->mNativeVideoProgressRunnable:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;

    .line 177
    iput-object p4, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayerFactory:Lcom/mopub/nativeads/NativeVideoController$ExoPlayerFactory;

    .line 178
    iput-object p5, p0, Lcom/mopub/nativeads/NativeVideoController;->mEventDetails:Lcom/mopub/common/event/EventDetails;

    .line 179
    iput-object p6, p0, Lcom/mopub/nativeads/NativeVideoController;->mAudioManager:Landroid/media/AudioManager;

    .line 180
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/mopub/mobileads/VastVideoConfig;Lcom/mopub/common/event/EventDetails;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/mopub/mobileads/VastVideoConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/mopub/common/event/EventDetails;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;",
            ">;",
            "Lcom/mopub/mobileads/VastVideoConfig;",
            "Lcom/mopub/common/event/EventDetails;",
            ")V"
        }
    .end annotation

    .prologue
    .line 152
    new-instance v3, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v3, p1, v0, p2, p3}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/List;Lcom/mopub/mobileads/VastVideoConfig;)V

    new-instance v4, Lcom/mopub/nativeads/NativeVideoController$ExoPlayerFactory;

    invoke-direct {v4}, Lcom/mopub/nativeads/NativeVideoController$ExoPlayerFactory;-><init>()V

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/mopub/nativeads/NativeVideoController;-><init>(Landroid/content/Context;Lcom/mopub/mobileads/VastVideoConfig;Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;Lcom/mopub/nativeads/NativeVideoController$ExoPlayerFactory;Lcom/mopub/common/event/EventDetails;Landroid/media/AudioManager;)V

    .line 160
    return-void
.end method

.method private clearExistingPlayer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 398
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    if-nez v0, :cond_0

    .line 407
    :goto_0
    return-void

    .line 402
    :cond_0
    invoke-direct {p0, v1}, Lcom/mopub/nativeads/NativeVideoController;->setExoSurface(Landroid/view/Surface;)V

    .line 403
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->stop()V

    .line 404
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->release()V

    .line 405
    iput-object v1, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    .line 406
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mNativeVideoProgressRunnable:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->setExoPlayer(Lcom/google/android/exoplayer/ExoPlayer;)V

    goto :goto_0
.end method

.method public static createForId(JLandroid/content/Context;Lcom/mopub/mobileads/VastVideoConfig;Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;Lcom/mopub/nativeads/NativeVideoController$ExoPlayerFactory;Lcom/mopub/common/event/EventDetails;Landroid/media/AudioManager;)Lcom/mopub/nativeads/NativeVideoController;
    .locals 8
    .param p2    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/mopub/mobileads/VastVideoConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/mopub/nativeads/NativeVideoController$ExoPlayerFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/mopub/common/event/EventDetails;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Landroid/media/AudioManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 126
    new-instance v0, Lcom/mopub/nativeads/NativeVideoController;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/mopub/nativeads/NativeVideoController;-><init>(Landroid/content/Context;Lcom/mopub/mobileads/VastVideoConfig;Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;Lcom/mopub/nativeads/NativeVideoController$ExoPlayerFactory;Lcom/mopub/common/event/EventDetails;Landroid/media/AudioManager;)V

    .line 128
    sget-object v1, Lcom/mopub/nativeads/NativeVideoController;->sManagerMap:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-object v0
.end method

.method public static createForId(JLandroid/content/Context;Ljava/util/List;Lcom/mopub/mobileads/VastVideoConfig;Lcom/mopub/common/event/EventDetails;)Lcom/mopub/nativeads/NativeVideoController;
    .locals 4
    .param p2    # Landroid/content/Context;
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
    .param p5    # Lcom/mopub/common/event/EventDetails;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;",
            ">;",
            "Lcom/mopub/mobileads/VastVideoConfig;",
            "Lcom/mopub/common/event/EventDetails;",
            ")",
            "Lcom/mopub/nativeads/NativeVideoController;"
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Lcom/mopub/nativeads/NativeVideoController;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/mopub/nativeads/NativeVideoController;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/mopub/mobileads/VastVideoConfig;Lcom/mopub/common/event/EventDetails;)V

    .line 113
    sget-object v1, Lcom/mopub/nativeads/NativeVideoController;->sManagerMap:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-object v0
.end method

.method public static getForId(J)Lcom/mopub/nativeads/NativeVideoController;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 140
    sget-object v0, Lcom/mopub/nativeads/NativeVideoController;->sManagerMap:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/NativeVideoController;

    return-object v0
.end method

.method private preparePlayer()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    .line 410
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    if-nez v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayerFactory:Lcom/mopub/nativeads/NativeVideoController$ExoPlayerFactory;

    const/16 v1, 0x3e8

    const/16 v2, 0x1388

    invoke-virtual {v0, v9, v1, v2}, Lcom/mopub/nativeads/NativeVideoController$ExoPlayerFactory;->newInstance(III)Lcom/google/android/exoplayer/ExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    .line 412
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mNativeVideoProgressRunnable:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;

    iget-object v1, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->setExoPlayer(Lcom/google/android/exoplayer/ExoPlayer;)V

    .line 413
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer/ExoPlayer;->addListener(Lcom/google/android/exoplayer/ExoPlayer$Listener;)V

    .line 416
    new-instance v3, Lcom/google/android/exoplayer/upstream/DefaultAllocator;

    const/high16 v0, 0x10000

    invoke-direct {v3, v0}, Lcom/google/android/exoplayer/upstream/DefaultAllocator;-><init>(I)V

    .line 417
    new-instance v6, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;

    invoke-direct {v6}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;-><init>()V

    .line 419
    new-instance v2, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;

    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mContext:Landroid/content/Context;

    const-string v1, "exo_demo"

    iget-object v4, p0, Lcom/mopub/nativeads/NativeVideoController;->mEventDetails:Lcom/mopub/common/event/EventDetails;

    invoke-direct {v2, v0, v1, v4}, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/common/event/EventDetails;)V

    .line 422
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoConfig;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v1

    .line 424
    new-instance v0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/high16 v4, 0x200000

    new-array v5, v11, [Lcom/google/android/exoplayer/extractor/Extractor;

    aput-object v6, v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/Allocator;I[Lcom/google/android/exoplayer/extractor/Extractor;)V

    .line 426
    new-instance v1, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/mopub/nativeads/NativeVideoController;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/16 v8, 0xa

    move-object v2, v0

    move v3, v9

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;IJLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V

    iput-object v1, p0, Lcom/mopub/nativeads/NativeVideoController;->mVideoTrackRenderer:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    .line 429
    new-instance v1, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;)V

    iput-object v1, p0, Lcom/mopub/nativeads/NativeVideoController;->mAudioTrackRenderer:Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;

    .line 430
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    new-array v1, v9, [Lcom/google/android/exoplayer/TrackRenderer;

    iget-object v2, p0, Lcom/mopub/nativeads/NativeVideoController;->mAudioTrackRenderer:Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;

    aput-object v2, v1, v10

    iget-object v2, p0, Lcom/mopub/nativeads/NativeVideoController;->mVideoTrackRenderer:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    aput-object v2, v1, v11

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/ExoPlayer;->prepare([Lcom/google/android/exoplayer/TrackRenderer;)V

    .line 433
    :cond_0
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeVideoController;->setExoAudio()V

    .line 434
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeVideoController;->setExoPlayWhenReady()V

    .line 435
    return-void
.end method

.method public static remove(J)Lcom/mopub/nativeads/NativeVideoController;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 145
    sget-object v0, Lcom/mopub/nativeads/NativeVideoController;->sManagerMap:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/NativeVideoController;

    return-object v0
.end method

.method private setExoAudio()V
    .locals 1

    .prologue
    .line 447
    iget-boolean v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mAudioEnabled:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-direct {p0, v0}, Lcom/mopub/nativeads/NativeVideoController;->setExoAudio(F)V

    .line 448
    return-void

    .line 447
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setExoAudio(F)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 451
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkArgument(Z)V

    .line 452
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    if-nez v0, :cond_1

    .line 458
    :goto_1
    return-void

    .line 451
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    iget-object v2, p0, Lcom/mopub/nativeads/NativeVideoController;->mAudioTrackRenderer:Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v2, v1, v3}, Lcom/google/android/exoplayer/ExoPlayer;->sendMessage(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private setExoPlayWhenReady()V
    .locals 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    if-nez v0, :cond_0

    .line 444
    :goto_0
    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    iget-boolean v1, p0, Lcom/mopub/nativeads/NativeVideoController;->mPlayWhenReady:Z

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/ExoPlayer;->setPlayWhenReady(Z)V

    .line 443
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getPlayWhenReady()Z

    move-result v0

    iget-object v1, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer/ExoPlayer;->getPlaybackState()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/mopub/nativeads/NativeVideoController;->updateProgressRunnable(ZI)V

    goto :goto_0
.end method

.method private setExoSurface(Landroid/view/Surface;)V
    .locals 3
    .param p1    # Landroid/view/Surface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 461
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    if-nez v0, :cond_0

    .line 467
    :goto_0
    return-void

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    iget-object v1, p0, Lcom/mopub/nativeads/NativeVideoController;->mVideoTrackRenderer:Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/exoplayer/ExoPlayer;->sendMessage(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method static setForId(JLcom/mopub/nativeads/NativeVideoController;)V
    .locals 2
    .param p2    # Lcom/mopub/nativeads/NativeVideoController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 135
    sget-object v0, Lcom/mopub/nativeads/NativeVideoController;->sManagerMap:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    return-void
.end method

.method private updateProgressRunnable(ZI)V
    .locals 4

    .prologue
    .line 390
    if-eqz p1, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mNativeVideoProgressRunnable:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->startRepeating(J)V

    .line 395
    :goto_0
    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mNativeVideoProgressRunnable:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;

    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->stop()V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/NativeVideoController;->setPlayWhenReady(Z)V

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mSurface:Landroid/view/Surface;

    .line 277
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeVideoController;->clearExistingPlayer()V

    .line 278
    return-void
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mNativeVideoProgressRunnable:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;

    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mNativeVideoProgressRunnable:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;

    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFinalFrame()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mFinalFrame:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public getPlaybackState()I
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    if-nez v0, :cond_0

    .line 205
    const/4 v0, 0x6

    .line 208
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getPlaybackState()I

    move-result v0

    goto :goto_0
.end method

.method public handleCtaClick(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeVideoController;->triggerImpressionTrackers()V

    .line 373
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mopub/mobileads/VastVideoConfig;->handleClickWithoutResult(Landroid/content/Context;I)V

    .line 374
    return-void
.end method

.method public hasFinalFrame()Z
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mFinalFrame:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAudioFocusChange(I)V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    if-nez v0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-interface {v0, p1}, Landroid/media/AudioManager$OnAudioFocusChangeListener;->onAudioFocusChange(I)V

    goto :goto_0
.end method

.method public onPlayWhenReadyCommitted()V
    .locals 0

    .prologue
    .line 348
    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer/ExoPlaybackException;)V
    .locals 4

    .prologue
    .line 352
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mListener:Lcom/mopub/nativeads/NativeVideoController$Listener;

    if-nez v0, :cond_0

    .line 363
    :goto_0
    return-void

    .line 356
    :cond_0
    sget-object v0, Lcom/mopub/common/event/BaseEvent$Name;->ERROR_DURING_PLAYBACK:Lcom/mopub/common/event/BaseEvent$Name;

    sget-object v1, Lcom/mopub/common/event/BaseEvent$Category;->NATIVE_VIDEO:Lcom/mopub/common/event/BaseEvent$Category;

    sget-object v2, Lcom/mopub/common/event/BaseEvent$SamplingRate;->NATIVE_VIDEO:Lcom/mopub/common/event/BaseEvent$SamplingRate;

    iget-object v3, p0, Lcom/mopub/nativeads/NativeVideoController;->mEventDetails:Lcom/mopub/common/event/EventDetails;

    invoke-static {v0, v1, v2, v3}, Lcom/mopub/common/event/Event;->createEventFromDetails(Lcom/mopub/common/event/BaseEvent$Name;Lcom/mopub/common/event/BaseEvent$Category;Lcom/mopub/common/event/BaseEvent$SamplingRate;Lcom/mopub/common/event/EventDetails;)Lcom/mopub/common/event/BaseEvent;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/event/MoPubEvents;->log(Lcom/mopub/common/event/BaseEvent;)V

    .line 362
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mListener:Lcom/mopub/nativeads/NativeVideoController$Listener;

    invoke-interface {v0, p1}, Lcom/mopub/nativeads/NativeVideoController$Listener;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x4

    .line 294
    invoke-direct {p0, p1, p2}, Lcom/mopub/nativeads/NativeVideoController;->updateProgressRunnable(ZI)V

    .line 296
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mFinalFrame:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/mopub/nativeads/NativeVideoController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/nativeads/NativeVideoController;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mFinalFrame:Landroid/graphics/drawable/BitmapDrawable;

    .line 300
    :cond_0
    iget v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mPreviousExoPlayerState:I

    if-ne v0, v4, :cond_1

    if-ne p2, v6, :cond_1

    .line 301
    sget-object v0, Lcom/mopub/common/event/BaseEvent$Name;->DOWNLOAD_BUFFERING:Lcom/mopub/common/event/BaseEvent$Name;

    sget-object v1, Lcom/mopub/common/event/BaseEvent$Category;->NATIVE_VIDEO:Lcom/mopub/common/event/BaseEvent$Category;

    sget-object v2, Lcom/mopub/common/event/BaseEvent$SamplingRate;->NATIVE_VIDEO:Lcom/mopub/common/event/BaseEvent$SamplingRate;

    iget-object v3, p0, Lcom/mopub/nativeads/NativeVideoController;->mEventDetails:Lcom/mopub/common/event/EventDetails;

    invoke-static {v0, v1, v2, v3}, Lcom/mopub/common/event/Event;->createEventFromDetails(Lcom/mopub/common/event/BaseEvent$Name;Lcom/mopub/common/event/BaseEvent$Category;Lcom/mopub/common/event/BaseEvent$SamplingRate;Lcom/mopub/common/event/EventDetails;)Lcom/mopub/common/event/BaseEvent;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/event/MoPubEvents;->log(Lcom/mopub/common/event/BaseEvent;)V

    .line 308
    :cond_1
    iget-boolean v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayerStateStartedFromIdle:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mPreviousExoPlayerState:I

    if-ne v0, v6, :cond_2

    if-ne p2, v4, :cond_2

    .line 311
    sget-object v0, Lcom/mopub/common/event/BaseEvent$Name;->DOWNLOAD_VIDEO_READY:Lcom/mopub/common/event/BaseEvent$Name;

    sget-object v1, Lcom/mopub/common/event/BaseEvent$Category;->NATIVE_VIDEO:Lcom/mopub/common/event/BaseEvent$Category;

    sget-object v2, Lcom/mopub/common/event/BaseEvent$SamplingRate;->NATIVE_VIDEO:Lcom/mopub/common/event/BaseEvent$SamplingRate;

    iget-object v3, p0, Lcom/mopub/nativeads/NativeVideoController;->mEventDetails:Lcom/mopub/common/event/EventDetails;

    invoke-static {v0, v1, v2, v3}, Lcom/mopub/common/event/Event;->createEventFromDetails(Lcom/mopub/common/event/BaseEvent$Name;Lcom/mopub/common/event/BaseEvent$Category;Lcom/mopub/common/event/BaseEvent$SamplingRate;Lcom/mopub/common/event/EventDetails;)Lcom/mopub/common/event/BaseEvent;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/event/MoPubEvents;->log(Lcom/mopub/common/event/BaseEvent;)V

    .line 318
    :cond_2
    iput p2, p0, Lcom/mopub/nativeads/NativeVideoController;->mPreviousExoPlayerState:I

    .line 319
    if-ne p2, v4, :cond_5

    .line 320
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayerStateStartedFromIdle:Z

    .line 325
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mListener:Lcom/mopub/nativeads/NativeVideoController$Listener;

    if-eqz v0, :cond_4

    .line 326
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mListener:Lcom/mopub/nativeads/NativeVideoController$Listener;

    invoke-interface {v0, p1, p2}, Lcom/mopub/nativeads/NativeVideoController$Listener;->onStateChanged(ZI)V

    .line 328
    :cond_4
    return-void

    .line 321
    :cond_5
    if-ne p2, v5, :cond_3

    .line 322
    iput-boolean v5, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayerStateStartedFromIdle:Z

    goto :goto_0
.end method

.method public prepare(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 263
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 265
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mOwnerRef:Ljava/lang/ref/WeakReference;

    .line 266
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeVideoController;->clearExistingPlayer()V

    .line 267
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeVideoController;->preparePlayer()V

    .line 268
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mSurface:Landroid/view/Surface;

    invoke-direct {p0, v0}, Lcom/mopub/nativeads/NativeVideoController;->setExoSurface(Landroid/view/Surface;)V

    .line 269
    return-void
.end method

.method public release(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 284
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 286
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mOwnerRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 287
    :goto_0
    if-ne v0, p1, :cond_0

    .line 288
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeVideoController;->clearExistingPlayer()V

    .line 290
    :cond_0
    return-void

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mOwnerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public seekTo(J)V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    if-nez v0, :cond_0

    .line 337
    :goto_0
    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer/ExoPlayer;->seekTo(J)V

    .line 336
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mNativeVideoProgressRunnable:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->seekTo(J)V

    goto :goto_0
.end method

.method public setAppAudioEnabled(Z)V
    .locals 3

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mAppAudioEnabled:Z

    if-ne v0, p1, :cond_0

    .line 230
    :goto_0
    return-void

    .line 220
    :cond_0
    iput-boolean p1, p0, Lcom/mopub/nativeads/NativeVideoController;->mAppAudioEnabled:Z

    .line 222
    iget-boolean v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mAppAudioEnabled:Z

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    goto :goto_0

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_0
.end method

.method public setAudioEnabled(Z)V
    .locals 0

    .prologue
    .line 212
    iput-boolean p1, p0, Lcom/mopub/nativeads/NativeVideoController;->mAudioEnabled:Z

    .line 213
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeVideoController;->setExoAudio()V

    .line 214
    return-void
.end method

.method public setAudioVolume(F)V
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mAudioEnabled:Z

    if-nez v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 237
    :cond_0
    invoke-direct {p0, p1}, Lcom/mopub/nativeads/NativeVideoController;->setExoAudio(F)V

    goto :goto_0
.end method

.method public setListener(Lcom/mopub/nativeads/NativeVideoController$Listener;)V
    .locals 0
    .param p1    # Lcom/mopub/nativeads/NativeVideoController$Listener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 183
    iput-object p1, p0, Lcom/mopub/nativeads/NativeVideoController;->mListener:Lcom/mopub/nativeads/NativeVideoController$Listener;

    .line 184
    return-void
.end method

.method public setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .locals 0
    .param p1    # Landroid/media/AudioManager$OnAudioFocusChangeListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 191
    iput-object p1, p0, Lcom/mopub/nativeads/NativeVideoController;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 192
    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mPlayWhenReady:Z

    if-ne v0, p1, :cond_0

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    iput-boolean p1, p0, Lcom/mopub/nativeads/NativeVideoController;->mPlayWhenReady:Z

    .line 200
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeVideoController;->setExoPlayWhenReady()V

    goto :goto_0
.end method

.method public setProgressListener(Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable$ProgressListener;)V
    .locals 1
    .param p1    # Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable$ProgressListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 187
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mNativeVideoProgressRunnable:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->setProgressListener(Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable$ProgressListener;)V

    .line 188
    return-void
.end method

.method public setTextureView(Landroid/view/TextureView;)V
    .locals 2
    .param p1    # Landroid/view/TextureView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 250
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 252
    new-instance v0, Landroid/view/Surface;

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mSurface:Landroid/view/Surface;

    .line 253
    iput-object p1, p0, Lcom/mopub/nativeads/NativeVideoController;->mTextureView:Landroid/view/TextureView;

    .line 254
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mNativeVideoProgressRunnable:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;

    iget-object v1, p0, Lcom/mopub/nativeads/NativeVideoController;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->setTextureView(Landroid/view/TextureView;)V

    .line 255
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mSurface:Landroid/view/Surface;

    invoke-direct {p0, v0}, Lcom/mopub/nativeads/NativeVideoController;->setExoSurface(Landroid/view/Surface;)V

    .line 256
    return-void
.end method

.method triggerImpressionTrackers()V
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mNativeVideoProgressRunnable:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->checkImpressionTrackers(Z)V

    .line 387
    return-void
.end method
