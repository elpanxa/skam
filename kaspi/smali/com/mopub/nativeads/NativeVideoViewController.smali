.class public Lcom/mopub/nativeads/NativeVideoViewController;
.super Lcom/mopub/mobileads/BaseVideoViewController;
.source "NativeVideoViewController.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/mopub/nativeads/NativeVideoController$Listener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/NativeVideoViewController$6;,
        Lcom/mopub/nativeads/NativeVideoViewController$VideoState;
    }
.end annotation


# static fields
.field public static final NATIVE_VAST_VIDEO_CONFIG:Ljava/lang/String; = "native_vast_video_config"
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public static final NATIVE_VIDEO_ID:Ljava/lang/String; = "native_video_id"
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private mCachedVideoFrame:Landroid/graphics/Bitmap;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mEnded:Z

.field private mError:Z

.field private final mFullScreenVideoView:Lcom/mopub/nativeads/NativeFullScreenVideoView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLatestVideoControllerState:I

.field private final mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mVideoState:Lcom/mopub/nativeads/NativeVideoViewController$VideoState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 57
    new-instance v5, Lcom/mopub/nativeads/NativeFullScreenVideoView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const-string v0, "native_vast_video_config"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomCtaText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, p1, v1, v0}, Lcom/mopub/nativeads/NativeFullScreenVideoView;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/mopub/nativeads/NativeVideoViewController;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;Lcom/mopub/nativeads/NativeFullScreenVideoView;)V

    .line 62
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;Lcom/mopub/nativeads/NativeFullScreenVideoView;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/mopub/nativeads/NativeFullScreenVideoView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p4}, Lcom/mopub/mobileads/BaseVideoViewController;-><init>(Landroid/content/Context;Ljava/lang/Long;Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V

    .line 71
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 72
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 73
    invoke-static {p4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 74
    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 76
    sget-object v0, Lcom/mopub/nativeads/NativeVideoViewController$VideoState;->NONE:Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

    iput-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mVideoState:Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

    .line 77
    const-string v0, "native_vast_video_config"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/VastVideoConfig;

    iput-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    .line 78
    iput-object p5, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mFullScreenVideoView:Lcom/mopub/nativeads/NativeFullScreenVideoView;

    .line 79
    const-string v0, "native_video_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 80
    invoke-static {v0, v1}, Lcom/mopub/nativeads/NativeVideoController;->getForId(J)Lcom/mopub/nativeads/NativeVideoController;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    .line 85
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/mopub/nativeads/NativeVideoViewController;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mEnded:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mopub/nativeads/NativeVideoViewController;Z)Z
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mEnded:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mopub/nativeads/NativeVideoViewController;)Lcom/mopub/nativeads/NativeFullScreenVideoView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mFullScreenVideoView:Lcom/mopub/nativeads/NativeFullScreenVideoView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mopub/nativeads/NativeVideoViewController;)Lcom/mopub/nativeads/NativeVideoController;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mopub/nativeads/NativeVideoViewController;)Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeVideoViewController;->getBaseVideoViewControllerListener()Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lcom/mopub/nativeads/NativeVideoViewController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mCachedVideoFrame:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mopub/nativeads/NativeVideoViewController;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/mopub/nativeads/NativeVideoViewController;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private maybeChangeState()V
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mVideoState:Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

    .line 244
    iget-boolean v1, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mError:Z

    if-eqz v1, :cond_1

    .line 245
    sget-object v0, Lcom/mopub/nativeads/NativeVideoViewController$VideoState;->FAILED_LOAD:Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

    .line 262
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/NativeVideoViewController;->applyState(Lcom/mopub/nativeads/NativeVideoViewController$VideoState;)V

    .line 263
    return-void

    .line 246
    :cond_1
    iget-boolean v1, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mEnded:Z

    if-eqz v1, :cond_2

    .line 247
    sget-object v0, Lcom/mopub/nativeads/NativeVideoViewController$VideoState;->ENDED:Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

    goto :goto_0

    .line 249
    :cond_2
    iget v1, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mLatestVideoControllerState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mLatestVideoControllerState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 251
    :cond_3
    sget-object v0, Lcom/mopub/nativeads/NativeVideoViewController$VideoState;->LOADING:Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

    goto :goto_0

    .line 252
    :cond_4
    iget v1, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mLatestVideoControllerState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 253
    sget-object v0, Lcom/mopub/nativeads/NativeVideoViewController$VideoState;->BUFFERING:Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

    goto :goto_0

    .line 254
    :cond_5
    iget v1, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mLatestVideoControllerState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    .line 255
    sget-object v0, Lcom/mopub/nativeads/NativeVideoViewController$VideoState;->PLAYING:Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

    goto :goto_0

    .line 256
    :cond_6
    iget v1, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mLatestVideoControllerState:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_7

    iget v1, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mLatestVideoControllerState:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 258
    :cond_7
    sget-object v0, Lcom/mopub/nativeads/NativeVideoViewController$VideoState;->ENDED:Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

    goto :goto_0
.end method


# virtual methods
.method applyState(Lcom/mopub/nativeads/NativeVideoViewController$VideoState;)V
    .locals 1
    .param p1    # Lcom/mopub/nativeads/NativeVideoViewController$VideoState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 268
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mopub/nativeads/NativeVideoViewController;->applyState(Lcom/mopub/nativeads/NativeVideoViewController$VideoState;Z)V

    .line 269
    return-void
.end method

.method applyState(Lcom/mopub/nativeads/NativeVideoViewController$VideoState;Z)V
    .locals 4
    .param p1    # Lcom/mopub/nativeads/NativeVideoViewController$VideoState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 273
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 274
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mVideoState:Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

    if-ne v0, p1, :cond_0

    .line 317
    :goto_0
    return-void

    .line 278
    :cond_0
    sget-object v0, Lcom/mopub/nativeads/NativeVideoViewController$6;->$SwitchMap$com$mopub$nativeads$NativeVideoViewController$VideoState:[I

    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeVideoViewController$VideoState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 316
    :goto_1
    iput-object p1, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mVideoState:Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

    goto :goto_0

    .line 281
    :pswitch_0
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    invoke-virtual {v0, v3}, Lcom/mopub/nativeads/NativeVideoController;->setPlayWhenReady(Z)V

    .line 282
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    invoke-virtual {v0, v3}, Lcom/mopub/nativeads/NativeVideoController;->setAudioEnabled(Z)V

    .line 283
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    invoke-virtual {v0, v3}, Lcom/mopub/nativeads/NativeVideoController;->setAppAudioEnabled(Z)V

    .line 284
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mFullScreenVideoView:Lcom/mopub/nativeads/NativeFullScreenVideoView;

    sget-object v1, Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;->LOADING:Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setMode(Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;)V

    .line 285
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mopub/mobileads/VastVideoConfig;->handleError(Landroid/content/Context;Lcom/mopub/mobileads/VastErrorCode;I)V

    goto :goto_1

    .line 289
    :pswitch_1
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    invoke-virtual {v0, v2}, Lcom/mopub/nativeads/NativeVideoController;->setPlayWhenReady(Z)V

    .line 290
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mFullScreenVideoView:Lcom/mopub/nativeads/NativeFullScreenVideoView;

    sget-object v1, Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;->LOADING:Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setMode(Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;)V

    goto :goto_1

    .line 293
    :pswitch_2
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    invoke-virtual {v0, v2}, Lcom/mopub/nativeads/NativeVideoController;->setPlayWhenReady(Z)V

    .line 294
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    invoke-virtual {v0, v2}, Lcom/mopub/nativeads/NativeVideoController;->setAudioEnabled(Z)V

    .line 295
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    invoke-virtual {v0, v2}, Lcom/mopub/nativeads/NativeVideoController;->setAppAudioEnabled(Z)V

    .line 296
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mFullScreenVideoView:Lcom/mopub/nativeads/NativeFullScreenVideoView;

    sget-object v1, Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;->PLAYING:Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setMode(Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;)V

    goto :goto_1

    .line 299
    :pswitch_3
    if-nez p2, :cond_1

    .line 300
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    invoke-virtual {v0, v3}, Lcom/mopub/nativeads/NativeVideoController;->setAppAudioEnabled(Z)V

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    invoke-virtual {v0, v3}, Lcom/mopub/nativeads/NativeVideoController;->setPlayWhenReady(Z)V

    .line 303
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mFullScreenVideoView:Lcom/mopub/nativeads/NativeFullScreenVideoView;

    sget-object v1, Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;->PAUSED:Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setMode(Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;)V

    goto :goto_1

    .line 306
    :pswitch_4
    iput-boolean v2, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mEnded:Z

    .line 307
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    invoke-virtual {v0, v3}, Lcom/mopub/nativeads/NativeVideoController;->setAppAudioEnabled(Z)V

    .line 308
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mFullScreenVideoView:Lcom/mopub/nativeads/NativeFullScreenVideoView;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->updateProgress(I)V

    .line 309
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mFullScreenVideoView:Lcom/mopub/nativeads/NativeFullScreenVideoView;

    sget-object v1, Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;->FINISHED:Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setMode(Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;)V

    .line 310
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/mopub/mobileads/VastVideoConfig;->handleComplete(Landroid/content/Context;I)V

    goto :goto_1

    .line 278
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method getNativeFullScreenVideoView()Lcom/mopub/nativeads/NativeFullScreenVideoView;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mFullScreenVideoView:Lcom/mopub/nativeads/NativeFullScreenVideoView;

    return-object v0
.end method

.method getVideoState()Lcom/mopub/nativeads/NativeVideoViewController$VideoState;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mVideoState:Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

    return-object v0
.end method

.method protected getVideoView()Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAudioFocusChange(I)V
    .locals 2

    .prologue
    .line 227
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x2

    if-ne p1, v0, :cond_2

    .line 230
    :cond_0
    sget-object v0, Lcom/mopub/nativeads/NativeVideoViewController$VideoState;->PAUSED:Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/NativeVideoViewController;->applyState(Lcom/mopub/nativeads/NativeVideoViewController$VideoState;)V

    .line 239
    :cond_1
    :goto_0
    return-void

    .line 231
    :cond_2
    const/4 v0, -0x3

    if-ne p1, v0, :cond_3

    .line 233
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeVideoController;->setAudioVolume(F)V

    goto :goto_0

    .line 234
    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeVideoController;->setAudioVolume(F)V

    .line 237
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeVideoViewController;->maybeChangeState()V

    goto :goto_0
.end method

.method protected onBackPressed()V
    .locals 2

    .prologue
    .line 179
    sget-object v0, Lcom/mopub/nativeads/NativeVideoViewController$VideoState;->PAUSED:Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mopub/nativeads/NativeVideoViewController;->applyState(Lcom/mopub/nativeads/NativeVideoViewController$VideoState;Z)V

    .line 180
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mFullScreenVideoView:Lcom/mopub/nativeads/NativeFullScreenVideoView;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setOrientation(I)V

    .line 175
    return-void
.end method

.method protected onCreate()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 96
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mFullScreenVideoView:Lcom/mopub/nativeads/NativeFullScreenVideoView;

    invoke-virtual {v0, p0}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 97
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mFullScreenVideoView:Lcom/mopub/nativeads/NativeFullScreenVideoView;

    sget-object v1, Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;->LOADING:Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setMode(Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;)V

    .line 98
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mFullScreenVideoView:Lcom/mopub/nativeads/NativeFullScreenVideoView;

    new-instance v1, Lcom/mopub/nativeads/NativeVideoViewController$1;

    invoke-direct {v1, p0}, Lcom/mopub/nativeads/NativeVideoViewController$1;-><init>(Lcom/mopub/nativeads/NativeVideoViewController;)V

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setPlayControlClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mFullScreenVideoView:Lcom/mopub/nativeads/NativeFullScreenVideoView;

    new-instance v1, Lcom/mopub/nativeads/NativeVideoViewController$2;

    invoke-direct {v1, p0}, Lcom/mopub/nativeads/NativeVideoViewController$2;-><init>(Lcom/mopub/nativeads/NativeVideoViewController;)V

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setCloseControlListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mFullScreenVideoView:Lcom/mopub/nativeads/NativeFullScreenVideoView;

    new-instance v1, Lcom/mopub/nativeads/NativeVideoViewController$3;

    invoke-direct {v1, p0}, Lcom/mopub/nativeads/NativeVideoViewController$3;-><init>(Lcom/mopub/nativeads/NativeVideoViewController;)V

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setCtaClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mFullScreenVideoView:Lcom/mopub/nativeads/NativeFullScreenVideoView;

    new-instance v1, Lcom/mopub/nativeads/NativeVideoViewController$4;

    invoke-direct {v1, p0}, Lcom/mopub/nativeads/NativeVideoViewController$4;-><init>(Lcom/mopub/nativeads/NativeVideoViewController;)V

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setPrivacyInformationClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 140
    iget-object v1, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mFullScreenVideoView:Lcom/mopub/nativeads/NativeFullScreenVideoView;

    invoke-virtual {v1, v0}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeVideoViewController;->getBaseVideoViewControllerListener()Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mFullScreenVideoView:Lcom/mopub/nativeads/NativeFullScreenVideoView;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;->onSetContentView(Landroid/view/View;)V

    .line 143
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    new-instance v1, Lcom/mopub/nativeads/NativeVideoViewController$5;

    invoke-direct {v1, p0}, Lcom/mopub/nativeads/NativeVideoViewController$5;-><init>(Lcom/mopub/nativeads/NativeVideoViewController;)V

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeVideoController;->setProgressListener(Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable$ProgressListener;)V

    .line 151
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 220
    const-string v0, "Error playing back video."

    invoke-static {v0, p1}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mError:Z

    .line 222
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeVideoViewController;->maybeChangeState()V

    .line 223
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mCachedVideoFrame:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mFullScreenVideoView:Lcom/mopub/nativeads/NativeFullScreenVideoView;

    iget-object v1, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mCachedVideoFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setCachedVideoFrame(Landroid/graphics/Bitmap;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    invoke-virtual {v0, p0}, Lcom/mopub/nativeads/NativeVideoController;->prepare(Ljava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    invoke-virtual {v0, p0}, Lcom/mopub/nativeads/NativeVideoController;->setListener(Lcom/mopub/nativeads/NativeVideoController$Listener;)V

    .line 160
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    invoke-virtual {v0, p0}, Lcom/mopub/nativeads/NativeVideoController;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 161
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 170
    return-void
.end method

.method public onStateChanged(ZI)V
    .locals 0

    .prologue
    .line 214
    iput p2, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mLatestVideoControllerState:I

    .line 215
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeVideoViewController;->maybeChangeState()V

    .line 216
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 184
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    iget-object v2, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mFullScreenVideoView:Lcom/mopub/nativeads/NativeFullScreenVideoView;

    invoke-virtual {v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->getTextureView()Landroid/view/TextureView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mopub/nativeads/NativeVideoController;->setTextureView(Landroid/view/TextureView;)V

    .line 186
    iget-boolean v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mEnded:Z

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    iget-object v2, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    invoke-virtual {v2}, Lcom/mopub/nativeads/NativeVideoController;->getCurrentPosition()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/mopub/nativeads/NativeVideoController;->seekTo(J)V

    .line 189
    :cond_0
    iget-object v2, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    iget-boolean v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mEnded:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/mopub/nativeads/NativeVideoController;->setPlayWhenReady(Z)V

    .line 190
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeVideoController;->getCurrentPosition()J

    move-result-wide v2

    .line 191
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeVideoController;->getDuration()J

    move-result-wide v4

    .line 192
    sub-long v2, v4, v2

    .line 193
    const-wide/16 v4, 0x2ee

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 194
    iput-boolean v1, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mEnded:Z

    .line 195
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeVideoViewController;->maybeChangeState()V

    .line 197
    :cond_1
    return-void

    .line 189
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoViewController;->mNativeVideoController:Lcom/mopub/nativeads/NativeVideoController;

    invoke-virtual {v0, p0}, Lcom/mopub/nativeads/NativeVideoController;->release(Ljava/lang/Object;)V

    .line 205
    sget-object v0, Lcom/mopub/nativeads/NativeVideoViewController$VideoState;->PAUSED:Lcom/mopub/nativeads/NativeVideoViewController$VideoState;

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/NativeVideoViewController;->applyState(Lcom/mopub/nativeads/NativeVideoViewController$VideoState;)V

    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 210
    return-void
.end method
