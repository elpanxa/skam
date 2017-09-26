.class public Lcom/adsdk/sdk/video/SDKVideoView;
.super Landroid/view/SurfaceView;
.source "SDKVideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adsdk/sdk/video/SDKVideoView$OnStartListener;,
        Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;
    }
.end annotation


# static fields
.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1


# instance fields
.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mDisplayMode:I

.field private mDuration:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field public mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mMediaController:Lcom/adsdk/sdk/video/MediaController;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mOnStartListener:Lcom/adsdk/sdk/video/SDKVideoView$OnStartListener;

.field private mPlayWhenSurfaceReady:Z

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mSurfaceHeight:I

.field private mSurfaceReady:Z

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mTimeEventListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Vector",
            "<",
            "Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTimeEventRunnable:Ljava/lang/Runnable;

.field private mTimeEventThread:Ljava/lang/Thread;

.field private mTimeEventThreadDone:Landroid/os/ConditionVariable;

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 41
    iput v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I

    .line 42
    iput v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTargetState:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 61
    iput-boolean v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceReady:Z

    .line 65
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventThreadDone:Landroid/os/ConditionVariable;

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventListeners:Landroid/util/SparseArray;

    .line 257
    new-instance v0, Lcom/adsdk/sdk/video/SDKVideoView$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/SDKVideoView$1;-><init>(Lcom/adsdk/sdk/video/SDKVideoView;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 265
    new-instance v0, Lcom/adsdk/sdk/video/SDKVideoView$2;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/SDKVideoView$2;-><init>(Lcom/adsdk/sdk/video/SDKVideoView;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 297
    new-instance v0, Lcom/adsdk/sdk/video/SDKVideoView$3;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/SDKVideoView$3;-><init>(Lcom/adsdk/sdk/video/SDKVideoView;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 311
    new-instance v0, Lcom/adsdk/sdk/video/SDKVideoView$4;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/SDKVideoView$4;-><init>(Lcom/adsdk/sdk/video/SDKVideoView;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 330
    new-instance v0, Lcom/adsdk/sdk/video/SDKVideoView$5;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/SDKVideoView$5;-><init>(Lcom/adsdk/sdk/video/SDKVideoView;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 345
    new-instance v0, Lcom/adsdk/sdk/video/SDKVideoView$6;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/SDKVideoView$6;-><init>(Lcom/adsdk/sdk/video/SDKVideoView;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 352
    new-instance v0, Lcom/adsdk/sdk/video/SDKVideoView$7;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/SDKVideoView$7;-><init>(Lcom/adsdk/sdk/video/SDKVideoView;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 71
    iput-object p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mContext:Landroid/content/Context;

    .line 72
    iput p2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mWidth:I

    .line 73
    iput p3, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mHeight:I

    .line 74
    iput p4, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mDisplayMode:I

    .line 75
    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->initVideoView()V

    .line 76
    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/video/SDKVideoView;I)V
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I

    return-void
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/video/SDKVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$10(Lcom/adsdk/sdk/video/SDKVideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$11(Lcom/adsdk/sdk/video/SDKVideoView;)Landroid/media/MediaPlayer$OnInfoListener;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$12(Lcom/adsdk/sdk/video/SDKVideoView;I)V
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentBufferPercentage:I

    return-void
.end method

.method static synthetic access$13(Lcom/adsdk/sdk/video/SDKVideoView;I)V
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceWidth:I

    return-void
.end method

.method static synthetic access$14(Lcom/adsdk/sdk/video/SDKVideoView;I)V
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceHeight:I

    return-void
.end method

.method static synthetic access$15(Lcom/adsdk/sdk/video/SDKVideoView;Z)V
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceReady:Z

    return-void
.end method

.method static synthetic access$16(Lcom/adsdk/sdk/video/SDKVideoView;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mPlayWhenSurfaceReady:Z

    return v0
.end method

.method static synthetic access$17(Lcom/adsdk/sdk/video/SDKVideoView;)V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$18(Lcom/adsdk/sdk/video/SDKVideoView;Z)V
    .locals 0

    .prologue
    .line 381
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/video/SDKVideoView;->release(Z)V

    return-void
.end method

.method static synthetic access$19(Lcom/adsdk/sdk/video/SDKVideoView;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I

    return v0
.end method

.method static synthetic access$2(Lcom/adsdk/sdk/video/SDKVideoView;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$20(Lcom/adsdk/sdk/video/SDKVideoView;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventListeners:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$21(Lcom/adsdk/sdk/video/SDKVideoView;)Landroid/os/ConditionVariable;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventThreadDone:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$3(Lcom/adsdk/sdk/video/SDKVideoView;)Lcom/adsdk/sdk/video/MediaController;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    return-object v0
.end method

.method static synthetic access$4(Lcom/adsdk/sdk/video/SDKVideoView;)I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$5(Lcom/adsdk/sdk/video/SDKVideoView;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceReady:Z

    return v0
.end method

.method static synthetic access$6(Lcom/adsdk/sdk/video/SDKVideoView;)V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->setVideoDisplaySize()V

    return-void
.end method

.method static synthetic access$7(Lcom/adsdk/sdk/video/SDKVideoView;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTargetState:I

    return v0
.end method

.method static synthetic access$8(Lcom/adsdk/sdk/video/SDKVideoView;I)V
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTargetState:I

    return-void
.end method

.method static synthetic access$9(Lcom/adsdk/sdk/video/SDKVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method private attachMediaController()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    invoke-virtual {v0, p0}, Lcom/adsdk/sdk/video/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 230
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->isInPlaybackState()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/MediaController;->setEnabled(Z)V

    .line 232
    :cond_0
    return-void
.end method

.method private initVideoView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mHandler:Landroid/os/Handler;

    .line 107
    iput v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    .line 108
    iput v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    .line 109
    iput v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceWidth:I

    .line 110
    iput v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceHeight:I

    .line 111
    iput-boolean v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceReady:Z

    .line 112
    invoke-virtual {p0, v2}, Lcom/adsdk/sdk/video/SDKVideoView;->setVisibility(I)V

    .line 113
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 114
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 115
    invoke-virtual {p0, v3}, Lcom/adsdk/sdk/video/SDKVideoView;->setFocusable(Z)V

    .line 116
    invoke-virtual {p0, v3}, Lcom/adsdk/sdk/video/SDKVideoView;->setFocusableInTouchMode(Z)V

    .line 117
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->requestFocus()Z

    .line 118
    iput v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I

    .line 119
    iput v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTargetState:I

    .line 120
    return-void
.end method

.method private isInPlaybackState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 497
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openVideo()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 145
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 217
    :goto_0
    return-void

    .line 148
    :cond_0
    iput-boolean v5, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mPlayWhenSurfaceReady:Z

    .line 149
    iget-boolean v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceReady:Z

    if-nez v0, :cond_1

    .line 150
    iput-boolean v6, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mPlayWhenSurfaceReady:Z

    .line 151
    const-string v0, "Open Video not starting until surface created"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_1
    invoke-direct {p0, v5}, Lcom/adsdk/sdk/video/SDKVideoView;->release(Z)V

    .line 156
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 157
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 158
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 159
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 160
    const/4 v0, -0x1

    iput v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mDuration:I

    .line 161
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 162
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 163
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 164
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentBufferPercentage:I

    .line 166
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 167
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 168
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 169
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 170
    new-instance v0, Lcom/adsdk/sdk/video/SDKVideoView$8;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/SDKVideoView$8;-><init>(Lcom/adsdk/sdk/video/SDKVideoView;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventRunnable:Ljava/lang/Runnable;

    .line 200
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventThread:Ljava/lang/Thread;

    .line 201
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 202
    const/4 v0, 0x1

    iput v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I

    .line 203
    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->attachMediaController()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    const-string v1, "ADSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to open content: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/adsdk/sdk/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    iput v4, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I

    .line 207
    iput v4, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTargetState:I

    .line 208
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v6, v5}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 210
    :catch_1
    move-exception v0

    .line 211
    const-string v1, "ADSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to open content: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/adsdk/sdk/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 212
    iput v4, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I

    .line 213
    iput v4, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTargetState:I

    .line 214
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v6, v5}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0
.end method

.method private release(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 382
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 383
    iput v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I

    .line 384
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventThreadDone:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 386
    iput-object v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventThread:Ljava/lang/Thread;

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 389
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 390
    iput-object v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 391
    if-eqz p1, :cond_1

    .line 392
    iput v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTargetState:I

    .line 395
    :cond_1
    return-void
.end method

.method private setVideoDisplaySize()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 235
    iput v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    .line 236
    iput v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    .line 237
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    .line 239
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    .line 241
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SDKVideoView setVideoDisplaySize View Size ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") Video size ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") surface:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 242
    iget-boolean v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceReady:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    if-lez v0, :cond_2

    .line 243
    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mDisplayMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 244
    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mHeight:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mWidth:I

    iget v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    mul-int/2addr v1, v2

    if-le v0, v1, :cond_3

    .line 246
    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mWidth:I

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mHeight:I

    .line 252
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mWidth:I

    iget v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mHeight:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 254
    :cond_2
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    iget v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 255
    return-void

    .line 247
    :cond_3
    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mHeight:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mWidth:I

    iget v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 249
    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mHeight:I

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mWidth:I

    goto :goto_0
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    .line 545
    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 550
    const/4 v0, 0x0

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 555
    const/4 v0, 0x1

    return v0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventThreadDone:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 80
    return-void
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    .line 563
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 491
    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentBufferPercentage:I

    .line 493
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 467
    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 470
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 454
    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mDuration:I

    if-lez v0, :cond_0

    .line 456
    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mDuration:I

    .line 462
    :goto_0
    return v0

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mDuration:I

    .line 459
    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mDuration:I

    goto :goto_0

    .line 461
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mDuration:I

    .line 462
    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mDuration:I

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 485
    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 531
    const-string v0, "Video view detached from Window"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->i(Ljava/lang/String;)V

    .line 532
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 533
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 399
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x52

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    move v0, v1

    .line 400
    :goto_0
    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    if-eqz v0, :cond_4

    .line 401
    const/16 v0, 0x4f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x55

    if-ne p1, v0, :cond_3

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 403
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->pause()V

    .line 413
    :goto_1
    return v1

    .line 399
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 405
    :cond_2
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->start()V

    goto :goto_1

    .line 408
    :cond_3
    const/16 v0, 0x56

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 409
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->pause()V

    .line 413
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    .line 85
    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    invoke-static {v0, p1}, Lcom/adsdk/sdk/video/SDKVideoView;->getDefaultSize(II)I

    move-result v1

    .line 86
    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    invoke-static {v0, p2}, Lcom/adsdk/sdk/video/SDKVideoView;->getDefaultSize(II)I

    move-result v0

    .line 87
    iget v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    if-lez v2, :cond_0

    .line 88
    iget v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_1

    .line 90
    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    div-int/2addr v0, v2

    .line 99
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/adsdk/sdk/video/SDKVideoView;->setMeasuredDimension(II)V

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SDKVideoView onMeasure video size ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") surface:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSurfaceHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") Setting size:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 102
    return-void

    .line 91
    :cond_1
    iget v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    .line 93
    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoWidth:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mVideoHeight:I

    div-int/2addr v1, v2

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 440
    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 443
    iput v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I

    .line 444
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/MediaController;->onPause()V

    .line 449
    :cond_0
    iput v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTargetState:I

    .line 450
    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 477
    const/4 v0, 0x0

    iput v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSeekWhenPrepared:I

    .line 481
    :goto_0
    return-void

    .line 479
    :cond_0
    iput p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public setMediaController(Lcom/adsdk/sdk/video/MediaController;)V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/MediaController;->hide()V

    .line 223
    :cond_0
    iput-object p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    .line 224
    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->attachMediaController()V

    .line 225
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 506
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 510
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 514
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 502
    return-void
.end method

.method public setOnStartListener(Lcom/adsdk/sdk/video/SDKVideoView$OnStartListener;)V
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mOnStartListener:Lcom/adsdk/sdk/video/SDKVideoView$OnStartListener;

    .line 518
    return-void
.end method

.method public setOnTimeEventListener(ILcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;)V
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 522
    if-nez v0, :cond_0

    .line 523
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 524
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTimeEventListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 526
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 527
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 123
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/SDKVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 124
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 127
    iput-object p1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mUri:Landroid/net/Uri;

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mSeekWhenPrepared:I

    .line 129
    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->openVideo()V

    .line 130
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 418
    iput v3, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTargetState:I

    .line 419
    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 420
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 421
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    iget-object v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 423
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 424
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaController:Lcom/adsdk/sdk/video/MediaController;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/MediaController;->onStart()V

    .line 427
    :cond_0
    iget v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 428
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mOnStartListener:Lcom/adsdk/sdk/video/SDKVideoView$OnStartListener;

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mOnStartListener:Lcom/adsdk/sdk/video/SDKVideoView$OnStartListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/video/SDKVideoView$OnStartListener;->onVideoStart()V

    .line 432
    :cond_1
    iput v3, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I

    .line 436
    :cond_2
    :goto_0
    return-void

    .line 433
    :cond_3
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_2

    .line 434
    invoke-direct {p0}, Lcom/adsdk/sdk/video/SDKVideoView;->openVideo()V

    goto :goto_0
.end method

.method public stopPlayback()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 133
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 139
    iput v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mCurrentState:I

    .line 140
    iput v1, p0, Lcom/adsdk/sdk/video/SDKVideoView;->mTargetState:I

    .line 142
    :cond_1
    return-void
.end method
