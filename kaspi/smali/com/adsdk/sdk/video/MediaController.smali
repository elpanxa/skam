.class public Lcom/adsdk/sdk/video/MediaController;
.super Landroid/widget/FrameLayout;
.source "MediaController.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adsdk/sdk/video/MediaController$OnPauseListener;,
        Lcom/adsdk/sdk/video/MediaController$OnReplayListener;,
        Lcom/adsdk/sdk/video/MediaController$OnUnpauseListener;,
        Lcom/adsdk/sdk/video/MediaController$ResourceHandler;
    }
.end annotation


# static fields
.field private static final SHOW_PROGRESS:I = 0x2


# instance fields
.field private mContext:Landroid/content/Context;

.field mFormatBuilder:Ljava/lang/StringBuilder;

.field mFormatter:Ljava/util/Formatter;

.field private mHandler:Lcom/adsdk/sdk/video/MediaController$ResourceHandler;

.field private mLeftTime:Landroid/widget/TextView;

.field private mOnPauseListener:Lcom/adsdk/sdk/video/MediaController$OnPauseListener;

.field private mOnReplayListener:Lcom/adsdk/sdk/video/MediaController$OnReplayListener;

.field private mOnUnpauseListener:Lcom/adsdk/sdk/video/MediaController$OnUnpauseListener;

.field private mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

.field private mShowing:Z

.field private mVideoData:Lcom/adsdk/sdk/video/VideoData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/adsdk/sdk/video/VideoData;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 132
    new-instance v0, Lcom/adsdk/sdk/video/MediaController$ResourceHandler;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/MediaController$ResourceHandler;-><init>(Lcom/adsdk/sdk/video/MediaController;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mHandler:Lcom/adsdk/sdk/video/MediaController$ResourceHandler;

    .line 43
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/MediaController;->setVisibility(I)V

    .line 44
    iput-boolean v4, p0, Lcom/adsdk/sdk/video/MediaController;->mShowing:Z

    .line 45
    iput-object p1, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    .line 47
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mVideoData:Lcom/adsdk/sdk/video/VideoData;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Video info cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 51
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mFormatter:Ljava/util/Formatter;

    .line 53
    new-instance v0, Lcom/adsdk/sdk/video/AutoResizeTextView;

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/adsdk/sdk/video/AutoResizeTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mLeftTime:Landroid/widget/TextView;

    .line 54
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mLeftTime:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 55
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mLeftTime:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 56
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mLeftTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/MediaController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v4, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 59
    const/4 v1, 0x0

    .line 61
    iget-object v2, p0, Lcom/adsdk/sdk/video/MediaController;->mLeftTime:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 63
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 64
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/MediaController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v4, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 65
    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 66
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 67
    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/MediaController;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mLeftTime:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/adsdk/sdk/video/MediaController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    const-string v0, "MediaController created"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/video/MediaController;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/video/MediaController;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private doPauseResume()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    if-nez v0, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->pause()V

    .line 195
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mOnPauseListener:Lcom/adsdk/sdk/video/MediaController$OnPauseListener;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mOnPauseListener:Lcom/adsdk/sdk/video/MediaController$OnPauseListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/video/MediaController$OnPauseListener;->onVideoPause()V

    goto :goto_0

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->start()V

    .line 200
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mOnUnpauseListener:Lcom/adsdk/sdk/video/MediaController$OnUnpauseListener;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mOnUnpauseListener:Lcom/adsdk/sdk/video/MediaController$OnUnpauseListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/video/MediaController$OnUnpauseListener;->onVideoUnpause()V

    goto :goto_0
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 135
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 141
    :goto_0
    return-void

    .line 137
    :pswitch_0
    invoke-direct {p0}, Lcom/adsdk/sdk/video/MediaController;->refreshProgress()V

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private refreshProgress()V
    .locals 6

    .prologue
    const/4 v2, 0x2

    .line 211
    iget-boolean v0, p0, Lcom/adsdk/sdk/video/MediaController;->mShowing:Z

    if-eqz v0, :cond_0

    .line 212
    invoke-direct {p0}, Lcom/adsdk/sdk/video/MediaController;->setProgress()I

    move-result v0

    .line 213
    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v1}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mHandler:Lcom/adsdk/sdk/video/MediaController$ResourceHandler;

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/video/MediaController$ResourceHandler;->removeMessages(I)V

    .line 215
    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mHandler:Lcom/adsdk/sdk/video/MediaController$ResourceHandler;

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/video/MediaController$ResourceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 216
    iget-object v2, p0, Lcom/adsdk/sdk/video/MediaController;->mHandler:Lcom/adsdk/sdk/video/MediaController$ResourceHandler;

    rem-int/lit16 v0, v0, 0x3e8

    rsub-int v0, v0, 0x3e8

    int-to-long v4, v0

    invoke-virtual {v2, v1, v4, v5}, Lcom/adsdk/sdk/video/MediaController$ResourceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 219
    :cond_0
    return-void
.end method

.method private setProgress()I
    .locals 5

    .prologue
    .line 161
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    if-nez v0, :cond_1

    .line 162
    const/4 v0, 0x0

    .line 171
    :cond_0
    :goto_0
    return v0

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->getCurrentPosition()I

    move-result v0

    .line 165
    iget-object v1, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v1}, Landroid/widget/MediaController$MediaPlayerControl;->getDuration()I

    move-result v1

    .line 167
    sub-int/2addr v1, v0

    .line 168
    iget-object v2, p0, Lcom/adsdk/sdk/video/MediaController;->mLeftTime:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 169
    iget-object v2, p0, Lcom/adsdk/sdk/video/MediaController;->mLeftTime:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/adsdk/sdk/video/MediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private stringForTime(I)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 144
    div-int/lit16 v0, p1, 0x3e8

    .line 146
    rem-int/lit8 v1, v0, 0x3c

    .line 147
    div-int/lit8 v2, v0, 0x3c

    rem-int/lit8 v2, v2, 0x3c

    .line 148
    div-int/lit16 v0, v0, 0xe10

    .line 150
    iget-object v3, p0, Lcom/adsdk/sdk/video/MediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 151
    if-lez v0, :cond_0

    .line 152
    iget-object v3, p0, Lcom/adsdk/sdk/video/MediaController;->mFormatter:Ljava/util/Formatter;

    const-string v4, "%d:%02d:%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-virtual {v3, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    :goto_0
    return-object v0

    .line 153
    :cond_0
    if-lez v2, :cond_1

    .line 154
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mFormatter:Ljava/util/Formatter;

    const-string v3, "%02d:%02d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mFormatter:Ljava/util/Formatter;

    const-string v2, "0:%02d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-virtual {v0, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 92
    const-string v0, "HIDE"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 94
    iget-boolean v0, p0, Lcom/adsdk/sdk/video/MediaController;->mShowing:Z

    if-eqz v0, :cond_0

    .line 95
    const-string v0, "Hide change visibility"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mHandler:Lcom/adsdk/sdk/video/MediaController$ResourceHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/MediaController$ResourceHandler;->removeMessages(I)V

    .line 97
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/MediaController;->setVisibility(I)V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/video/MediaController;->mShowing:Z

    .line 101
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/adsdk/sdk/video/MediaController;->mShowing:Z

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-eq p1, v0, :cond_2

    const/16 v0, 0x52

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    .line 177
    const/16 v0, 0x4f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x55

    if-ne p1, v0, :cond_1

    .line 178
    :cond_0
    invoke-direct {p0}, Lcom/adsdk/sdk/video/MediaController;->doPauseResume()V

    .line 179
    const/4 v0, 0x1

    .line 187
    :goto_0
    return v0

    .line 180
    :cond_1
    const/16 v0, 0x56

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->pause()V

    .line 182
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mOnPauseListener:Lcom/adsdk/sdk/video/MediaController$OnPauseListener;

    if-eqz v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mOnPauseListener:Lcom/adsdk/sdk/video/MediaController$OnPauseListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/video/MediaController$OnPauseListener;->onVideoPause()V

    .line 187
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/adsdk/sdk/video/MediaController;->show()V

    .line 223
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/adsdk/sdk/video/MediaController;->refreshProgress()V

    .line 208
    return-void
.end method

.method public replay()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/MediaController$MediaPlayerControl;->seekTo(I)V

    .line 106
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->start()V

    .line 108
    :cond_0
    invoke-direct {p0}, Lcom/adsdk/sdk/video/MediaController;->refreshProgress()V

    .line 109
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mOnReplayListener:Lcom/adsdk/sdk/video/MediaController$OnReplayListener;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController;->mOnReplayListener:Lcom/adsdk/sdk/video/MediaController$OnReplayListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/video/MediaController$OnReplayListener;->onVideoReplay()V

    .line 112
    :cond_1
    return-void
.end method

.method public setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/adsdk/sdk/video/MediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    .line 76
    return-void
.end method

.method public setOnPauseListener(Lcom/adsdk/sdk/video/MediaController$OnPauseListener;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/adsdk/sdk/video/MediaController;->mOnPauseListener:Lcom/adsdk/sdk/video/MediaController$OnPauseListener;

    .line 227
    return-void
.end method

.method public setOnReplayListener(Lcom/adsdk/sdk/video/MediaController$OnReplayListener;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/adsdk/sdk/video/MediaController;->mOnReplayListener:Lcom/adsdk/sdk/video/MediaController$OnReplayListener;

    .line 235
    return-void
.end method

.method public setOnUnpauseListener(Lcom/adsdk/sdk/video/MediaController$OnUnpauseListener;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/adsdk/sdk/video/MediaController;->mOnUnpauseListener:Lcom/adsdk/sdk/video/MediaController$OnUnpauseListener;

    .line 231
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/adsdk/sdk/video/MediaController;->mShowing:Z

    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/MediaController;->setVisibility(I)V

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsdk/sdk/video/MediaController;->mShowing:Z

    .line 82
    const-string v0, "Change Visibility"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/adsdk/sdk/video/MediaController;->refreshProgress()V

    .line 85
    return-void
.end method
