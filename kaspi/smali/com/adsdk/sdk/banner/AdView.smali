.class public Lcom/adsdk/sdk/banner/AdView;
.super Landroid/widget/FrameLayout;
.source "AdView.java"


# static fields
.field private static final CUSTOM_EVENT_RELOAD_INTERVAL:I = 0x1e

.field public static final LIVE:I = 0x0

.field public static final TEST:I = 0x1


# instance fields
.field private MRAIDFrame:Landroid/widget/FrameLayout;

.field private adListener:Lcom/adsdk/sdk/AdListener;

.field private adspaceHeight:I

.field private adspaceStrict:Z

.field private adspaceWidth:I

.field private animation:Z

.field private customAdListener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

.field private customEventBanner:Lcom/adsdk/sdk/customevents/CustomEventBanner;

.field private customEventBannerView:Landroid/view/View;

.field private final handler:Landroid/os/Handler;

.field private includeLocation:Z

.field private isInternalBrowser:Z

.field private keywords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private loadContentThread:Ljava/lang/Thread;

.field private mBannerView:Lcom/adsdk/sdk/banner/BannerAdView;

.field private mContext:Landroid/content/Context;

.field protected mIsInForeground:Z

.field private mMRAIDView:Lcom/adsdk/sdk/mraid/MraidView;

.field private mScreenStateReceiver:Landroid/content/BroadcastReceiver;

.field private publisherId:Ljava/lang/String;

.field private reloadTimer:Ljava/util/Timer;

.field private request:Lcom/adsdk/sdk/AdRequest;

.field private requestURL:Ljava/lang/String;

.field private response:Lcom/adsdk/sdk/AdResponse;

.field private shouldNotifyClose:Z

.field private final showContent:Ljava/lang/Runnable;

.field private userAge:I

.field private userGender:Lcom/adsdk/sdk/Gender;

.field private xml:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 107
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput-boolean v1, p0, Lcom/adsdk/sdk/banner/AdView;->includeLocation:Z

    .line 62
    iput-boolean v1, p0, Lcom/adsdk/sdk/banner/AdView;->isInternalBrowser:Z

    .line 67
    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->requestURL:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->handler:Landroid/os/Handler;

    .line 81
    new-instance v0, Lcom/adsdk/sdk/banner/AdView$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/banner/AdView$1;-><init>(Lcom/adsdk/sdk/banner/AdView;)V

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->showContent:Ljava/lang/Runnable;

    .line 108
    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    .line 109
    if-eqz p2, :cond_0

    .line 110
    invoke-interface {p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    move v0, v1

    .line 111
    :goto_0
    if-lt v0, v2, :cond_1

    .line 131
    :cond_0
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/banner/AdView;->initialize(Landroid/content/Context;)V

    .line 132
    return-void

    .line 112
    :cond_1
    invoke-interface {p2, v0}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 113
    const-string v4, "publisherId"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 114
    invoke-interface {p2, v0}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/adsdk/sdk/banner/AdView;->publisherId:Ljava/lang/String;

    .line 111
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_3
    const-string v4, "request_url"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 116
    invoke-interface {p2, v0}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/adsdk/sdk/banner/AdView;->requestURL:Ljava/lang/String;

    goto :goto_1

    .line 117
    :cond_4
    const-string v4, "animation"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 118
    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/adsdk/sdk/banner/AdView;->animation:Z

    goto :goto_1

    .line 119
    :cond_5
    const-string v4, "location"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 120
    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/adsdk/sdk/banner/AdView;->includeLocation:Z

    goto :goto_1

    .line 121
    :cond_6
    const-string v4, "adspaceStrict"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 122
    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/adsdk/sdk/banner/AdView;->adspaceStrict:Z

    goto :goto_1

    .line 123
    :cond_7
    const-string v4, "adspaceWidth"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 124
    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v3

    iput v3, p0, Lcom/adsdk/sdk/banner/AdView;->adspaceWidth:I

    goto :goto_1

    .line 125
    :cond_8
    const-string v4, "adspaceHeight"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 126
    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v3

    iput v3, p0, Lcom/adsdk/sdk/banner/AdView;->adspaceHeight:I

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 143
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    iput-boolean v0, p0, Lcom/adsdk/sdk/banner/AdView;->includeLocation:Z

    .line 62
    iput-boolean v0, p0, Lcom/adsdk/sdk/banner/AdView;->isInternalBrowser:Z

    .line 67
    iput-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->requestURL:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->handler:Landroid/os/Handler;

    .line 81
    new-instance v0, Lcom/adsdk/sdk/banner/AdView$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/banner/AdView$1;-><init>(Lcom/adsdk/sdk/banner/AdView;)V

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->showContent:Ljava/lang/Runnable;

    .line 144
    iput-object p2, p0, Lcom/adsdk/sdk/banner/AdView;->xml:Ljava/io/InputStream;

    .line 145
    iput-object p3, p0, Lcom/adsdk/sdk/banner/AdView;->requestURL:Ljava/lang/String;

    .line 146
    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    .line 147
    iput-object p4, p0, Lcom/adsdk/sdk/banner/AdView;->publisherId:Ljava/lang/String;

    .line 148
    iput-boolean p5, p0, Lcom/adsdk/sdk/banner/AdView;->includeLocation:Z

    .line 149
    iput-boolean p6, p0, Lcom/adsdk/sdk/banner/AdView;->animation:Z

    .line 150
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/banner/AdView;->initialize(Landroid/content/Context;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;ZZ)V
    .locals 7

    .prologue
    .line 139
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/adsdk/sdk/banner/AdView;-><init>(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 135
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/adsdk/sdk/banner/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 7

    .prologue
    .line 154
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/adsdk/sdk/banner/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLcom/adsdk/sdk/AdListener;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLcom/adsdk/sdk/AdListener;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    iput-boolean v0, p0, Lcom/adsdk/sdk/banner/AdView;->includeLocation:Z

    .line 62
    iput-boolean v0, p0, Lcom/adsdk/sdk/banner/AdView;->isInternalBrowser:Z

    .line 67
    iput-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->requestURL:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    .line 79
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->handler:Landroid/os/Handler;

    .line 81
    new-instance v1, Lcom/adsdk/sdk/banner/AdView$1;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/banner/AdView$1;-><init>(Lcom/adsdk/sdk/banner/AdView;)V

    iput-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->showContent:Ljava/lang/Runnable;

    .line 159
    iput-object p2, p0, Lcom/adsdk/sdk/banner/AdView;->requestURL:Ljava/lang/String;

    .line 160
    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    .line 161
    iput-object p3, p0, Lcom/adsdk/sdk/banner/AdView;->publisherId:Ljava/lang/String;

    .line 162
    iput-boolean p4, p0, Lcom/adsdk/sdk/banner/AdView;->includeLocation:Z

    .line 163
    iput-boolean p5, p0, Lcom/adsdk/sdk/banner/AdView;->animation:Z

    .line 164
    iput-object p6, p0, Lcom/adsdk/sdk/banner/AdView;->adListener:Lcom/adsdk/sdk/AdListener;

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AdListener: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->adListener:Lcom/adsdk/sdk/AdListener;

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 166
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/banner/AdView;->initialize(Landroid/content/Context;)V

    .line 167
    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/banner/AdView;)V
    .locals 0

    .prologue
    .line 417
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->showContent()V

    return-void
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/banner/AdView;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/banner/AdView;->notifyLoadAdFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$10(Lcom/adsdk/sdk/banner/AdView;)V
    .locals 0

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->notifyLoadAdSucceeded()V

    return-void
.end method

.method static synthetic access$11(Lcom/adsdk/sdk/banner/AdView;Z)V
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/adsdk/sdk/banner/AdView;->shouldNotifyClose:Z

    return-void
.end method

.method static synthetic access$12(Lcom/adsdk/sdk/banner/AdView;)V
    .locals 0

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->notifyAdClicked()V

    return-void
.end method

.method static synthetic access$13(Lcom/adsdk/sdk/banner/AdView;)V
    .locals 0

    .prologue
    .line 357
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->notifyAdShown()V

    return-void
.end method

.method static synthetic access$14(Lcom/adsdk/sdk/banner/AdView;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/adsdk/sdk/banner/AdView;->adspaceHeight:I

    return v0
.end method

.method static synthetic access$15(Lcom/adsdk/sdk/banner/AdView;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/adsdk/sdk/banner/AdView;->adspaceWidth:I

    return v0
.end method

.method static synthetic access$16(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/customevents/CustomEventBanner;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->customEventBanner:Lcom/adsdk/sdk/customevents/CustomEventBanner;

    return-object v0
.end method

.method static synthetic access$17(Lcom/adsdk/sdk/banner/AdView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$18(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->customAdListener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    return-object v0
.end method

.method static synthetic access$19(Lcom/adsdk/sdk/banner/AdView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->customEventBannerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2(Lcom/adsdk/sdk/banner/AdView;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->xml:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$20(Lcom/adsdk/sdk/banner/AdView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView;->customEventBannerView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$21(Lcom/adsdk/sdk/banner/AdView;)V
    .locals 0

    .prologue
    .line 577
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->destroyCustomEventBanner()V

    return-void
.end method

.method static synthetic access$22(Lcom/adsdk/sdk/banner/AdView;)V
    .locals 0

    .prologue
    .line 503
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->loadCustomEventBanner()V

    return-void
.end method

.method static synthetic access$23(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/banner/BannerAdView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mBannerView:Lcom/adsdk/sdk/banner/BannerAdView;

    return-object v0
.end method

.method static synthetic access$24(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/mraid/MraidView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mMRAIDView:Lcom/adsdk/sdk/mraid/MraidView;

    return-object v0
.end method

.method static synthetic access$25(Lcom/adsdk/sdk/banner/AdView;)V
    .locals 0

    .prologue
    .line 494
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->addMRAIDBannerView()V

    return-void
.end method

.method static synthetic access$26(Lcom/adsdk/sdk/banner/AdView;)V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->notifyNoAd()V

    return-void
.end method

.method static synthetic access$27(Lcom/adsdk/sdk/banner/AdView;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/adsdk/sdk/banner/AdView;->shouldNotifyClose:Z

    return v0
.end method

.method static synthetic access$28(Lcom/adsdk/sdk/banner/AdView;)V
    .locals 0

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->notifyAdClosed()V

    return-void
.end method

.method static synthetic access$3(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/AdRequest;
    .locals 1

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->getRequest()Lcom/adsdk/sdk/AdRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/adsdk/sdk/banner/AdView;Lcom/adsdk/sdk/AdResponse;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    return-void
.end method

.method static synthetic access$5(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/AdResponse;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    return-object v0
.end method

.method static synthetic access$6(Lcom/adsdk/sdk/banner/AdView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/adsdk/sdk/banner/AdView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->showContent:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$8(Lcom/adsdk/sdk/banner/AdView;Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView;->loadContentThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$9(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/AdListener;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->adListener:Lcom/adsdk/sdk/AdListener;

    return-object v0
.end method

.method private addMRAIDBannerView()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    .line 495
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 496
    iget v1, p0, Lcom/adsdk/sdk/banner/AdView;->adspaceHeight:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/adsdk/sdk/banner/AdView;->adspaceWidth:I

    if-eqz v1, :cond_0

    .line 497
    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->MRAIDFrame:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/adsdk/sdk/banner/AdView;->adspaceWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iget v4, p0, Lcom/adsdk/sdk/banner/AdView;->adspaceHeight:I

    int-to-float v4, v4

    mul-float/2addr v0, v4

    add-float/2addr v0, v5

    float-to-int v0, v0

    invoke-direct {v2, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/adsdk/sdk/banner/AdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 501
    :goto_0
    return-void

    .line 499
    :cond_0
    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->MRAIDFrame:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x42480000    # 50.0f

    mul-float/2addr v0, v4

    add-float/2addr v0, v5

    float-to-int v0, v0

    invoke-direct {v2, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/adsdk/sdk/banner/AdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private createBannerAdViewListener()Lcom/adsdk/sdk/banner/BannerAdView$BannerAdViewListener;
    .locals 1

    .prologue
    .line 478
    new-instance v0, Lcom/adsdk/sdk/banner/AdView$11;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/banner/AdView$11;-><init>(Lcom/adsdk/sdk/banner/AdView;)V

    return-object v0
.end method

.method private createCustomAdListener()Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;
    .locals 1

    .prologue
    .line 531
    new-instance v0, Lcom/adsdk/sdk/banner/AdView$13;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/banner/AdView$13;-><init>(Lcom/adsdk/sdk/banner/AdView;)V

    return-object v0
.end method

.method private createMraidListener()Lcom/adsdk/sdk/mraid/MraidView$MraidListener;
    .locals 1

    .prologue
    .line 584
    new-instance v0, Lcom/adsdk/sdk/banner/AdView$14;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/banner/AdView$14;-><init>(Lcom/adsdk/sdk/banner/AdView;)V

    return-object v0
.end method

.method private destroyCustomEventBanner()V
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->customEventBanner:Lcom/adsdk/sdk/customevents/CustomEventBanner;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->customEventBanner:Lcom/adsdk/sdk/customevents/CustomEventBanner;

    invoke-virtual {v0}, Lcom/adsdk/sdk/customevents/CustomEventBanner;->destroy()V

    .line 581
    :cond_0
    return-void
.end method

.method private getRequest()Lcom/adsdk/sdk/AdRequest;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 201
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Lcom/adsdk/sdk/AdRequest;

    invoke-direct {v0}, Lcom/adsdk/sdk/AdRequest;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    .line 203
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-static {}, Lcom/adsdk/sdk/Util;->getAndroidAdId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setAndroidAdId(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-static {}, Lcom/adsdk/sdk/Util;->hasAdDoNotTrack()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setAdDoNotTrack(Z)V

    .line 205
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->publisherId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setPublisherId(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/adsdk/sdk/Util;->getDefaultUserAgentString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setUserAgent(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-static {}, Lcom/adsdk/sdk/Util;->buildUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setUserAgent2(Ljava/lang/String;)V

    .line 208
    const-string v0, "ADSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WebKit UserAgent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v2}, Lcom/adsdk/sdk/AdRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v0, "ADSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK built UserAgent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v2}, Lcom/adsdk/sdk/AdRequest;->getUserAgent2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->userGender:Lcom/adsdk/sdk/Gender;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setGender(Lcom/adsdk/sdk/Gender;)V

    .line 212
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    iget v1, p0, Lcom/adsdk/sdk/banner/AdView;->userAge:I

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setUserAge(I)V

    .line 213
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->keywords:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setKeywords(Ljava/util/List;)V

    .line 214
    const/4 v0, 0x0

    .line 215
    iget-boolean v1, p0, Lcom/adsdk/sdk/banner/AdView;->includeLocation:Z

    if-eqz v1, :cond_1

    .line 216
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/adsdk/sdk/Util;->getLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    .line 217
    :cond_1
    if-eqz v0, :cond_2

    .line 218
    const-string v1, "ADSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "location is longitude: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", latitude: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/adsdk/sdk/AdRequest;->setLatitude(D)V

    .line 220
    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/adsdk/sdk/AdRequest;->setLongitude(D)V

    .line 225
    :goto_0
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    iget v1, p0, Lcom/adsdk/sdk/banner/AdView;->adspaceHeight:I

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setAdspaceHeight(I)V

    .line 226
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    iget v1, p0, Lcom/adsdk/sdk/banner/AdView;->adspaceWidth:I

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setAdspaceWidth(I)V

    .line 227
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    iget-boolean v1, p0, Lcom/adsdk/sdk/banner/AdView;->adspaceStrict:Z

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setAdspaceStrict(Z)V

    .line 229
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->requestURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdRequest;->setRequestURL(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    return-object v0

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v0, v4, v5}, Lcom/adsdk/sdk/AdRequest;->setLatitude(D)V

    .line 223
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->request:Lcom/adsdk/sdk/AdRequest;

    invoke-virtual {v0, v4, v5}, Lcom/adsdk/sdk/AdRequest;->setLongitude(D)V

    goto :goto_0
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->isLoggingEnabled(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/adsdk/sdk/Log;->LOGGING_ENABLED:Z

    .line 235
    const-string v0, "ADSDK"

    const-string v1, "SDK Version:6.0.8"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->registerScreenStateBroadcastReceiver()V

    .line 237
    invoke-static {p1}, Lcom/adsdk/sdk/Util;->prepareAndroidAdId(Landroid/content/Context;)V

    .line 238
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->createCustomAdListener()Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->customAdListener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    .line 239
    return-void
.end method

.method private loadContent()V
    .locals 2

    .prologue
    .line 272
    const-string v0, "ADSDK"

    const-string v1, "load content"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->loadContentThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 275
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adsdk/sdk/banner/AdView$3;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/banner/AdView$3;-><init>(Lcom/adsdk/sdk/banner/AdView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->loadContentThread:Ljava/lang/Thread;

    .line 300
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->loadContentThread:Ljava/lang/Thread;

    new-instance v1, Lcom/adsdk/sdk/banner/AdView$4;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/banner/AdView$4;-><init>(Lcom/adsdk/sdk/banner/AdView;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 308
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->loadContentThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 311
    :cond_0
    return-void
.end method

.method private loadCustomEventBanner()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 504
    iput-object v3, p0, Lcom/adsdk/sdk/banner/AdView;->customEventBanner:Lcom/adsdk/sdk/customevents/CustomEventBanner;

    .line 505
    :goto_0
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getCustomEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->customEventBanner:Lcom/adsdk/sdk/customevents/CustomEventBanner;

    if-eqz v0, :cond_1

    .line 528
    :cond_0
    return-void

    .line 507
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getCustomEvents()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/customevents/CustomEvent;

    .line 508
    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v1}, Lcom/adsdk/sdk/AdResponse;->getCustomEvents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 509
    invoke-virtual {v0}, Lcom/adsdk/sdk/customevents/CustomEvent;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adsdk/sdk/customevents/CustomEventBannerFactory;->create(Ljava/lang/String;)Lcom/adsdk/sdk/customevents/CustomEventBanner;

    move-result-object v1

    iput-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->customEventBanner:Lcom/adsdk/sdk/customevents/CustomEventBanner;

    .line 510
    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/adsdk/sdk/banner/AdView$12;

    invoke-direct {v2, p0, v0}, Lcom/adsdk/sdk/banner/AdView$12;-><init>(Lcom/adsdk/sdk/banner/AdView;Lcom/adsdk/sdk/customevents/CustomEvent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 522
    :catch_0
    move-exception v0

    .line 523
    iput-object v3, p0, Lcom/adsdk/sdk/banner/AdView;->customEventBanner:Lcom/adsdk/sdk/customevents/CustomEventBanner;

    .line 524
    const-string v0, "Failed to create Custom Event Banner."

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private notifyAdClicked()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/adsdk/sdk/banner/AdView$7;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/banner/AdView$7;-><init>(Lcom/adsdk/sdk/banner/AdView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 355
    return-void
.end method

.method private notifyAdClosed()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/adsdk/sdk/banner/AdView$9;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/banner/AdView$9;-><init>(Lcom/adsdk/sdk/banner/AdView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 379
    return-void
.end method

.method private notifyAdShown()V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/adsdk/sdk/banner/AdView$8;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/banner/AdView$8;-><init>(Lcom/adsdk/sdk/banner/AdView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 367
    return-void
.end method

.method private notifyLoadAdFailed(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/adsdk/sdk/banner/AdView$6;

    invoke-direct {v1, p0, p1}, Lcom/adsdk/sdk/banner/AdView$6;-><init>(Lcom/adsdk/sdk/banner/AdView;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 343
    return-void
.end method

.method private notifyLoadAdSucceeded()V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/adsdk/sdk/banner/AdView$10;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/banner/AdView$10;-><init>(Lcom/adsdk/sdk/banner/AdView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 391
    return-void
.end method

.method private notifyNoAd()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/adsdk/sdk/banner/AdView$5;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/banner/AdView$5;-><init>(Lcom/adsdk/sdk/banner/AdView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 329
    return-void
.end method

.method private registerScreenStateBroadcastReceiver()V
    .locals 3

    .prologue
    .line 246
    new-instance v0, Lcom/adsdk/sdk/banner/AdView$2;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/banner/AdView$2;-><init>(Lcom/adsdk/sdk/banner/AdView;)V

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 266
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 267
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 269
    return-void
.end method

.method private showContent()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 418
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/banner/AdView;->shouldNotifyClose:Z

    .line 419
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mBannerView:Lcom/adsdk/sdk/banner/BannerAdView;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mBannerView:Lcom/adsdk/sdk/banner/BannerAdView;

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/banner/AdView;->removeView(Landroid/view/View;)V

    .line 421
    iput-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->mBannerView:Lcom/adsdk/sdk/banner/BannerAdView;

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mMRAIDView:Lcom/adsdk/sdk/mraid/MraidView;

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mMRAIDView:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->destroy()V

    .line 425
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mMRAIDView:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/banner/AdView;->removeView(Landroid/view/View;)V

    .line 426
    iput-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->mMRAIDView:Lcom/adsdk/sdk/mraid/MraidView;

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->MRAIDFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 429
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->MRAIDFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/banner/AdView;->removeView(Landroid/view/View;)V

    .line 430
    iput-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->MRAIDFrame:Landroid/widget/FrameLayout;

    .line 432
    :cond_2
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->customEventBannerView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 433
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->customEventBannerView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/banner/AdView;->removeView(Landroid/view/View;)V

    .line 434
    iput-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->customEventBannerView:Landroid/view/View;

    .line 436
    :cond_3
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->destroyCustomEventBanner()V

    .line 438
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getType()I

    move-result v0

    if-nez v0, :cond_5

    .line 439
    :cond_4
    new-instance v0, Lcom/adsdk/sdk/banner/BannerAdView;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    iget v3, p0, Lcom/adsdk/sdk/banner/AdView;->adspaceWidth:I

    iget v4, p0, Lcom/adsdk/sdk/banner/AdView;->adspaceHeight:I

    iget-boolean v5, p0, Lcom/adsdk/sdk/banner/AdView;->animation:Z

    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->createBannerAdViewListener()Lcom/adsdk/sdk/banner/BannerAdView$BannerAdViewListener;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/adsdk/sdk/banner/BannerAdView;-><init>(Landroid/content/Context;Lcom/adsdk/sdk/AdResponse;IIZLcom/adsdk/sdk/banner/BannerAdView$BannerAdViewListener;)V

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mBannerView:Lcom/adsdk/sdk/banner/BannerAdView;

    .line 440
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getCustomEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 441
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mBannerView:Lcom/adsdk/sdk/banner/BannerAdView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/banner/BannerAdView;->showContent()V

    .line 442
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mBannerView:Lcom/adsdk/sdk/banner/BannerAdView;

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/banner/AdView;->addView(Landroid/view/View;)V

    .line 445
    :cond_5
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    .line 446
    new-instance v0, Lcom/adsdk/sdk/mraid/MraidView;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mMRAIDView:Lcom/adsdk/sdk/mraid/MraidView;

    .line 447
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->MRAIDFrame:Landroid/widget/FrameLayout;

    .line 448
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->MRAIDFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->mMRAIDView:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 450
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getCustomEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 451
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->addMRAIDBannerView()V

    .line 454
    :cond_6
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mMRAIDView:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->createMraidListener()Lcom/adsdk/sdk/mraid/MraidView$MraidListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->setMraidListener(Lcom/adsdk/sdk/mraid/MraidView$MraidListener;)V

    .line 455
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mMRAIDView:Lcom/adsdk/sdk/mraid/MraidView;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v1}, Lcom/adsdk/sdk/AdResponse;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->loadHtmlData(Ljava/lang/String;)V

    .line 458
    :cond_7
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 459
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getCustomEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 460
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->notifyNoAd()V

    .line 464
    :cond_8
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getCustomEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 465
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->loadCustomEventBanner()V

    .line 466
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->customEventBanner:Lcom/adsdk/sdk/customevents/CustomEventBanner;

    if-nez v0, :cond_a

    .line 467
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getCustomEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 468
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->customAdListener:Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/customevents/CustomEventBanner$CustomEventBannerListener;->onBannerFailed()V

    .line 474
    :cond_9
    :goto_0
    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/AdView;->startReloadTimer()V

    .line 475
    return-void

    .line 470
    :cond_a
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdResponse;->setRefresh(I)V

    goto :goto_0
.end method

.method private unregisterScreenStateBroadcastReceiver()V
    .locals 2

    .prologue
    .line 618
    :try_start_0
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    :goto_0
    return-void

    .line 619
    :catch_0
    move-exception v0

    .line 620
    const-string v0, "Failed to unregister screen state broadcast receiver (never registered)."

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->unregisterScreenStateBroadcastReceiver()V

    .line 190
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->destroyCustomEventBanner()V

    .line 191
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 192
    return-void
.end method

.method public getRefreshRate()I
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getRefresh()I

    move-result v0

    .line 197
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getRefreshTime()I
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    if-nez v0, :cond_0

    .line 660
    const/4 v0, -0x1

    .line 662
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getRefresh()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_0
.end method

.method public isInternalBrowser()Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/adsdk/sdk/banner/AdView;->isInternalBrowser:Z

    return v0
.end method

.method public loadNextAd()V
    .locals 2

    .prologue
    .line 314
    const-string v0, "ADSDK"

    const-string v1, "load next ad"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->loadContent()V

    .line 316
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 172
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 173
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 174
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 176
    const-string v0, "ADSDK"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 182
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 183
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->unregisterScreenStateBroadcastReceiver()V

    .line 184
    const-string v0, "ADSDK"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3

    .prologue
    .line 395
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 397
    if-nez p1, :cond_0

    .line 398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsdk/sdk/banner/AdView;->mIsInForeground:Z

    .line 399
    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/AdView;->resume()V

    .line 404
    :goto_0
    const-string v0, "ADSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onWindowVisibilityChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    return-void

    .line 401
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/banner/AdView;->mIsInForeground:Z

    .line 402
    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/AdView;->pause()V

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 408
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->reloadTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 410
    :try_start_0
    const-string v0, "ADSDK"

    const-string v1, "cancel reload timer"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/AdView;->stopReloadTimer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 412
    :catch_0
    move-exception v0

    .line 413
    const-string v1, "ADSDK"

    const-string v2, "unable to cancel reloadTimer"

    invoke-static {v1, v2, v0}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 610
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->unregisterScreenStateBroadcastReceiver()V

    .line 611
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->destroyCustomEventBanner()V

    .line 612
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mMRAIDView:Lcom/adsdk/sdk/mraid/MraidView;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mMRAIDView:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->destroy()V

    .line 614
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 625
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->reloadTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->reloadTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 627
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->reloadTimer:Ljava/util/Timer;

    .line 629
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->reloadTimer:Ljava/util/Timer;

    .line 631
    iget-boolean v0, p0, Lcom/adsdk/sdk/banner/AdView;->shouldNotifyClose:Z

    if-eqz v0, :cond_1

    .line 632
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsdk/sdk/banner/AdView;->shouldNotifyClose:Z

    .line 633
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->notifyAdClosed()V

    .line 636
    :cond_1
    const-string v0, "ADSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getRefresh()I

    move-result v0

    if-lez v0, :cond_3

    .line 639
    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/AdView;->startReloadTimer()V

    .line 642
    :cond_2
    :goto_0
    return-void

    .line 640
    :cond_3
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mMRAIDView:Lcom/adsdk/sdk/mraid/MraidView;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mBannerView:Lcom/adsdk/sdk/banner/BannerAdView;

    if-nez v0, :cond_2

    .line 641
    :cond_4
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->loadContent()V

    goto :goto_0
.end method

.method public setAdListener(Lcom/adsdk/sdk/AdListener;)V
    .locals 2

    .prologue
    .line 645
    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView;->adListener:Lcom/adsdk/sdk/AdListener;

    .line 646
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mMRAIDView:Lcom/adsdk/sdk/mraid/MraidView;

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mMRAIDView:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->createMraidListener()Lcom/adsdk/sdk/mraid/MraidView$MraidListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->setMraidListener(Lcom/adsdk/sdk/mraid/MraidView$MraidListener;)V

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mBannerView:Lcom/adsdk/sdk/banner/BannerAdView;

    if-eqz v0, :cond_1

    .line 650
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->mBannerView:Lcom/adsdk/sdk/banner/BannerAdView;

    invoke-direct {p0}, Lcom/adsdk/sdk/banner/AdView;->createBannerAdViewListener()Lcom/adsdk/sdk/banner/BannerAdView$BannerAdViewListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/banner/BannerAdView;->setAdListener(Lcom/adsdk/sdk/banner/BannerAdView$BannerAdViewListener;)V

    .line 652
    :cond_1
    return-void
.end method

.method public setAdspaceHeight(I)V
    .locals 0

    .prologue
    .line 99
    iput p1, p0, Lcom/adsdk/sdk/banner/AdView;->adspaceHeight:I

    .line 100
    return-void
.end method

.method public setAdspaceStrict(Z)V
    .locals 0

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/adsdk/sdk/banner/AdView;->adspaceStrict:Z

    .line 104
    return-void
.end method

.method public setAdspaceWidth(I)V
    .locals 0

    .prologue
    .line 95
    iput p1, p0, Lcom/adsdk/sdk/banner/AdView;->adspaceWidth:I

    .line 96
    return-void
.end method

.method public setInternalBrowser(Z)V
    .locals 0

    .prologue
    .line 655
    iput-boolean p1, p0, Lcom/adsdk/sdk/banner/AdView;->isInternalBrowser:Z

    .line 656
    return-void
.end method

.method public setKeywords(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 704
    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView;->keywords:Ljava/util/List;

    .line 705
    return-void
.end method

.method public setRefreshTime(I)V
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0, p1}, Lcom/adsdk/sdk/AdResponse;->setRefresh(I)V

    .line 668
    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/AdView;->stopReloadTimer()V

    .line 669
    if-lez p1, :cond_0

    .line 670
    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/AdView;->startReloadTimer()V

    .line 672
    :cond_0
    return-void
.end method

.method public setUserAge(I)V
    .locals 0

    .prologue
    .line 700
    iput p1, p0, Lcom/adsdk/sdk/banner/AdView;->userAge:I

    .line 701
    return-void
.end method

.method public setUserGender(Lcom/adsdk/sdk/Gender;)V
    .locals 0

    .prologue
    .line 696
    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView;->userGender:Lcom/adsdk/sdk/Gender;

    .line 697
    return-void
.end method

.method public startReloadTimer()V
    .locals 6

    .prologue
    .line 675
    const-string v0, "ADSDK"

    const-string v1, "start reload timer"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->reloadTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getRefresh()I

    move-result v0

    if-gtz v0, :cond_1

    .line 684
    :cond_0
    :goto_0
    return-void

    .line 679
    :cond_1
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getRefresh()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 680
    const-string v1, "ADSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "set timer: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    new-instance v1, Lcom/adsdk/sdk/banner/ReloadTask;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/banner/ReloadTask;-><init>(Lcom/adsdk/sdk/banner/AdView;)V

    .line 683
    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView;->reloadTimer:Ljava/util/Timer;

    int-to-long v4, v0

    invoke-virtual {v2, v1, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method public stopReloadTimer()V
    .locals 2

    .prologue
    .line 687
    const-string v0, "ADSDK"

    const-string v1, "stop reload timer"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->reloadTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 693
    :goto_0
    return-void

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->reloadTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 692
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsdk/sdk/banner/AdView;->reloadTimer:Ljava/util/Timer;

    goto :goto_0
.end method
