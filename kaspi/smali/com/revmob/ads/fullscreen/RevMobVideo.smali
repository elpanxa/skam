.class public Lcom/revmob/ads/fullscreen/RevMobVideo;
.super Landroid/widget/RelativeLayout;
.source "RevMobVideo.java"

# interfaces
.implements Lcom/revmob/ads/fullscreen/internal/FullscreenView;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xa
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/revmob/ads/fullscreen/RevMobVideo$DownloadImageTask;
    }
.end annotation


# static fields
.field private static buttonSize:I

.field private static padding:I


# instance fields
.field public final FORMAT:Ljava/lang/String;

.field public blackBackground:Landroid/widget/ImageView;

.field cPosition:I

.field private changedVideoBackground:Z

.field private chosenVideoOrientation:I

.field public clicked:Z

.field public closed:Z

.field private completedVideo:Z

.field public countdownTimer:Landroid/widget/TextView;

.field public data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

.field private dm:Landroid/app/DownloadManager;

.field private enqueue:J

.field private fatherLayout:Landroid/widget/RelativeLayout;

.field private finalFrame:Landroid/graphics/Bitmap;

.field private firstQuartile:F

.field private frameLayout:Landroid/widget/FrameLayout;

.field protected fullScreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

.field private fullscreenImageViewForVideo:Landroid/widget/ImageView;

.field public handler:Landroid/os/Handler;

.field public imageCloseButton:Landroid/widget/ImageView;

.field public isTherePostRoll:Ljava/lang/Boolean;

.field public layout:Landroid/widget/RelativeLayout;

.field public mediaPlayer:Lcom/revmob/internal/RevMobVideoPlayer;

.field private midPoint:F

.field public muteButton:Landroid/widget/ImageView;

.field private passedFirstQuartile:Z

.field private passedMidPoint:Z

.field private passedThirdQuartile:Z

.field public pauseButton:Landroid/widget/ImageView;

.field private pausedVideo:Z

.field private postedFullScreenLandscape:Z

.field private postedFullScreenPortrait:Z

.field private previousOrientation:I

.field private relativeLayout:Landroid/widget/RelativeLayout;

.field relativePosition:D

.field public replayButton:Landroid/widget/ImageView;

.field public replayClicked:Z

.field private resumedVideo:Z

.field private retriever:Landroid/media/MediaMetadataRetriever;

.field public revmobLogo:Landroid/widget/ImageView;

.field public rewarded:Ljava/lang/Boolean;

.field public runnable:Ljava/lang/Runnable;

.field public skipTime:D

.field public started:Z

.field private thirdQuartile:F

.field public timerHandler:Landroid/os/Handler;

.field private timerRunnable:Ljava/lang/Runnable;

.field public video:Landroid/widget/VideoView;

.field public videoCloseButton:Landroid/widget/ImageView;

.field private videoDuration:I

.field public videoFile:Ljava/io/File;

.field public videoMp:Landroid/media/MediaPlayer;

.field public videoVolume:F


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/revmob/ads/fullscreen/client/FullscreenData;Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;Lcom/revmob/ads/fullscreen/FullscreenActivity;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0xa
    .end annotation

    .prologue
    const/4 v7, 0x6

    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 100
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 64
    iput-boolean v5, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->clicked:Z

    .line 65
    iput-boolean v5, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->closed:Z

    .line 66
    iput-boolean v5, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->started:Z

    .line 67
    const-string v0, "%02d"

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->FORMAT:Ljava/lang/String;

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->handler:Landroid/os/Handler;

    .line 90
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->rewarded:Ljava/lang/Boolean;

    .line 91
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->isTherePostRoll:Ljava/lang/Boolean;

    .line 92
    iput-boolean v5, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->replayClicked:Z

    .line 94
    iput v5, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->cPosition:I

    .line 95
    iput-wide v2, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->relativePosition:D

    .line 101
    iput-object p2, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    .line 102
    iput-object p4, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fullScreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    .line 103
    invoke-virtual {p2}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getPostRoll()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->isTherePostRoll:Ljava/lang/Boolean;

    .line 107
    :cond_0
    invoke-virtual {p2}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getVideoSkipTime()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    .line 108
    invoke-virtual {p2}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getVideoSkipTime()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->skipTime:D

    .line 114
    :goto_0
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fullScreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->previousOrientation:I

    .line 116
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fullScreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    iget-boolean v0, v0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->followAppOrientation:Z

    if-nez v0, :cond_1

    .line 117
    invoke-virtual {p2}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getVideoOrientation()I

    move-result v0

    .line 118
    if-ne v0, v4, :cond_3

    .line 119
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fullScreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->setRequestedOrientation(I)V

    .line 120
    iput v4, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->chosenVideoOrientation:I

    .line 128
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fullScreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->isRewarded:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->rewarded:Ljava/lang/Boolean;

    .line 129
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 130
    invoke-virtual {p0, v0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iput-object p0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->relativeLayout:Landroid/widget/RelativeLayout;

    .line 133
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x28

    invoke-static {v0, v1}, Lcom/revmob/internal/AndroidHelper;->dipToPixels(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->buttonSize:I

    .line 134
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/revmob/internal/AndroidHelper;->dipToPixels(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->padding:I

    .line 137
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fullScreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->getContext()Landroid/content/Context;

    invoke-virtual {v0, v5}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 139
    const-string v1, "RevMobVideoVolume"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->videoVolume:F

    .line 141
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fatherLayout:Landroid/widget/RelativeLayout;

    .line 142
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 143
    iget-object v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fatherLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fatherLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 149
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/revmob/ads/fullscreen/RevMobVideo;->buttonSize:I

    sget v2, Lcom/revmob/ads/fullscreen/RevMobVideo;->buttonSize:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 150
    sget v1, Lcom/revmob/ads/fullscreen/RevMobVideo;->padding:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 151
    sget v1, Lcom/revmob/ads/fullscreen/RevMobVideo;->padding:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 152
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 153
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 157
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    sget v2, Lcom/revmob/ads/fullscreen/RevMobVideo;->buttonSize:I

    sget v3, Lcom/revmob/ads/fullscreen/RevMobVideo;->buttonSize:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 158
    sget v2, Lcom/revmob/ads/fullscreen/RevMobVideo;->padding:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 159
    sget v2, Lcom/revmob/ads/fullscreen/RevMobVideo;->padding:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 160
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 161
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 166
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x1e

    invoke-static {v2, v3}, Lcom/revmob/internal/AndroidHelper;->dipToPixels(Landroid/content/Context;I)I

    move-result v2

    .line 167
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x1e

    invoke-static {v3, v4}, Lcom/revmob/internal/AndroidHelper;->dipToPixels(Landroid/content/Context;I)I

    move-result v3

    .line 170
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 171
    sget v2, Lcom/revmob/ads/fullscreen/RevMobVideo;->padding:I

    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 172
    sget v2, Lcom/revmob/ads/fullscreen/RevMobVideo;->padding:I

    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 173
    const/16 v2, 0xb

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 174
    const/16 v2, 0xc

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 179
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->createVideoView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/revmob/ads/fullscreen/RevMobVideo;->addView(Landroid/view/View;)V

    .line 180
    invoke-direct {p0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->addBlackBackground()V

    .line 181
    iget-object v2, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fatherLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->createCountDownTimer()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    iget-object v2, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fatherLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->createMuteButton()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 183
    iget-object v2, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fatherLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p3}, Lcom/revmob/ads/fullscreen/RevMobVideo;->createImageAdView(Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;)Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    iget-object v2, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fatherLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->createVideoCloseButton()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fatherLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->createReplayButton()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fatherLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->createRevMobLogo()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 187
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fatherLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->addView(Landroid/view/View;)V

    .line 189
    iput-boolean v5, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->postedFullScreenPortrait:Z

    .line 190
    iput-boolean v5, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->postedFullScreenLandscape:Z

    .line 192
    invoke-direct {p0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->initializeBooelans()V

    .line 194
    return-void

    .line 110
    :cond_2
    iput-wide v2, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->skipTime:D

    goto/16 :goto_0

    .line 123
    :cond_3
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fullScreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    invoke-virtual {v0, v7}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->setRequestedOrientation(I)V

    .line 124
    const/4 v0, 0x2

    iput v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->chosenVideoOrientation:I

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/revmob/ads/fullscreen/RevMobVideo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/revmob/ads/fullscreen/RevMobVideo;->postEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/revmob/ads/fullscreen/RevMobVideo;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->execTimer()V

    return-void
.end method

.method static synthetic access$200(Lcom/revmob/ads/fullscreen/RevMobVideo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/revmob/ads/fullscreen/RevMobVideo;->getEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/revmob/ads/fullscreen/RevMobVideo;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->timerRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/revmob/ads/fullscreen/RevMobVideo;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->onVideoFinish()V

    return-void
.end method

.method private addBlackBackground()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 198
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 202
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->blackBackground:Landroid/widget/ImageView;

    .line 203
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 204
    iget-object v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->blackBackground:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->blackBackground:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->blackBackground:Landroid/widget/ImageView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 208
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->blackBackground:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->addView(Landroid/view/View;)V

    .line 209
    return-void
.end method

.method private createCountDownTimer()Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x6

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, -0x1

    .line 280
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->countdownTimer:Landroid/widget/TextView;

    .line 282
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/revmob/internal/AndroidHelper;->dipToPixels(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    .line 283
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v1, v2}, Lcom/revmob/internal/AndroidHelper;->dipToPixels(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    .line 284
    const/16 v2, 0x8

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v3, 0x2

    aput v0, v2, v3

    aput v1, v2, v5

    aput v0, v2, v6

    const/4 v3, 0x5

    aput v1, v2, v3

    aput v0, v2, v7

    const/4 v0, 0x7

    aput v1, v2, v0

    .line 285
    new-instance v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v0, v2, v8, v8}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 287
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 289
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 290
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 291
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 292
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/revmob/internal/AndroidHelper;->dipToPixels(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 294
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->countdownTimer:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 295
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->countdownTimer:Landroid/widget/TextView;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 296
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->countdownTimer:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 297
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->countdownTimer:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 298
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->countdownTimer:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->countdownTimer:Landroid/widget/TextView;

    return-object v0
.end method

.method private createImageAdView(Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;)Landroid/view/View;
    .locals 2

    .prologue
    .line 549
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fullscreenImageViewForVideo:Landroid/widget/ImageView;

    .line 550
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fullscreenImageViewForVideo:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 551
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->update()V

    .line 552
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fullscreenImageViewForVideo:Landroid/widget/ImageView;

    new-instance v1, Lcom/revmob/ads/fullscreen/RevMobVideo$8;

    invoke-direct {v1, p0, p1}, Lcom/revmob/ads/fullscreen/RevMobVideo$8;-><init>(Lcom/revmob/ads/fullscreen/RevMobVideo;Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 567
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fullscreenImageViewForVideo:Landroid/widget/ImageView;

    return-object v0
.end method

.method private createMuteButton()Landroid/view/View;
    .locals 3

    .prologue
    .line 587
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->muteButton:Landroid/widget/ImageView;

    .line 588
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/revmob/ads/fullscreen/RevMobVideo;->buttonSize:I

    sget v2, Lcom/revmob/ads/fullscreen/RevMobVideo;->buttonSize:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 589
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 590
    sget v1, Lcom/revmob/ads/fullscreen/RevMobVideo;->padding:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 591
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 592
    sget v1, Lcom/revmob/ads/fullscreen/RevMobVideo;->padding:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 595
    iget-object v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->muteButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 596
    iget v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->videoVolume:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->muteButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v1}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getSoundOn()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 601
    :goto_0
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->muteButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 603
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->muteButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/revmob/ads/fullscreen/RevMobVideo$10;

    invoke-direct {v1, p0}, Lcom/revmob/ads/fullscreen/RevMobVideo$10;-><init>(Lcom/revmob/ads/fullscreen/RevMobVideo;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 629
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->muteButton:Landroid/widget/ImageView;

    return-object v0

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->muteButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v1}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getSoundOff()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private createReplayButton()Landroid/view/View;
    .locals 2

    .prologue
    .line 573
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->replayButton:Landroid/widget/ImageView;

    .line 574
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->replayButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v1}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getReplayButton()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 575
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->replayButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 576
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->replayButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/revmob/ads/fullscreen/RevMobVideo$9;

    invoke-direct {v1, p0}, Lcom/revmob/ads/fullscreen/RevMobVideo$9;-><init>(Lcom/revmob/ads/fullscreen/RevMobVideo;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 583
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->replayButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method private createRevMobLogo()Landroid/view/View;
    .locals 2

    .prologue
    .line 215
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->revmobLogo:Landroid/widget/ImageView;

    .line 216
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->revmobLogo:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->revmobLogo:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v1}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getRevmobLogo()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 218
    invoke-direct {p0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->putRevMobLogoUp()V

    .line 220
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->revmobLogo:Landroid/widget/ImageView;

    return-object v0
.end method

.method private createVideoCloseButton()Landroid/view/View;
    .locals 2

    .prologue
    .line 239
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->videoCloseButton:Landroid/widget/ImageView;

    .line 240
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->videoCloseButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->videoCloseButton:Landroid/widget/ImageView;

    invoke-static {}, Lcom/revmob/ads/internal/StaticAssets;->getCloseButton()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 244
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->videoCloseButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/revmob/ads/fullscreen/RevMobVideo$1;

    invoke-direct {v1, p0}, Lcom/revmob/ads/fullscreen/RevMobVideo$1;-><init>(Lcom/revmob/ads/fullscreen/RevMobVideo;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->videoCloseButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method private execTimer()V
    .locals 7

    .prologue
    const/16 v6, 0x64

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 470
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->video:Landroid/widget/VideoView;

    if-nez v0, :cond_1

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->video:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->cPosition:I

    .line 475
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->video:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    if-le v0, v6, :cond_3

    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->changedVideoBackground:Z

    if-nez v0, :cond_3

    .line 476
    iput-boolean v5, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->changedVideoBackground:Z

    .line 477
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->blackBackground:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 478
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->video:Landroid/widget/VideoView;

    invoke-virtual {v0, v4}, Landroid/widget/VideoView;->setBackgroundColor(I)V

    .line 479
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->rewarded:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 480
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fullScreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->publisherListener:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobRewardedVideoStarted()V

    .line 481
    :cond_2
    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->replayClicked:Z

    if-nez v0, :cond_3

    .line 482
    invoke-static {}, Lcom/revmob/client/RevMobClient;->getInstance()Lcom/revmob/client/RevMobClient;

    move-result-object v0

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v1}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getImpressionUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fullScreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    invoke-static {v2}, Lcom/revmob/android/RevMobContext;->toPayload(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/revmob/client/RevMobClient;->reportImpression(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v0, "impressions"

    invoke-direct {p0, v0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->getEvent(Ljava/lang/String;)V

    .line 484
    const-string v0, "creativeView"

    invoke-direct {p0, v0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->postEvent(Ljava/lang/String;)V

    .line 488
    :cond_3
    iget v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->cPosition:I

    int-to-double v0, v0

    iget v2, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->videoDuration:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->relativePosition:D

    .line 491
    iget-wide v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->relativePosition:D

    iget-wide v2, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->skipTime:D

    cmpl-double v0, v0, v2

    if-gez v0, :cond_4

    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->replayClicked:Z

    if-eqz v0, :cond_6

    .line 492
    :cond_4
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->rewarded:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->replayClicked:Z

    if-eqz v0, :cond_6

    .line 493
    :cond_5
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fullScreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    iput-boolean v4, v0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->shouldNotSkipVideo:Z

    .line 494
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->videoCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 495
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->videoCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestFocus()Z

    .line 496
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fatherLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 499
    :cond_6
    iget v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->cPosition:I

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v1}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getTimeLeftTime()I

    move-result v1

    if-lt v0, v1, :cond_7

    .line 500
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->countdownTimer:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 501
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->countdownTimer:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 502
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fatherLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 505
    :cond_7
    iget v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->cPosition:I

    int-to-float v0, v0

    iget v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->firstQuartile:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_8

    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->passedFirstQuartile:Z

    if-nez v0, :cond_8

    .line 506
    iput-boolean v5, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->passedFirstQuartile:Z

    .line 507
    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->replayClicked:Z

    if-nez v0, :cond_8

    .line 508
    const-string v0, "firstQuartile"

    invoke-direct {p0, v0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->postEvent(Ljava/lang/String;)V

    .line 511
    :cond_8
    iget v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->cPosition:I

    int-to-float v0, v0

    iget v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->midPoint:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_9

    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->passedMidPoint:Z

    if-nez v0, :cond_9

    .line 512
    iput-boolean v5, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->passedMidPoint:Z

    .line 513
    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->replayClicked:Z

    if-nez v0, :cond_9

    .line 514
    const-string v0, "midpoint"

    invoke-direct {p0, v0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->postEvent(Ljava/lang/String;)V

    .line 517
    :cond_9
    iget v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->cPosition:I

    int-to-float v0, v0

    iget v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->thirdQuartile:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_a

    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->passedThirdQuartile:Z

    if-nez v0, :cond_a

    .line 518
    iput-boolean v5, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->passedThirdQuartile:Z

    .line 519
    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->replayClicked:Z

    if-nez v0, :cond_a

    .line 520
    const-string v0, "thirdQuartile"

    invoke-direct {p0, v0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->postEvent(Ljava/lang/String;)V

    .line 524
    :cond_a
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 525
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getVideoEnd()I

    move-result v0

    iget v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->videoDuration:I

    if-gt v0, v1, :cond_c

    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->closed:Z

    if-nez v0, :cond_c

    .line 526
    iget v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->cPosition:I

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v1}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getVideoEnd()I

    move-result v1

    if-ge v0, v1, :cond_b

    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getVideoEnd()I

    move-result v0

    iget v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->cPosition:I

    sub-int/2addr v0, v1

    if-gt v0, v6, :cond_b

    .line 527
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getAdImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0, v5}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getAdImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 528
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->blackBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 529
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->blackBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 532
    :cond_b
    iget v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->cPosition:I

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v1}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getVideoEnd()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 533
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 534
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->blackBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 535
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->video:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 536
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->removeHandlerCallbacks()V

    .line 537
    invoke-direct {p0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->onVideoFinish()V

    goto/16 :goto_0

    .line 540
    :cond_c
    iget v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->cPosition:I

    iget v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->videoDuration:I

    if-ge v0, v1, :cond_d

    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->clicked:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->closed:Z

    if-eqz v0, :cond_0

    .line 541
    :cond_d
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->removeHandlerCallbacks()V

    goto/16 :goto_0
.end method

.method private getEvent(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 776
    new-instance v0, Lcom/revmob/ads/fullscreen/RevMobVideo$12;

    invoke-direct {v0, p0, p1}, Lcom/revmob/ads/fullscreen/RevMobVideo$12;-><init>(Lcom/revmob/ads/fullscreen/RevMobVideo;Ljava/lang/String;)V

    .line 795
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 797
    return-void
.end method

.method private initializeBooelans()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 641
    iput-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->passedFirstQuartile:Z

    .line 642
    iput-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->passedMidPoint:Z

    .line 643
    iput-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->passedThirdQuartile:Z

    .line 644
    iput-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->completedVideo:Z

    .line 645
    iput-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->pausedVideo:Z

    .line 646
    iput-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->resumedVideo:Z

    .line 648
    return-void
.end method

.method private onVideoFinish()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 672
    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->replayClicked:Z

    if-nez v0, :cond_0

    .line 673
    const-string v0, "complete"

    invoke-direct {p0, v0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->postEvent(Ljava/lang/String;)V

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fullScreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->publisherListener:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_1

    .line 676
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->rewarded:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 677
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fullScreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->publisherListener:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobVideoFinished()V

    .line 683
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->cancelCountDownTimer()V

    .line 684
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fullscreenImageViewForVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 685
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->videoCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 686
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->video:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 687
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->countdownTimer:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 688
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->muteButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 689
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->replayButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 690
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->revmobLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 691
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fatherLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->bringToFront()V

    .line 693
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fullscreenImageViewForVideo:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 694
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fullScreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->getRequestedOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 695
    invoke-direct {p0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->postPortrait()V

    .line 701
    :cond_2
    :goto_1
    return-void

    .line 679
    :cond_3
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fullScreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->publisherListener:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobRewardedVideoFinished()V

    goto :goto_0

    .line 697
    :cond_4
    invoke-direct {p0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->postLandscape()V

    goto :goto_1
.end method

.method private postEvent(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 751
    new-instance v0, Lcom/revmob/ads/fullscreen/RevMobVideo$11;

    invoke-direct {v0, p0, p1}, Lcom/revmob/ads/fullscreen/RevMobVideo$11;-><init>(Lcom/revmob/ads/fullscreen/RevMobVideo;Ljava/lang/String;)V

    .line 772
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 773
    return-void
.end method

.method private postLandscape()V
    .locals 1

    .prologue
    .line 741
    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->postedFullScreenLandscape:Z

    if-nez v0, :cond_0

    .line 742
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->postedFullScreenLandscape:Z

    .line 743
    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->replayClicked:Z

    if-nez v0, :cond_0

    .line 744
    const-string v0, "fullscreenLandscapeView"

    invoke-direct {p0, v0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->postEvent(Ljava/lang/String;)V

    .line 747
    :cond_0
    return-void
.end method

.method private postPortrait()V
    .locals 1

    .prologue
    .line 732
    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->postedFullScreenPortrait:Z

    if-nez v0, :cond_0

    .line 733
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->postedFullScreenPortrait:Z

    .line 734
    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->replayClicked:Z

    if-nez v0, :cond_0

    .line 735
    const-string v0, "fullscreenPortraitView"

    invoke-direct {p0, v0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->postEvent(Ljava/lang/String;)V

    .line 738
    :cond_0
    return-void
.end method

.method private putRevMobLogoUp()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 226
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x64

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 227
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 228
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 229
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 230
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 232
    iget-object v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->revmobLogo:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    return-void
.end method


# virtual methods
.method public cancelCountDownTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 633
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->timerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->timerRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->timerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->timerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 635
    iput-object v2, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->timerHandler:Landroid/os/Handler;

    .line 636
    iput-object v2, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->timerRunnable:Ljava/lang/Runnable;

    .line 638
    :cond_0
    return-void
.end method

.method public configureVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 326
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->video:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v1}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getVideoFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->video:Landroid/widget/VideoView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setBackgroundColor(I)V

    .line 328
    iput-boolean v2, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->changedVideoBackground:Z

    .line 329
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->video:Landroid/widget/VideoView;

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 330
    new-instance v0, Lcom/revmob/ads/fullscreen/RevMobVideo$2;

    invoke-direct {v0, p0}, Lcom/revmob/ads/fullscreen/RevMobVideo$2;-><init>(Lcom/revmob/ads/fullscreen/RevMobVideo;)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->runnable:Ljava/lang/Runnable;

    .line 335
    new-instance v0, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fullScreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    invoke-direct {v0, v1}, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;-><init>(Lcom/revmob/ads/fullscreen/FullscreenActivity;)V

    .line 337
    iget-object v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->rewarded:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->video:Landroid/widget/VideoView;

    new-instance v2, Lcom/revmob/ads/fullscreen/RevMobVideo$3;

    invoke-direct {v2, p0, v0}, Lcom/revmob/ads/fullscreen/RevMobVideo$3;-><init>(Lcom/revmob/ads/fullscreen/RevMobVideo;Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->video:Landroid/widget/VideoView;

    new-instance v1, Lcom/revmob/ads/fullscreen/RevMobVideo$4;

    invoke-direct {v1, p0}, Lcom/revmob/ads/fullscreen/RevMobVideo$4;-><init>(Lcom/revmob/ads/fullscreen/RevMobVideo;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 384
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->video:Landroid/widget/VideoView;

    new-instance v1, Lcom/revmob/ads/fullscreen/RevMobVideo$5;

    invoke-direct {v1, p0}, Lcom/revmob/ads/fullscreen/RevMobVideo$5;-><init>(Lcom/revmob/ads/fullscreen/RevMobVideo;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 390
    return-void
.end method

.method public configureVideoDurationMethods()I
    .locals 4

    .prologue
    const/high16 v3, 0x40800000    # 4.0f

    .line 422
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->video:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->videoDuration:I

    .line 424
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fullScreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->getStopPosition()I

    move-result v0

    if-nez v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getVideoEnd()I

    move-result v0

    iget v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->videoDuration:I

    if-gt v0, v1, :cond_0

    .line 427
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getVideoEnd()I

    move-result v0

    .line 431
    :goto_0
    int-to-float v1, v0

    div-float/2addr v1, v3

    iput v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->firstQuartile:F

    .line 432
    int-to-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->midPoint:F

    .line 433
    int-to-float v1, v0

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->thirdQuartile:F

    .line 448
    :goto_1
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->timerHandler:Landroid/os/Handler;

    .line 449
    new-instance v1, Lcom/revmob/ads/fullscreen/RevMobVideo$7;

    invoke-direct {v1, p0, v0}, Lcom/revmob/ads/fullscreen/RevMobVideo$7;-><init>(Lcom/revmob/ads/fullscreen/RevMobVideo;I)V

    iput-object v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->timerRunnable:Ljava/lang/Runnable;

    .line 465
    return v0

    .line 429
    :cond_0
    iget v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->videoDuration:I

    goto :goto_0

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getVideoEnd()I

    move-result v0

    iget v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->videoDuration:I

    if-gt v0, v1, :cond_2

    .line 438
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getVideoEnd()I

    move-result v0

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fullScreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    invoke-virtual {v1}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->getStopPosition()I

    move-result v1

    sub-int/2addr v0, v1

    .line 443
    :goto_2
    iget-object v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->video:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fullScreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    invoke-virtual {v2}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->getStopPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->seekTo(I)V

    .line 444
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->changedVideoBackground:Z

    .line 445
    iget-object v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fullScreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->setStopPosition(I)V

    goto :goto_1

    .line 440
    :cond_2
    iget v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->videoDuration:I

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fullScreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    invoke-virtual {v1}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->getStopPosition()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_2
.end method

.method public createVideoView()Landroid/view/View;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 312
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 313
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 315
    new-instance v1, Landroid/widget/VideoView;

    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->video:Landroid/widget/VideoView;

    .line 316
    iget-object v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->video:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->video:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 318
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->configureVideo()V

    .line 321
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->video:Landroid/widget/VideoView;

    return-object v0
.end method

.method public releaseAllResources()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 718
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->cancelCountDownTimer()V

    .line 719
    iput-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->countdownTimer:Landroid/widget/TextView;

    .line 720
    iput-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->videoCloseButton:Landroid/widget/ImageView;

    .line 721
    iput-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->muteButton:Landroid/widget/ImageView;

    .line 722
    iput-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->video:Landroid/widget/VideoView;

    .line 723
    iput-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fullscreenImageViewForVideo:Landroid/widget/ImageView;

    .line 724
    iput-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->replayButton:Landroid/widget/ImageView;

    .line 725
    iput-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->revmobLogo:Landroid/widget/ImageView;

    .line 726
    iput-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->videoMp:Landroid/media/MediaPlayer;

    .line 727
    iput-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->blackBackground:Landroid/widget/ImageView;

    .line 728
    iput-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fatherLayout:Landroid/widget/RelativeLayout;

    .line 729
    return-void
.end method

.method public removeHandlerCallbacks()V
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 417
    :cond_0
    return-void
.end method

.method public replayVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 704
    const-string v0, "replayVideo"

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->d(Ljava/lang/String;)V

    .line 705
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->replayClicked:Z

    .line 706
    iput-boolean v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->started:Z

    .line 707
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->replayButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 708
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fullscreenImageViewForVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 709
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->revmobLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 710
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->muteButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 711
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->countdownTimer:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 712
    iput-boolean v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->changedVideoBackground:Z

    .line 713
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->configureVideo()V

    .line 715
    return-void
.end method

.method public update()V
    .locals 3

    .prologue
    .line 652
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fullscreenImageViewForVideo:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 653
    iget v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->chosenVideoOrientation:I

    .line 655
    iget-object v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fullscreenImageViewForVideo:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v2, v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getAdImage(I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 656
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 657
    invoke-direct {p0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->postPortrait()V

    .line 662
    :goto_0
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->isStaticMultiOrientationFullscreen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 663
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fullscreenImageViewForVideo:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 668
    :cond_0
    :goto_1
    return-void

    .line 659
    :cond_1
    invoke-direct {p0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->postLandscape()V

    goto :goto_0

    .line 665
    :cond_2
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fullscreenImageViewForVideo:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1
.end method

.method public videoCompleted()V
    .locals 4

    .prologue
    .line 394
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fullScreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->abandonAudioFocus()V

    .line 395
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 396
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->video:Landroid/widget/VideoView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setBackgroundColor(I)V

    .line 397
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->blackBackground:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo;->blackBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 399
    new-instance v0, Lcom/revmob/ads/fullscreen/RevMobVideo$6;

    invoke-direct {v0, p0}, Lcom/revmob/ads/fullscreen/RevMobVideo$6;-><init>(Lcom/revmob/ads/fullscreen/RevMobVideo;)V

    .line 410
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 411
    return-void
.end method
