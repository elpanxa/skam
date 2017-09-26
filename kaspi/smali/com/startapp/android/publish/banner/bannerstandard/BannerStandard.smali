.class public Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;
.super Landroid/widget/RelativeLayout;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/AdEventListener;
.implements Lcom/startapp/android/publish/BannerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$MyWebViewClient;,
        Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$SavedState;,
        Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$Task;
    }
.end annotation


# static fields
.field private static final ID_WEBVIEW:I = 0x9876541

.field private static final TAG:Ljava/lang/String; = "BannerHtml"

.field private static final TIMEOUT_SMART_REDIRECT:I = 0x1388


# instance fields
.field private adHtml:Lcom/startapp/android/publish/a/b;

.field private adInformationContatiner:Landroid/widget/RelativeLayout;

.field private adInformationLayout:Lcom/startapp/android/publish/adinformation/a;

.field private adPreferences:Lcom/startapp/android/publish/model/AdPreferences;

.field private adRulesResult:Lcom/startapp/android/publish/model/adrules/AdRulesResult;

.field private attachedToWindow:Z

.field private callbackSent:Z

.field private defaultLoad:Z

.field private firstLoad:Z

.field private initBannerCalled:Z

.field private listener:Lcom/startapp/android/publish/banner/BannerListener;

.field private loaded:Z

.field private options:Lcom/startapp/android/publish/banner/BannerOptions;

.field private prevAdId:Ljava/lang/String;

.field private sentImpression:Z

.field private size:Lcom/startapp/android/publish/banner/a;

.field private task:Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$Task;

.field private timer:Ljava/util/Timer;

.field private visible:Z

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 108
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;-><init>(Landroid/content/Context;ZLcom/startapp/android/publish/model/AdPreferences;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 138
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->prevAdId:Ljava/lang/String;

    .line 61
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->loaded:Z

    .line 62
    iput-boolean v2, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->defaultLoad:Z

    .line 63
    iput-boolean v2, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->visible:Z

    .line 64
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->sentImpression:Z

    .line 65
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->attachedToWindow:Z

    .line 66
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->initBannerCalled:Z

    .line 67
    iput-boolean v2, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->firstLoad:Z

    .line 77
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->callbackSent:Z

    .line 79
    iput-object v3, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->adInformationLayout:Lcom/startapp/android/publish/adinformation/a;

    .line 80
    iput-object v3, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->adInformationContatiner:Landroid/widget/RelativeLayout;

    .line 82
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->timer:Ljava/util/Timer;

    .line 105
    new-instance v0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$Task;

    invoke-direct {v0, p0, v3}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$Task;-><init>(Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$1;)V

    iput-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->task:Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$Task;

    .line 139
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->init()V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 143
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->prevAdId:Ljava/lang/String;

    .line 61
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->loaded:Z

    .line 62
    iput-boolean v2, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->defaultLoad:Z

    .line 63
    iput-boolean v2, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->visible:Z

    .line 64
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->sentImpression:Z

    .line 65
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->attachedToWindow:Z

    .line 66
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->initBannerCalled:Z

    .line 67
    iput-boolean v2, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->firstLoad:Z

    .line 77
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->callbackSent:Z

    .line 79
    iput-object v3, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->adInformationLayout:Lcom/startapp/android/publish/adinformation/a;

    .line 80
    iput-object v3, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->adInformationContatiner:Landroid/widget/RelativeLayout;

    .line 82
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->timer:Ljava/util/Timer;

    .line 105
    new-instance v0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$Task;

    invoke-direct {v0, p0, v3}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$Task;-><init>(Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$1;)V

    iput-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->task:Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$Task;

    .line 144
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->init()V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/banner/BannerListener;)V
    .locals 2

    .prologue
    .line 116
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;-><init>(Landroid/content/Context;ZLcom/startapp/android/publish/model/AdPreferences;)V

    .line 117
    invoke-virtual {p0, p2}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->setBannerListener(Lcom/startapp/android/publish/banner/BannerListener;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences;)V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;-><init>(Landroid/content/Context;ZLcom/startapp/android/publish/model/AdPreferences;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/banner/BannerListener;)V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;-><init>(Landroid/content/Context;ZLcom/startapp/android/publish/model/AdPreferences;)V

    .line 122
    invoke-virtual {p0, p3}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->setBannerListener(Lcom/startapp/android/publish/banner/BannerListener;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;-><init>(Landroid/content/Context;ZLcom/startapp/android/publish/model/AdPreferences;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/startapp/android/publish/model/AdPreferences;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 130
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->prevAdId:Ljava/lang/String;

    .line 61
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->loaded:Z

    .line 62
    iput-boolean v2, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->defaultLoad:Z

    .line 63
    iput-boolean v2, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->visible:Z

    .line 64
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->sentImpression:Z

    .line 65
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->attachedToWindow:Z

    .line 66
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->initBannerCalled:Z

    .line 67
    iput-boolean v2, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->firstLoad:Z

    .line 77
    iput-boolean v1, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->callbackSent:Z

    .line 79
    iput-object v3, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->adInformationLayout:Lcom/startapp/android/publish/adinformation/a;

    .line 80
    iput-object v3, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->adInformationContatiner:Landroid/widget/RelativeLayout;

    .line 82
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->timer:Ljava/util/Timer;

    .line 105
    new-instance v0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$Task;

    invoke-direct {v0, p0, v3}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$Task;-><init>(Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$1;)V

    iput-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->task:Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$Task;

    .line 132
    iput-boolean p2, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->defaultLoad:Z

    .line 133
    iput-object p3, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->adPreferences:Lcom/startapp/android/publish/model/AdPreferences;

    .line 134
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->init()V

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->reload()V

    return-void
.end method

.method static synthetic access$200(Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->initBanner()V

    return-void
.end method

.method static synthetic access$500(Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;)Lcom/startapp/android/publish/banner/BannerListener;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->listener:Lcom/startapp/android/publish/banner/BannerListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;)Lcom/startapp/android/publish/a/b;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/a/b;

    return-object v0
.end method

.method static synthetic access$700(Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getAdTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private addAdInformationLayout()V
    .locals 6

    .prologue
    .line 148
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 152
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 153
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->adInformationLayout:Lcom/startapp/android/publish/adinformation/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->adInformationContatiner:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->adInformationContatiner:Landroid/widget/RelativeLayout;

    .line 155
    new-instance v0, Lcom/startapp/android/publish/adinformation/a;

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/startapp/android/publish/adinformation/a$b;->a:Lcom/startapp/android/publish/adinformation/a$b;

    sget-object v4, Lcom/startapp/android/publish/model/AdPreferences$Placement;->INAPP_BANNER:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    iget-object v5, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/a/b;

    invoke-virtual {v5}, Lcom/startapp/android/publish/a/b;->getAdInfoOverride()Lcom/startapp/android/publish/adinformation/b;

    move-result-object v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/startapp/android/publish/adinformation/a;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/adinformation/a$b;Lcom/startapp/android/publish/model/AdPreferences$Placement;Lcom/startapp/android/publish/adinformation/b;)V

    iput-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->adInformationLayout:Lcom/startapp/android/publish/adinformation/a;

    .line 156
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->adInformationLayout:Lcom/startapp/android/publish/adinformation/a;

    iget-object v2, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->adInformationContatiner:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Lcom/startapp/android/publish/adinformation/a;->a(Landroid/widget/RelativeLayout;)V

    .line 161
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->adInformationContatiner:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 162
    if-eqz v0, :cond_1

    .line 163
    iget-object v2, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->adInformationContatiner:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->adInformationContatiner:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v1}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    return-void

    .line 165
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private cancelReloadTask()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 667
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 668
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->task:Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$Task;

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->task:Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$Task;

    invoke-virtual {v0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$Task;->cancel()Z

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 672
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 674
    :cond_1
    iput-object v1, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->task:Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$Task;

    .line 675
    iput-object v1, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->timer:Ljava/util/Timer;

    .line 677
    :cond_2
    return-void
.end method

.method private determineSizeByScreen(Landroid/graphics/Point;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/startapp/android/publish/h/t;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->setPointWidthIfNotSet(Landroid/graphics/Point;I)V

    .line 467
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/startapp/android/publish/h/t;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->setPointHeightIfNotSet(Landroid/graphics/Point;I)V

    .line 468
    return-void
.end method

.method private getAdTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAvailableSize()Landroid/graphics/Point;
    .locals 6

    .prologue
    .line 408
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 409
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v0, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/startapp/android/publish/h/t;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, v2, Landroid/graphics/Point;->x:I

    .line 412
    :cond_0
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_1

    .line 413
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/startapp/android/publish/h/t;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, v2, Landroid/graphics/Point;->y:I

    .line 415
    :cond_1
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gtz v0, :cond_8

    .line 416
    :cond_2
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 417
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_a

    .line 418
    check-cast v0, Landroid/app/Activity;

    .line 419
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 422
    :try_start_0
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 424
    check-cast v0, Landroid/view/View;

    .line 425
    instance-of v3, v0, Lcom/startapp/android/publish/banner/Banner;

    if-eqz v3, :cond_3

    .line 426
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    check-cast v0, Landroid/view/View;

    .line 428
    :cond_3
    :goto_0
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-gtz v3, :cond_7

    .line 429
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-lez v3, :cond_5

    .line 430
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/startapp/android/publish/h/t;->b(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->setPointWidthIfNotSet(Landroid/graphics/Point;I)V

    .line 432
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-lez v3, :cond_6

    .line 433
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/startapp/android/publish/h/t;->b(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->setPointHeightIfNotSet(Landroid/graphics/Point;I)V

    .line 435
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 437
    :cond_7
    if-nez v0, :cond_9

    .line 438
    invoke-direct {p0, v2, v1}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->determineSizeByScreen(Landroid/graphics/Point;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :cond_8
    :goto_1
    const-string v0, "BannerHtml"

    const/4 v1, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BannerHtml============ exit Application Size ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] ========="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 462
    return-object v2

    .line 440
    :cond_9
    :try_start_1
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/startapp/android/publish/h/t;->b(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->setPointWidthIfNotSet(Landroid/graphics/Point;I)V

    .line 441
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int v0, v4, v0

    invoke-static {v3, v0}, Lcom/startapp/android/publish/h/t;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->setPointHeightIfNotSet(Landroid/graphics/Point;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 443
    :catch_0
    move-exception v0

    .line 447
    invoke-direct {p0, v2, v1}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->determineSizeByScreen(Landroid/graphics/Point;Landroid/view/View;)V

    goto :goto_1

    .line 451
    :cond_a
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "window"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 452
    const/16 v3, 0x12c

    invoke-direct {p0, v2, v3}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->setPointWidthIfNotSet(Landroid/graphics/Point;I)V

    .line 453
    const/16 v3, 0x32

    invoke-direct {p0, v2, v3}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->setPointHeightIfNotSet(Landroid/graphics/Point;I)V

    .line 454
    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    .line 455
    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/b;->a(Landroid/content/Context;Landroid/view/WindowManager;Landroid/graphics/Point;)V

    goto/16 :goto_1
.end method

.method private init()V
    .locals 6

    .prologue
    const/16 v5, 0x12c

    const/16 v4, 0x32

    const/4 v3, -0x2

    const/16 v1, 0xa9

    const/4 v2, 0x0

    .line 187
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    .line 189
    new-instance v0, Lcom/startapp/android/publish/banner/BannerOptions;

    invoke-direct {v0}, Lcom/startapp/android/publish/banner/BannerOptions;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->options:Lcom/startapp/android/publish/banner/BannerOptions;

    .line 190
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->adPreferences:Lcom/startapp/android/publish/model/AdPreferences;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Lcom/startapp/android/publish/model/AdPreferences;

    invoke-direct {v0}, Lcom/startapp/android/publish/model/AdPreferences;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->adPreferences:Lcom/startapp/android/publish/model/AdPreferences;

    .line 193
    :cond_0
    new-instance v0, Lcom/startapp/android/publish/banner/a;

    invoke-direct {v0, v5, v4}, Lcom/startapp/android/publish/banner/a;-><init>(II)V

    iput-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->size:Lcom/startapp/android/publish/banner/a;

    .line 195
    new-instance v0, Lcom/startapp/android/publish/a/b;

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/startapp/android/publish/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/a/b;

    .line 196
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    const v1, 0x9876541

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setId(I)V

    .line 197
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 200
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 201
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 202
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 203
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$1;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$1;-><init>(Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 209
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$2;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$2;-><init>(Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 215
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setLongClickable(Z)V

    .line 217
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/MetaData;->getBannerOptionsCopy()Lcom/startapp/android/publish/banner/BannerOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->options:Lcom/startapp/android/publish/banner/BannerOptions;

    .line 219
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$3;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$3;-><init>(Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 242
    :goto_0
    return-void

    .line 228
    :cond_1
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->setMinimumWidth(I)V

    .line 229
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->setMinimumHeight(I)V

    .line 230
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->setBackgroundColor(I)V

    .line 232
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 233
    const-string v1, "StartApp Standard Banner"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 238
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 240
    invoke-virtual {p0, v0, v1}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private initBanner()V
    .locals 10

    .prologue
    const/16 v9, 0xd

    const/4 v8, 0x3

    .line 258
    iget-boolean v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->initBannerCalled:Z

    if-eqz v0, :cond_0

    .line 304
    :goto_0
    return-void

    .line 261
    :cond_0
    const-string v0, "BannerHtml"

    const-string v1, "BannerHtmlInitializing BannerHtml"

    invoke-static {v0, v8, v1}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->initBannerCalled:Z

    .line 264
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->size:Lcom/startapp/android/publish/banner/a;

    invoke-virtual {v1}, Lcom/startapp/android/publish/banner/a;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v0

    .line 265
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->size:Lcom/startapp/android/publish/banner/a;

    invoke-virtual {v2}, Lcom/startapp/android/publish/banner/a;->b()I

    move-result v2

    invoke-static {v1, v2}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v1

    .line 268
    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->setMinimumWidth(I)V

    .line 269
    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->setMinimumHeight(I)V

    .line 270
    iget-object v2, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/startapp/android/publish/JsInterface;

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$5;

    invoke-direct {v5, p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$5;-><init>(Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;)V

    new-instance v6, Lcom/startapp/android/publish/h/s;

    invoke-direct {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getAdTag()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/startapp/android/publish/h/s;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, v5, v6}, Lcom/startapp/android/publish/JsInterface;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Lcom/startapp/android/publish/h/s;)V

    const-string v4, "startappwall"

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    iget-object v2, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$MyWebViewClient;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$MyWebViewClient;-><init>(Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$1;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 282
    iget-boolean v2, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->loaded:Z

    if-nez v2, :cond_2

    .line 283
    iget-boolean v2, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->defaultLoad:Z

    if-eqz v2, :cond_1

    .line 284
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->load()V

    .line 291
    :cond_1
    :goto_1
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 292
    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 294
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 295
    iget-object v1, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 298
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 299
    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 300
    invoke-virtual {p0, v0, v1}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 287
    :cond_2
    const-string v2, "BannerHtml"

    const-string v3, "BannerHtmlBannerHTML already Loaded"

    invoke-static {v2, v8, v3}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 288
    iget-object v2, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/a/b;

    invoke-virtual {p0, v2}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->onReceiveAd(Lcom/startapp/android/publish/Ad;)V

    goto :goto_1

    .line 302
    :cond_3
    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method private loadBanner()V
    .locals 0

    .prologue
    .line 399
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->scheduleReloadTask()V

    .line 400
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->reload()V

    .line 401
    return-void
.end method

.method private loadHtml()V
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/a/b;

    invoke-virtual {v1}, Lcom/startapp/android/publish/a/b;->getHtml()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/startapp/android/publish/h/u;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method private makeImpression()V
    .locals 4

    .prologue
    .line 550
    iget-boolean v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->sentImpression:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->visible:Z

    if-eqz v0, :cond_0

    .line 552
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/a/b;

    invoke-virtual {v1}, Lcom/startapp/android/publish/a/b;->getTrackingUrls()[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/startapp/android/publish/h/s;

    invoke-direct {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getAdTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/startapp/android/publish/h/s;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/startapp/android/publish/h/s;)V

    .line 553
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->sentImpression:Z

    .line 555
    :cond_0
    return-void
.end method

.method private onFailedToReceiveBanner()V
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->listener:Lcom/startapp/android/publish/banner/BannerListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->callbackSent:Z

    if-nez v0, :cond_0

    .line 539
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->callbackSent:Z

    .line 540
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->listener:Lcom/startapp/android/publish/banner/BannerListener;

    invoke-interface {v0, p0}, Lcom/startapp/android/publish/banner/BannerListener;->onFailedToReceiveAd(Landroid/view/View;)V

    .line 542
    :cond_0
    return-void
.end method

.method private reload()V
    .locals 3

    .prologue
    .line 307
    const-string v0, "BannerHtml"

    const/4 v1, 0x3

    const-string v2, "BannerHtmlLoading from network"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->sentImpression:Z

    .line 311
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->adPreferences:Lcom/startapp/android/publish/model/AdPreferences;

    if-nez v0, :cond_0

    .line 312
    new-instance v0, Lcom/startapp/android/publish/model/AdPreferences;

    invoke-direct {v0}, Lcom/startapp/android/publish/model/AdPreferences;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->adPreferences:Lcom/startapp/android/publish/model/AdPreferences;

    .line 315
    :cond_0
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getAvailableSize()Landroid/graphics/Point;

    move-result-object v0

    .line 316
    iget-object v1, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/a/b;

    sget-object v2, Lcom/startapp/android/publish/Ad$AdState;->UN_INITIALIZED:Lcom/startapp/android/publish/Ad$AdState;

    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/a/b;->setState(Lcom/startapp/android/publish/Ad$AdState;)V

    .line 317
    iget-object v1, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/a/b;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v0}, Lcom/startapp/android/publish/a/b;->setSize(II)V

    .line 319
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/a/b;

    iget-object v1, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->adPreferences:Lcom/startapp/android/publish/model/AdPreferences;

    invoke-virtual {v0, v1, p0}, Lcom/startapp/android/publish/a/b;->load(Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)Z

    .line 320
    return-void
.end method

.method private scheduleReloadTask()V
    .locals 6

    .prologue
    .line 651
    iget-boolean v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->attachedToWindow:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 655
    :cond_1
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->task:Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$Task;

    if-eqz v0, :cond_2

    .line 656
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->task:Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$Task;

    invoke-virtual {v0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$Task;->cancel()Z

    .line 658
    :cond_2
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_3

    .line 659
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 661
    :cond_3
    new-instance v0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$Task;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$Task;-><init>(Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$1;)V

    iput-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->task:Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$Task;

    .line 662
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->timer:Ljava/util/Timer;

    .line 663
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->task:Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$Task;

    iget-object v2, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->options:Lcom/startapp/android/publish/banner/BannerOptions;

    invoke-virtual {v2}, Lcom/startapp/android/publish/banner/BannerOptions;->h()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->options:Lcom/startapp/android/publish/banner/BannerOptions;

    invoke-virtual {v4}, Lcom/startapp/android/publish/banner/BannerOptions;->h()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method private setPointHeightIfNotSet(Landroid/graphics/Point;I)V
    .locals 1

    .prologue
    .line 477
    iget v0, p1, Landroid/graphics/Point;->y:I

    if-gtz v0, :cond_0

    .line 478
    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 480
    :cond_0
    return-void
.end method

.method private setPointWidthIfNotSet(Landroid/graphics/Point;I)V
    .locals 1

    .prologue
    .line 471
    iget v0, p1, Landroid/graphics/Point;->x:I

    if-gtz v0, :cond_0

    .line 472
    iput p2, p1, Landroid/graphics/Point;->x:I

    .line 474
    :cond_0
    return-void
.end method

.method private setSize(II)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 559
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getAvailableSize()Landroid/graphics/Point;

    move-result-object v0

    .line 561
    iget v2, v0, Landroid/graphics/Point;->x:I

    if-lt v2, p1, :cond_1

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-lt v0, p2, :cond_1

    .line 562
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->size:Lcom/startapp/android/publish/banner/a;

    invoke-virtual {v0, p1, p2}, Lcom/startapp/android/publish/banner/a;->a(II)V

    .line 564
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->size:Lcom/startapp/android/publish/banner/a;

    invoke-virtual {v1}, Lcom/startapp/android/publish/banner/a;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v1

    .line 565
    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->size:Lcom/startapp/android/publish/banner/a;

    invoke-virtual {v2}, Lcom/startapp/android/publish/banner/a;->b()I

    move-result v2

    invoke-static {v0, v2}, Lcom/startapp/android/publish/h/t;->a(Landroid/content/Context;I)I

    move-result v2

    .line 568
    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->setMinimumWidth(I)V

    .line 569
    invoke-virtual {p0, v2}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->setMinimumHeight(I)V

    .line 571
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 572
    if-nez v0, :cond_0

    .line 573
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 579
    :goto_0
    iget-object v1, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 580
    const/4 v0, 0x1

    .line 595
    :goto_1
    return v0

    .line 575
    :cond_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 576
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 585
    :cond_1
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 587
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 588
    if-nez v0, :cond_2

    .line 589
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 594
    :goto_2
    iget-object v2, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v0, v1

    .line 595
    goto :goto_1

    .line 591
    :cond_2
    iget v3, v2, Landroid/graphics/Point;->x:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 592
    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2
.end method


# virtual methods
.method public hideBanner()V
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->visible:Z

    .line 174
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->setVisibility(I)V

    .line 175
    return-void
.end method

.method public load()V
    .locals 3

    .prologue
    .line 382
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->adRulesResult:Lcom/startapp/android/publish/model/adrules/AdRulesResult;

    if-nez v0, :cond_2

    .line 383
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getAdTag()Ljava/lang/String;

    move-result-object v0

    .line 384
    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/model/MetaData;->getAdRules()Lcom/startapp/android/publish/model/adrules/AdRules;

    move-result-object v1

    sget-object v2, Lcom/startapp/android/publish/model/AdPreferences$Placement;->INAPP_BANNER:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    invoke-virtual {v1, v2, v0}, Lcom/startapp/android/publish/model/adrules/AdRules;->shouldDisplayAd(Lcom/startapp/android/publish/model/AdPreferences$Placement;Ljava/lang/String;)Lcom/startapp/android/publish/model/adrules/AdRulesResult;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->adRulesResult:Lcom/startapp/android/publish/model/adrules/AdRulesResult;

    .line 385
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->adRulesResult:Lcom/startapp/android/publish/model/adrules/AdRulesResult;

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/adrules/AdRulesResult;->shouldDisplayAd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->loadBanner()V

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    invoke-static {}, Lcom/startapp/android/publish/d;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    invoke-static {}, Lcom/startapp/android/publish/h/r;->a()Lcom/startapp/android/publish/h/r;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->adRulesResult:Lcom/startapp/android/publish/model/adrules/AdRulesResult;

    invoke-virtual {v2}, Lcom/startapp/android/publish/model/adrules/AdRulesResult;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/startapp/android/publish/h/r;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 393
    :cond_2
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->adRulesResult:Lcom/startapp/android/publish/model/adrules/AdRulesResult;

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/adrules/AdRulesResult;->shouldDisplayAd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->loadBanner()V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 681
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 682
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->attachedToWindow:Z

    .line 683
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->scheduleReloadTask()V

    .line 684
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 688
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 689
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->attachedToWindow:Z

    .line 690
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->cancelReloadTask()V

    .line 691
    return-void
.end method

.method public onFailedToReceiveAd(Lcom/startapp/android/publish/Ad;)V
    .locals 0

    .prologue
    .line 601
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->onFailedToReceiveBanner()V

    .line 602
    return-void
.end method

.method public onReceiveAd(Lcom/startapp/android/publish/Ad;)V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 484
    const-string v0, "BannerHtml"

    const-string v1, "BannerHtml Html Ad Recievied OK"

    invoke-static {v0, v6, v1}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->adInformationContatiner:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->removeView(Landroid/view/View;)V

    .line 487
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/a/b;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/a/b;

    invoke-virtual {v0}, Lcom/startapp/android/publish/a/b;->getHtml()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/a/b;

    invoke-virtual {v0}, Lcom/startapp/android/publish/a/b;->getHtml()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_7

    .line 489
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/a/b;

    invoke-virtual {v0}, Lcom/startapp/android/publish/a/b;->getHtml()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@adId@"

    const-string v2, "@adId@"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 490
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->prevAdId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->prevAdId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_6

    .line 491
    :cond_0
    iput-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->prevAdId:Ljava/lang/String;

    .line 493
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->loadHtml()V

    .line 496
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/a/b;

    invoke-virtual {v0}, Lcom/startapp/android/publish/a/b;->getHtml()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@width@"

    const-string v2, "@width@"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 497
    iget-object v1, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->adHtml:Lcom/startapp/android/publish/a/b;

    invoke-virtual {v1}, Lcom/startapp/android/publish/a/b;->getHtml()Ljava/lang/String;

    move-result-object v1

    const-string v2, "@height@"

    const-string v3, "@height@"

    invoke-static {v1, v2, v3}, Lcom/startapp/android/publish/h/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 500
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->setSize(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 501
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->loaded:Z

    .line 502
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->addAdInformationLayout()V

    .line 503
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->makeImpression()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    :goto_0
    iget-boolean v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->firstLoad:Z

    if-eqz v0, :cond_1

    .line 517
    iput-boolean v4, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->firstLoad:Z

    .line 518
    invoke-static {}, Lcom/startapp/android/publish/model/adrules/SessionManager;->getInstance()Lcom/startapp/android/publish/model/adrules/SessionManager;

    move-result-object v0

    new-instance v1, Lcom/startapp/android/publish/model/adrules/AdDisplayEvent;

    sget-object v2, Lcom/startapp/android/publish/model/AdPreferences$Placement;->INAPP_BANNER:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    invoke-direct {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->getAdTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/startapp/android/publish/model/adrules/AdDisplayEvent;-><init>(Lcom/startapp/android/publish/model/AdPreferences$Placement;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/model/adrules/SessionManager;->addAdDisplayEvent(Lcom/startapp/android/publish/model/adrules/AdDisplayEvent;)V

    .line 520
    :cond_1
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->listener:Lcom/startapp/android/publish/banner/BannerListener;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->callbackSent:Z

    if-nez v0, :cond_2

    .line 521
    iput-boolean v5, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->callbackSent:Z

    .line 522
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->listener:Lcom/startapp/android/publish/banner/BannerListener;

    invoke-interface {v0, p0}, Lcom/startapp/android/publish/banner/BannerListener;->onReceiveAd(Landroid/view/View;)V

    .line 529
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->loaded:Z

    if-eqz v0, :cond_4

    .line 530
    iget-boolean v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->visible:Z

    if-eqz v0, :cond_3

    .line 531
    invoke-virtual {p0, v4}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->setVisibility(I)V

    .line 533
    :cond_3
    const-string v0, "BannerHtml"

    const-string v1, "BannerHtmlDone Loading HTML Banner"

    invoke-static {v0, v6, v1}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 535
    :cond_4
    return-void

    .line 505
    :cond_5
    :try_start_1
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->onFailedToReceiveBanner()V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 508
    :catch_0
    move-exception v0

    .line 509
    const-string v0, "BannerHtml"

    const-string v1, "BannerHtmlError Casting width & height from HTML"

    invoke-static {v0, v7, v1}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 510
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->onFailedToReceiveBanner()V

    goto :goto_0

    .line 513
    :cond_6
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->addAdInformationLayout()V

    .line 514
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->makeImpression()V

    goto :goto_0

    .line 525
    :cond_7
    const-string v0, "BannerHtml"

    const-string v1, "BannerHtmlNo Banner recieved"

    invoke-static {v0, v7, v1}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 526
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->onFailedToReceiveBanner()V

    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 333
    instance-of v0, p1, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$SavedState;

    if-nez v0, :cond_0

    .line 334
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 341
    :goto_0
    return-void

    .line 337
    :cond_0
    check-cast p1, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$SavedState;

    .line 338
    iget-boolean v0, p1, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$SavedState;->firstLoad:Z

    iput-boolean v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->firstLoad:Z

    .line 339
    iget-object v0, p1, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$SavedState;->adRulesResult:Lcom/startapp/android/publish/model/adrules/AdRulesResult;

    iput-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->adRulesResult:Lcom/startapp/android/publish/model/adrules/AdRulesResult;

    .line 340
    invoke-virtual {p1}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 324
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 325
    new-instance v1, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$SavedState;

    invoke-direct {v1, v0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 326
    iget-boolean v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->firstLoad:Z

    iput-boolean v0, v1, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$SavedState;->firstLoad:Z

    .line 327
    iget-object v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->adRulesResult:Lcom/startapp/android/publish/model/adrules/AdRulesResult;

    iput-object v0, v1, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$SavedState;->adRulesResult:Lcom/startapp/android/publish/model/adrules/AdRulesResult;

    .line 328
    return-object v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 695
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 696
    if-eqz p1, :cond_0

    .line 697
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->attachedToWindow:Z

    .line 698
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->scheduleReloadTask()V

    .line 703
    :goto_0
    return-void

    .line 700
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->attachedToWindow:Z

    .line 701
    invoke-direct {p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->cancelReloadTask()V

    goto :goto_0
.end method

.method public setBannerListener(Lcom/startapp/android/publish/banner/BannerListener;)V
    .locals 0

    .prologue
    .line 707
    iput-object p1, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->listener:Lcom/startapp/android/publish/banner/BannerListener;

    .line 708
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 246
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v0, :cond_0

    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_0

    .line 248
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$4;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard$4;-><init>(Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 255
    :cond_0
    return-void
.end method

.method public showBanner()V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->visible:Z

    .line 179
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/banner/bannerstandard/BannerStandard;->setVisibility(I)V

    .line 180
    return-void
.end method
