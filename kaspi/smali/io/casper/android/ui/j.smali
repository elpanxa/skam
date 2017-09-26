.class public Lio/casper/android/ui/j;
.super Landroid/widget/FrameLayout;
.source "VideoControllerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/ui/j$b;,
        Lio/casper/android/ui/j$a;
    }
.end annotation


# static fields
.field private static final FADE_OUT:I = 0x1

.field private static final SHOW_PROGRESS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "VideoControllerView"

.field private static final sDefaultTimeout:I = 0xbb8


# instance fields
.field private mAnchor:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDragging:Z

.field private mEndTime:Landroid/widget/TextView;

.field private mFfwdButton:Landroid/widget/ImageButton;

.field private mFfwdListener:Landroid/view/View$OnClickListener;

.field mFormatBuilder:Ljava/lang/StringBuilder;

.field mFormatter:Ljava/util/Formatter;

.field private mFromXml:Z

.field private mFullscreenButton:Landroid/widget/ImageButton;

.field private mFullscreenListener:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mListenersSet:Z

.field private mNextButton:Landroid/widget/ImageButton;

.field private mNextListener:Landroid/view/View$OnClickListener;

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mPauseListener:Landroid/view/View$OnClickListener;

.field private mPlayer:Lio/casper/android/ui/j$a;

.field private mPrevButton:Landroid/widget/ImageButton;

.field private mPrevListener:Landroid/view/View$OnClickListener;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mRewButton:Landroid/widget/ImageButton;

.field private mRewListener:Landroid/view/View$OnClickListener;

.field private mRoot:Landroid/view/View;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mShowing:Z

.field private mUseFastForward:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 110
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/casper/android/ui/j;-><init>(Landroid/content/Context;Z)V

    .line 112
    const-string v0, "VideoControllerView"

    const-string v1, "VideoControllerView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 102
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 89
    new-instance v0, Lio/casper/android/ui/j$b;

    invoke-direct {v0, p0}, Lio/casper/android/ui/j$b;-><init>(Lio/casper/android/ui/j;)V

    iput-object v0, p0, Lio/casper/android/ui/j;->mHandler:Landroid/os/Handler;

    .line 415
    new-instance v0, Lio/casper/android/ui/j$1;

    invoke-direct {v0, p0}, Lio/casper/android/ui/j$1;-><init>(Lio/casper/android/ui/j;)V

    iput-object v0, p0, Lio/casper/android/ui/j;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 422
    new-instance v0, Lio/casper/android/ui/j$2;

    invoke-direct {v0, p0}, Lio/casper/android/ui/j$2;-><init>(Lio/casper/android/ui/j;)V

    iput-object v0, p0, Lio/casper/android/ui/j;->mFullscreenListener:Landroid/view/View$OnClickListener;

    .line 488
    new-instance v0, Lio/casper/android/ui/j$3;

    invoke-direct {v0, p0}, Lio/casper/android/ui/j$3;-><init>(Lio/casper/android/ui/j;)V

    iput-object v0, p0, Lio/casper/android/ui/j;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 569
    new-instance v0, Lio/casper/android/ui/j$4;

    invoke-direct {v0, p0}, Lio/casper/android/ui/j$4;-><init>(Lio/casper/android/ui/j;)V

    iput-object v0, p0, Lio/casper/android/ui/j;->mRewListener:Landroid/view/View$OnClickListener;

    .line 584
    new-instance v0, Lio/casper/android/ui/j$5;

    invoke-direct {v0, p0}, Lio/casper/android/ui/j$5;-><init>(Lio/casper/android/ui/j;)V

    iput-object v0, p0, Lio/casper/android/ui/j;->mFfwdListener:Landroid/view/View$OnClickListener;

    .line 103
    iput-object p1, p0, Lio/casper/android/ui/j;->mContext:Landroid/content/Context;

    .line 104
    iput-boolean p2, p0, Lio/casper/android/ui/j;->mUseFastForward:Z

    .line 106
    const-string v0, "VideoControllerView"

    const-string v1, "VideoControllerView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method

.method static synthetic a(Lio/casper/android/ui/j;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lio/casper/android/ui/j;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 161
    const v0, 0x7f0c012a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/casper/android/ui/j;->mPauseButton:Landroid/widget/ImageButton;

    .line 162
    iget-object v0, p0, Lio/casper/android/ui/j;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lio/casper/android/ui/j;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 164
    iget-object v0, p0, Lio/casper/android/ui/j;->mPauseButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lio/casper/android/ui/j;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    :cond_0
    const v0, 0x7f0c012b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/casper/android/ui/j;->mFfwdButton:Landroid/widget/ImageButton;

    .line 176
    iget-object v0, p0, Lio/casper/android/ui/j;->mFfwdButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lio/casper/android/ui/j;->mFfwdButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lio/casper/android/ui/j;->mFfwdListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-boolean v0, p0, Lio/casper/android/ui/j;->mFromXml:Z

    if-nez v0, :cond_1

    .line 179
    iget-object v3, p0, Lio/casper/android/ui/j;->mFfwdButton:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lio/casper/android/ui/j;->mUseFastForward:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 183
    :cond_1
    const v0, 0x7f0c0129

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/casper/android/ui/j;->mRewButton:Landroid/widget/ImageButton;

    .line 184
    iget-object v0, p0, Lio/casper/android/ui/j;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p0, Lio/casper/android/ui/j;->mRewButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lio/casper/android/ui/j;->mRewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-boolean v0, p0, Lio/casper/android/ui/j;->mFromXml:Z

    if-nez v0, :cond_2

    .line 187
    iget-object v0, p0, Lio/casper/android/ui/j;->mRewButton:Landroid/widget/ImageButton;

    iget-boolean v3, p0, Lio/casper/android/ui/j;->mUseFastForward:Z

    if-eqz v3, :cond_8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 192
    :cond_2
    const v0, 0x7f0c012c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/casper/android/ui/j;->mNextButton:Landroid/widget/ImageButton;

    .line 193
    iget-object v0, p0, Lio/casper/android/ui/j;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lio/casper/android/ui/j;->mFromXml:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lio/casper/android/ui/j;->mListenersSet:Z

    if-nez v0, :cond_3

    .line 194
    iget-object v0, p0, Lio/casper/android/ui/j;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 196
    :cond_3
    const v0, 0x7f0c0128

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lio/casper/android/ui/j;->mPrevButton:Landroid/widget/ImageButton;

    .line 197
    iget-object v0, p0, Lio/casper/android/ui/j;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lio/casper/android/ui/j;->mFromXml:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lio/casper/android/ui/j;->mListenersSet:Z

    if-nez v0, :cond_4

    .line 198
    iget-object v0, p0, Lio/casper/android/ui/j;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 201
    :cond_4
    const v0, 0x7f0c012e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lio/casper/android/ui/j;->mProgress:Landroid/widget/ProgressBar;

    .line 202
    iget-object v0, p0, Lio/casper/android/ui/j;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_6

    .line 203
    iget-object v0, p0, Lio/casper/android/ui/j;->mProgress:Landroid/widget/ProgressBar;

    instance-of v0, v0, Landroid/widget/SeekBar;

    if-eqz v0, :cond_5

    .line 204
    iget-object v0, p0, Lio/casper/android/ui/j;->mProgress:Landroid/widget/ProgressBar;

    check-cast v0, Landroid/widget/SeekBar;

    .line 205
    iget-object v1, p0, Lio/casper/android/ui/j;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 207
    :cond_5
    iget-object v0, p0, Lio/casper/android/ui/j;->mProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 210
    :cond_6
    const v0, 0x7f0c012f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/casper/android/ui/j;->mEndTime:Landroid/widget/TextView;

    .line 211
    const v0, 0x7f0c012d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/casper/android/ui/j;->mCurrentTime:Landroid/widget/TextView;

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lio/casper/android/ui/j;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 213
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lio/casper/android/ui/j;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lio/casper/android/ui/j;->mFormatter:Ljava/util/Formatter;

    .line 215
    invoke-direct {p0}, Lio/casper/android/ui/j;->j()V

    .line 216
    return-void

    :cond_7
    move v0, v2

    .line 179
    goto/16 :goto_0

    :cond_8
    move v1, v2

    .line 187
    goto/16 :goto_1
.end method

.method static synthetic a(Lio/casper/android/ui/j;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lio/casper/android/ui/j;->h()V

    return-void
.end method

.method static synthetic a(Lio/casper/android/ui/j;Z)Z
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lio/casper/android/ui/j;->mDragging:Z

    return p1
.end method

.method private b(I)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 313
    div-int/lit16 v0, p1, 0x3e8

    .line 315
    rem-int/lit8 v1, v0, 0x3c

    .line 316
    div-int/lit8 v2, v0, 0x3c

    rem-int/lit8 v2, v2, 0x3c

    .line 317
    div-int/lit16 v0, v0, 0xe10

    .line 319
    iget-object v3, p0, Lio/casper/android/ui/j;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 320
    if-lez v0, :cond_0

    .line 321
    iget-object v3, p0, Lio/casper/android/ui/j;->mFormatter:Ljava/util/Formatter;

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

    .line 323
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/casper/android/ui/j;->mFormatter:Ljava/util/Formatter;

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
.end method

.method private b()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lio/casper/android/ui/j;->mPlayer:Lio/casper/android/ui/j$a;

    if-nez v0, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    :try_start_0
    iget-object v0, p0, Lio/casper/android/ui/j;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/casper/android/ui/j;->mPlayer:Lio/casper/android/ui/j$a;

    invoke-interface {v0}, Lio/casper/android/ui/j$a;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 237
    iget-object v0, p0, Lio/casper/android/ui/j;->mPauseButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 239
    :cond_2
    iget-object v0, p0, Lio/casper/android/ui/j;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/casper/android/ui/j;->mPlayer:Lio/casper/android/ui/j$a;

    invoke-interface {v0}, Lio/casper/android/ui/j$a;->h()Z

    move-result v0

    if-nez v0, :cond_3

    .line 240
    iget-object v0, p0, Lio/casper/android/ui/j;->mRewButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 242
    :cond_3
    iget-object v0, p0, Lio/casper/android/ui/j;->mFfwdButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/casper/android/ui/j;->mPlayer:Lio/casper/android/ui/j$a;

    invoke-interface {v0}, Lio/casper/android/ui/j$a;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lio/casper/android/ui/j;->mFfwdButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lio/casper/android/ui/j;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lio/casper/android/ui/j;->i()V

    return-void
.end method

.method static synthetic c(Lio/casper/android/ui/j;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lio/casper/android/ui/j;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lio/casper/android/ui/j;)Lio/casper/android/ui/j$a;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lio/casper/android/ui/j;->mPlayer:Lio/casper/android/ui/j$a;

    return-object v0
.end method

.method static synthetic e(Lio/casper/android/ui/j;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lio/casper/android/ui/j;->mCurrentTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lio/casper/android/ui/j;)I
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lio/casper/android/ui/j;->g()I

    move-result v0

    return v0
.end method

.method private g()I
    .locals 6

    .prologue
    .line 328
    iget-object v0, p0, Lio/casper/android/ui/j;->mPlayer:Lio/casper/android/ui/j$a;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/casper/android/ui/j;->mDragging:Z

    if-eqz v0, :cond_2

    .line 329
    :cond_0
    const/4 v0, 0x0

    .line 349
    :cond_1
    :goto_0
    return v0

    .line 332
    :cond_2
    iget-object v0, p0, Lio/casper/android/ui/j;->mPlayer:Lio/casper/android/ui/j$a;

    invoke-interface {v0}, Lio/casper/android/ui/j$a;->d()I

    move-result v0

    .line 333
    iget-object v1, p0, Lio/casper/android/ui/j;->mPlayer:Lio/casper/android/ui/j$a;

    invoke-interface {v1}, Lio/casper/android/ui/j$a;->c()I

    move-result v1

    .line 334
    iget-object v2, p0, Lio/casper/android/ui/j;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_4

    .line 335
    if-lez v1, :cond_3

    .line 337
    const-wide/16 v2, 0x3e8

    int-to-long v4, v0

    mul-long/2addr v2, v4

    int-to-long v4, v1

    div-long/2addr v2, v4

    .line 338
    iget-object v4, p0, Lio/casper/android/ui/j;->mProgress:Landroid/widget/ProgressBar;

    long-to-int v2, v2

    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 340
    :cond_3
    iget-object v2, p0, Lio/casper/android/ui/j;->mPlayer:Lio/casper/android/ui/j$a;

    invoke-interface {v2}, Lio/casper/android/ui/j$a;->f()I

    move-result v2

    .line 341
    iget-object v3, p0, Lio/casper/android/ui/j;->mProgress:Landroid/widget/ProgressBar;

    mul-int/lit8 v2, v2, 0xa

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 344
    :cond_4
    iget-object v2, p0, Lio/casper/android/ui/j;->mEndTime:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    .line 345
    iget-object v2, p0, Lio/casper/android/ui/j;->mEndTime:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lio/casper/android/ui/j;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    :cond_5
    iget-object v1, p0, Lio/casper/android/ui/j;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 347
    iget-object v1, p0, Lio/casper/android/ui/j;->mCurrentTime:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lio/casper/android/ui/j;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic g(Lio/casper/android/ui/j;)Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lio/casper/android/ui/j;->mDragging:Z

    return v0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lio/casper/android/ui/j;->mPlayer:Lio/casper/android/ui/j$a;

    if-nez v0, :cond_0

    .line 467
    :goto_0
    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lio/casper/android/ui/j;->mPlayer:Lio/casper/android/ui/j$a;

    invoke-interface {v0}, Lio/casper/android/ui/j$a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p0, Lio/casper/android/ui/j;->mPlayer:Lio/casper/android/ui/j$a;

    invoke-interface {v0}, Lio/casper/android/ui/j$a;->b()V

    .line 466
    :goto_1
    invoke-virtual {p0}, Lio/casper/android/ui/j;->e()V

    goto :goto_0

    .line 464
    :cond_1
    iget-object v0, p0, Lio/casper/android/ui/j;->mPlayer:Lio/casper/android/ui/j$a;

    invoke-interface {v0}, Lio/casper/android/ui/j$a;->a()V

    goto :goto_1
.end method

.method static synthetic h(Lio/casper/android/ui/j;)Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lio/casper/android/ui/j;->mShowing:Z

    return v0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lio/casper/android/ui/j;->mPlayer:Lio/casper/android/ui/j$a;

    if-nez v0, :cond_0

    .line 475
    :goto_0
    return-void

    .line 474
    :cond_0
    iget-object v0, p0, Lio/casper/android/ui/j;->mPlayer:Lio/casper/android/ui/j$a;

    invoke-interface {v0}, Lio/casper/android/ui/j$a;->j()V

    goto :goto_0
.end method

.method private j()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 600
    iget-object v0, p0, Lio/casper/android/ui/j;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lio/casper/android/ui/j;->mNextButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lio/casper/android/ui/j;->mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 602
    iget-object v3, p0, Lio/casper/android/ui/j;->mNextButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lio/casper/android/ui/j;->mNextListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 605
    :cond_0
    iget-object v0, p0, Lio/casper/android/ui/j;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 606
    iget-object v0, p0, Lio/casper/android/ui/j;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lio/casper/android/ui/j;->mPrevListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 607
    iget-object v0, p0, Lio/casper/android/ui/j;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lio/casper/android/ui/j;->mPrevListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 609
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 602
    goto :goto_0

    :cond_3
    move v1, v2

    .line 607
    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lio/casper/android/ui/j;->mAnchor:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 310
    :goto_0
    return-void

    .line 304
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/casper/android/ui/j;->mAnchor:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 305
    iget-object v0, p0, Lio/casper/android/ui/j;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/casper/android/ui/j;->mShowing:Z

    goto :goto_0

    .line 306
    :catch_0
    move-exception v0

    .line 307
    const-string v0, "MediaController"

    const-string v1, "already removed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public a(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 260
    iget-boolean v0, p0, Lio/casper/android/ui/j;->mShowing:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/casper/android/ui/j;->mAnchor:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 261
    invoke-direct {p0}, Lio/casper/android/ui/j;->g()I

    .line 262
    iget-object v0, p0, Lio/casper/android/ui/j;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lio/casper/android/ui/j;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 265
    :cond_0
    invoke-direct {p0}, Lio/casper/android/ui/j;->b()V

    .line 267
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x50

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 273
    iget-object v1, p0, Lio/casper/android/ui/j;->mAnchor:Landroid/view/ViewGroup;

    invoke-virtual {v1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    iput-boolean v4, p0, Lio/casper/android/ui/j;->mShowing:Z

    .line 276
    :cond_1
    invoke-virtual {p0}, Lio/casper/android/ui/j;->e()V

    .line 277
    invoke-virtual {p0}, Lio/casper/android/ui/j;->f()V

    .line 282
    iget-object v0, p0, Lio/casper/android/ui/j;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 284
    iget-object v0, p0, Lio/casper/android/ui/j;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 285
    if-eqz p1, :cond_2

    .line 286
    iget-object v1, p0, Lio/casper/android/ui/j;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 287
    iget-object v1, p0, Lio/casper/android/ui/j;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 289
    :cond_2
    return-void
.end method

.method protected c()Landroid/view/View;
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lio/casper/android/ui/j;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 153
    const v1, 0x7f030079

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/ui/j;->mRoot:Landroid/view/View;

    .line 155
    iget-object v0, p0, Lio/casper/android/ui/j;->mRoot:Landroid/view/View;

    invoke-direct {p0, v0}, Lio/casper/android/ui/j;->a(Landroid/view/View;)V

    .line 157
    iget-object v0, p0, Lio/casper/android/ui/j;->mRoot:Landroid/view/View;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lio/casper/android/ui/j;->mShowing:Z

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/16 v4, 0xbb8

    const/4 v0, 0x1

    .line 366
    iget-object v1, p0, Lio/casper/android/ui/j;->mPlayer:Lio/casper/android/ui/j$a;

    if-nez v1, :cond_1

    .line 412
    :cond_0
    :goto_0
    return v0

    .line 370
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 371
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 372
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    move v1, v0

    .line 373
    :goto_1
    const/16 v3, 0x4f

    if-eq v2, v3, :cond_2

    const/16 v3, 0x55

    if-eq v2, v3, :cond_2

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_4

    .line 376
    :cond_2
    if-eqz v1, :cond_0

    .line 377
    invoke-direct {p0}, Lio/casper/android/ui/j;->h()V

    .line 378
    invoke-virtual {p0, v4}, Lio/casper/android/ui/j;->a(I)V

    .line 379
    iget-object v1, p0, Lio/casper/android/ui/j;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 380
    iget-object v1, p0, Lio/casper/android/ui/j;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    goto :goto_0

    .line 372
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 384
    :cond_4
    const/16 v3, 0x7e

    if-ne v2, v3, :cond_5

    .line 385
    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/casper/android/ui/j;->mPlayer:Lio/casper/android/ui/j$a;

    invoke-interface {v1}, Lio/casper/android/ui/j$a;->e()Z

    move-result v1

    if-nez v1, :cond_0

    .line 386
    iget-object v1, p0, Lio/casper/android/ui/j;->mPlayer:Lio/casper/android/ui/j$a;

    invoke-interface {v1}, Lio/casper/android/ui/j$a;->a()V

    .line 387
    invoke-virtual {p0}, Lio/casper/android/ui/j;->e()V

    .line 388
    invoke-virtual {p0, v4}, Lio/casper/android/ui/j;->a(I)V

    goto :goto_0

    .line 391
    :cond_5
    const/16 v3, 0x56

    if-eq v2, v3, :cond_6

    const/16 v3, 0x7f

    if-ne v2, v3, :cond_7

    .line 393
    :cond_6
    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/casper/android/ui/j;->mPlayer:Lio/casper/android/ui/j$a;

    invoke-interface {v1}, Lio/casper/android/ui/j$a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    iget-object v1, p0, Lio/casper/android/ui/j;->mPlayer:Lio/casper/android/ui/j$a;

    invoke-interface {v1}, Lio/casper/android/ui/j$a;->b()V

    .line 395
    invoke-virtual {p0}, Lio/casper/android/ui/j;->e()V

    .line 396
    invoke-virtual {p0, v4}, Lio/casper/android/ui/j;->a(I)V

    goto :goto_0

    .line 399
    :cond_7
    const/16 v3, 0x19

    if-eq v2, v3, :cond_8

    const/16 v3, 0x18

    if-eq v2, v3, :cond_8

    const/16 v3, 0xa4

    if-ne v2, v3, :cond_9

    .line 403
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 404
    :cond_9
    const/4 v3, 0x4

    if-eq v2, v3, :cond_a

    const/16 v3, 0x52

    if-ne v2, v3, :cond_b

    .line 405
    :cond_a
    if-eqz v1, :cond_0

    .line 406
    invoke-virtual {p0}, Lio/casper/android/ui/j;->a()V

    goto/16 :goto_0

    .line 411
    :cond_b
    invoke-virtual {p0, v4}, Lio/casper/android/ui/j;->a(I)V

    .line 412
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lio/casper/android/ui/j;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/casper/android/ui/j;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/casper/android/ui/j;->mPlayer:Lio/casper/android/ui/j$a;

    if-nez v0, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    iget-object v0, p0, Lio/casper/android/ui/j;->mPlayer:Lio/casper/android/ui/j$a;

    invoke-interface {v0}, Lio/casper/android/ui/j$a;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 435
    iget-object v0, p0, Lio/casper/android/ui/j;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200e6

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 437
    :cond_2
    iget-object v0, p0, Lio/casper/android/ui/j;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200e7

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public f()V
    .locals 0

    .prologue
    .line 454
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lio/casper/android/ui/j;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lio/casper/android/ui/j;->mRoot:Landroid/view/View;

    invoke-direct {p0, v0}, Lio/casper/android/ui/j;->a(Landroid/view/View;)V

    .line 119
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 559
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 560
    const-class v0, Lio/casper/android/ui/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 561
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 565
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 566
    const-class v0, Lio/casper/android/ui/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 567
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 354
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lio/casper/android/ui/j;->a(I)V

    .line 355
    const/4 v0, 0x1

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 360
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lio/casper/android/ui/j;->a(I)V

    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method public setAnchorView(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 133
    iput-object p1, p0, Lio/casper/android/ui/j;->mAnchor:Landroid/view/ViewGroup;

    .line 135
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 140
    invoke-virtual {p0}, Lio/casper/android/ui/j;->removeAllViews()V

    .line 141
    invoke-virtual {p0}, Lio/casper/android/ui/j;->c()Landroid/view/View;

    move-result-object v1

    .line 142
    invoke-virtual {p0, v1, v0}, Lio/casper/android/ui/j;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 535
    iget-object v0, p0, Lio/casper/android/ui/j;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lio/casper/android/ui/j;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 538
    :cond_0
    iget-object v0, p0, Lio/casper/android/ui/j;->mFfwdButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 539
    iget-object v0, p0, Lio/casper/android/ui/j;->mFfwdButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 541
    :cond_1
    iget-object v0, p0, Lio/casper/android/ui/j;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 542
    iget-object v0, p0, Lio/casper/android/ui/j;->mRewButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 544
    :cond_2
    iget-object v0, p0, Lio/casper/android/ui/j;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    .line 545
    iget-object v3, p0, Lio/casper/android/ui/j;->mNextButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_6

    iget-object v0, p0, Lio/casper/android/ui/j;->mNextListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_6

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 547
    :cond_3
    iget-object v0, p0, Lio/casper/android/ui/j;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    .line 548
    iget-object v0, p0, Lio/casper/android/ui/j;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_7

    iget-object v3, p0, Lio/casper/android/ui/j;->mPrevListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_7

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 550
    :cond_4
    iget-object v0, p0, Lio/casper/android/ui/j;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_5

    .line 551
    iget-object v0, p0, Lio/casper/android/ui/j;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    .line 553
    :cond_5
    invoke-direct {p0}, Lio/casper/android/ui/j;->b()V

    .line 554
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 555
    return-void

    :cond_6
    move v0, v2

    .line 545
    goto :goto_0

    :cond_7
    move v1, v2

    .line 548
    goto :goto_1
.end method

.method public setMediaPlayer(Lio/casper/android/ui/j$a;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lio/casper/android/ui/j;->mPlayer:Lio/casper/android/ui/j$a;

    .line 123
    invoke-virtual {p0}, Lio/casper/android/ui/j;->e()V

    .line 124
    invoke-virtual {p0}, Lio/casper/android/ui/j;->f()V

    .line 125
    return-void
.end method
