.class public Lcom/adsdk/sdk/banner/BannerAdView;
.super Landroid/widget/RelativeLayout;
.source "BannerAdView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor",
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adsdk/sdk/banner/BannerAdView$BannerAdViewListener;
    }
.end annotation


# static fields
.field public static final LIVE:I = 0x0

.field public static final TEST:I = 0x1

.field private static mWebView_LAYER_TYPE_SOFTWARE:Ljava/lang/reflect/Field;

.field private static mWebView_SetLayerType:Ljava/lang/reflect/Method;


# instance fields
.field private adListener:Lcom/adsdk/sdk/banner/BannerAdView$BannerAdViewListener;

.field private animation:Z

.field private fadeInAnimation:Landroid/view/animation/Animation;

.field private height:I

.field private isInternalBrowser:Z

.field private mContext:Landroid/content/Context;

.field protected mIsInForeground:Z

.field private response:Lcom/adsdk/sdk/AdResponse;

.field private wasUserAction:Z

.field private webSettings:Landroid/webkit/WebSettings;

.field private webView:Landroid/webkit/WebView;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 187
    invoke-static {}, Lcom/adsdk/sdk/banner/BannerAdView;->initCompatibility()V

    .line 188
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/adsdk/sdk/AdResponse;IIZLcom/adsdk/sdk/banner/BannerAdView$BannerAdViewListener;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 45
    iput-boolean v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->isInternalBrowser:Z

    .line 46
    iput-boolean v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->wasUserAction:Z

    .line 49
    iput-object v1, p0, Lcom/adsdk/sdk/banner/BannerAdView;->fadeInAnimation:Landroid/view/animation/Animation;

    .line 53
    iput-object v1, p0, Lcom/adsdk/sdk/banner/BannerAdView;->mContext:Landroid/content/Context;

    .line 68
    iput-object p1, p0, Lcom/adsdk/sdk/banner/BannerAdView;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/adsdk/sdk/banner/BannerAdView;->response:Lcom/adsdk/sdk/AdResponse;

    .line 70
    iput p3, p0, Lcom/adsdk/sdk/banner/BannerAdView;->width:I

    .line 71
    iput p4, p0, Lcom/adsdk/sdk/banner/BannerAdView;->height:I

    .line 72
    iput-boolean p5, p0, Lcom/adsdk/sdk/banner/BannerAdView;->animation:Z

    .line 73
    iput-object p6, p0, Lcom/adsdk/sdk/banner/BannerAdView;->adListener:Lcom/adsdk/sdk/banner/BannerAdView$BannerAdViewListener;

    .line 74
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/banner/BannerAdView;->initialize(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/banner/BannerAdView;Z)V
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/adsdk/sdk/banner/BannerAdView;->wasUserAction:Z

    return-void
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/banner/BannerAdView;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->wasUserAction:Z

    return v0
.end method

.method static synthetic access$2(Lcom/adsdk/sdk/banner/BannerAdView;)Lcom/adsdk/sdk/AdResponse;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->response:Lcom/adsdk/sdk/AdResponse;

    return-object v0
.end method

.method static synthetic access$3(Lcom/adsdk/sdk/banner/BannerAdView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/banner/BannerAdView;->doOpenUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/adsdk/sdk/banner/BannerAdView;)V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/BannerAdView;->openLink()V

    return-void
.end method

.method private buildBannerView()V
    .locals 9

    .prologue
    const/4 v7, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/high16 v6, 0x3f000000    # 0.5f

    .line 230
    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/adsdk/sdk/banner/BannerAdView;->createWebView(Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->webView:Landroid/webkit/WebView;

    .line 231
    const-string v0, "ADSDK"

    const-string v3, "Create view flipper"

    invoke-static {v0, v3}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 233
    iget v3, p0, Lcom/adsdk/sdk/banner/BannerAdView;->width:I

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/adsdk/sdk/banner/BannerAdView;->height:I

    if-eqz v3, :cond_1

    .line 234
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/adsdk/sdk/banner/BannerAdView;->width:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget v5, p0, Lcom/adsdk/sdk/banner/BannerAdView;->height:I

    int-to-float v5, v5

    mul-float/2addr v0, v5

    add-float/2addr v0, v6

    float-to-int v0, v0

    invoke-direct {v3, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3}, Lcom/adsdk/sdk/banner/BannerAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    :goto_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 241
    iget-object v3, p0, Lcom/adsdk/sdk/banner/BannerAdView;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v3, v0}, Lcom/adsdk/sdk/banner/BannerAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    const-string v0, "ADSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "animation: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/adsdk/sdk/banner/BannerAdView;->animation:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-boolean v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->animation:Z

    if-eqz v0, :cond_0

    .line 246
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    .line 247
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 246
    iput-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->fadeInAnimation:Landroid/view/animation/Animation;

    .line 248
    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->fadeInAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 256
    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/BannerAdView;->fadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 258
    :cond_0
    return-void

    .line 236
    :cond_1
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v4, 0x43960000    # 300.0f

    mul-float/2addr v4, v0

    add-float/2addr v4, v6

    float-to-int v4, v4

    const/high16 v5, 0x42480000    # 50.0f

    mul-float/2addr v0, v5

    add-float/2addr v0, v6

    float-to-int v0, v0

    invoke-direct {v3, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3}, Lcom/adsdk/sdk/banner/BannerAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private createWebView(Landroid/content/Context;)Landroid/webkit/WebView;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 78
    new-instance v0, Lcom/adsdk/sdk/banner/BannerAdView$1;

    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/adsdk/sdk/banner/BannerAdView$1;-><init>(Lcom/adsdk/sdk/banner/BannerAdView;Landroid/content/Context;)V

    .line 93
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/adsdk/sdk/banner/BannerAdView;->webSettings:Landroid/webkit/WebSettings;

    .line 94
    iget-object v1, p0, Lcom/adsdk/sdk/banner/BannerAdView;->webSettings:Landroid/webkit/WebSettings;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 95
    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 96
    invoke-static {v0}, Lcom/adsdk/sdk/banner/BannerAdView;->setLayer(Landroid/webkit/WebView;)V

    .line 98
    new-instance v1, Lcom/adsdk/sdk/banner/BannerAdView$2;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/banner/BannerAdView$2;-><init>(Lcom/adsdk/sdk/banner/BannerAdView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 116
    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 117
    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 119
    return-object v0
.end method

.method private doOpenUrl(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->adListener:Lcom/adsdk/sdk/banner/BannerAdView$BannerAdViewListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/banner/BannerAdView$BannerAdViewListener;->onClick()V

    .line 124
    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getClickUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getSkipOverlay()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getClickUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adsdk/sdk/banner/BannerAdView;->makeTrackingRequest(Ljava/lang/String;)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getClickType()Lcom/adsdk/sdk/data/ClickType;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getClickType()Lcom/adsdk/sdk/data/ClickType;

    move-result-object v0

    sget-object v1, Lcom/adsdk/sdk/data/ClickType;->INAPP:Lcom/adsdk/sdk/data/ClickType;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/data/ClickType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 129
    :cond_1
    const-string v0, ".mp4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "video/mp4"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    invoke-direct {p0, v0}, Lcom/adsdk/sdk/banner/BannerAdView;->startActivity(Landroid/content/Intent;)V

    .line 145
    :goto_0
    return-void

    .line 135
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/adsdk/sdk/banner/InAppWebView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    const-string v1, "REDIRECT_URI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    invoke-direct {p0, v0}, Lcom/adsdk/sdk/banner/BannerAdView;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 141
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 142
    invoke-direct {p0, v0}, Lcom/adsdk/sdk/banner/BannerAdView;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static initCompatibility()V
    .locals 6

    .prologue
    .line 192
    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 199
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set layer "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/adsdk/sdk/banner/BannerAdView;->mWebView_SetLayerType:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    .line 200
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "LAYER_TYPE_SOFTWARE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/adsdk/sdk/banner/BannerAdView;->mWebView_LAYER_TYPE_SOFTWARE:Ljava/lang/reflect/Field;

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set1 layer "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/adsdk/sdk/banner/BannerAdView;->mWebView_LAYER_TYPE_SOFTWARE:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    .line 210
    :goto_2
    return-void

    .line 192
    :cond_0
    aget-object v3, v1, v0

    .line 193
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "setLayerType"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 194
    sput-object v3, Lcom/adsdk/sdk/banner/BannerAdView;->mWebView_SetLayerType:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 203
    :catch_0
    move-exception v0

    .line 205
    const-string v0, "SecurityException"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    goto :goto_2

    .line 192
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    :catch_1
    move-exception v0

    .line 208
    const-string v0, "NoSuchFieldException"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 261
    invoke-static {}, Lcom/adsdk/sdk/banner/BannerAdView;->initCompatibility()V

    .line 262
    invoke-direct {p0}, Lcom/adsdk/sdk/banner/BannerAdView;->buildBannerView()V

    .line 263
    return-void
.end method

.method private makeTrackingRequest(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 158
    new-instance v0, Lcom/adsdk/sdk/banner/BannerAdView$3;

    invoke-direct {v0, p0, p1}, Lcom/adsdk/sdk/banner/BannerAdView$3;-><init>(Lcom/adsdk/sdk/banner/BannerAdView;Ljava/lang/String;)V

    .line 182
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 184
    return-void
.end method

.method private openLink()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->response:Lcom/adsdk/sdk/AdResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getClickUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getClickUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adsdk/sdk/banner/BannerAdView;->doOpenUrl(Ljava/lang/String;)V

    .line 274
    :cond_0
    return-void
.end method

.method private static setLayer(Landroid/webkit/WebView;)V
    .locals 5

    .prologue
    .line 213
    sget-object v0, Lcom/adsdk/sdk/banner/BannerAdView;->mWebView_SetLayerType:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adsdk/sdk/banner/BannerAdView;->mWebView_LAYER_TYPE_SOFTWARE:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 215
    :try_start_0
    const-string v0, "Set Layer is supported"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    .line 216
    sget-object v0, Lcom/adsdk/sdk/banner/BannerAdView;->mWebView_SetLayerType:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/adsdk/sdk/banner/BannerAdView;->mWebView_LAYER_TYPE_SOFTWARE:Ljava/lang/reflect/Field;

    const-class v4, Landroid/webkit/WebView;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 227
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    const-string v0, "Set InvocationTargetException"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :catch_1
    move-exception v0

    .line 220
    const-string v0, "Set IllegalArgumentException"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :catch_2
    move-exception v0

    .line 222
    const-string v0, "Set IllegalAccessException"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_0
    const-string v0, "Set Layer is not supported"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startActivity(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 152
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/adsdk/sdk/banner/BannerAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 155
    return-void
.end method


# virtual methods
.method public isInternalBrowser()Z
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->isInternalBrowser:Z

    return v0
.end method

.method public setAdListener(Lcom/adsdk/sdk/banner/BannerAdView$BannerAdViewListener;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/adsdk/sdk/banner/BannerAdView;->adListener:Lcom/adsdk/sdk/banner/BannerAdView$BannerAdViewListener;

    .line 278
    return-void
.end method

.method public setInternalBrowser(Z)V
    .locals 0

    .prologue
    .line 281
    iput-boolean p1, p0, Lcom/adsdk/sdk/banner/BannerAdView;->isInternalBrowser:Z

    .line 282
    return-void
.end method

.method public showContent()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getType()I

    move-result v0

    if-nez v0, :cond_2

    .line 289
    const-string v0, "<body style=\'\"\'margin: 0px; padding: 0px; text-align:center;\'\"\'><img src=\'\"\'{0}\'\"\' width=\'\"\'{1}\'dp\"\' height=\'\"\'{2}\'dp\"\'/></body>"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/adsdk/sdk/banner/BannerAdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v3}, Lcom/adsdk/sdk/AdResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/adsdk/sdk/banner/BannerAdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v3}, Lcom/adsdk/sdk/AdResponse;->getBannerWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/adsdk/sdk/banner/BannerAdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v3}, Lcom/adsdk/sdk/AdResponse;->getBannerHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 290
    const-string v1, "ADSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "set image: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<style>* { -webkit-tap-highlight-color: rgba(0,0,0,0);} img {width:100%;height:100%} body {margin: 0; padding: 0}</style>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    iget-object v1, p0, Lcom/adsdk/sdk/banner/BannerAdView;->webView:Landroid/webkit/WebView;

    const-string v2, "text/html"

    const-string v3, "UTF-8"

    invoke-virtual {v1, v0, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->adListener:Lcom/adsdk/sdk/banner/BannerAdView$BannerAdViewListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/banner/BannerAdView$BannerAdViewListener;->onLoad()V

    .line 300
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->animation:Z

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/BannerAdView;->fadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 306
    :cond_1
    :goto_1
    return-void

    .line 294
    :cond_2
    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v0}, Lcom/adsdk/sdk/AdResponse;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<style>* { -webkit-tap-highlight-color: rgba(0,0,0,0);} img {width:100%;height:100%} body {margin: 0; padding: 0}</style>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsdk/sdk/banner/BannerAdView;->response:Lcom/adsdk/sdk/AdResponse;

    invoke-virtual {v1}, Lcom/adsdk/sdk/AdResponse;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    const-string v1, "ADSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "set text: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Lcom/adsdk/sdk/banner/BannerAdView;->webView:Landroid/webkit/WebView;

    const-string v2, "text/html"

    const-string v3, "UTF-8"

    invoke-virtual {v1, v0, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/adsdk/sdk/banner/BannerAdView;->adListener:Lcom/adsdk/sdk/banner/BannerAdView$BannerAdViewListener;

    invoke-interface {v0}, Lcom/adsdk/sdk/banner/BannerAdView$BannerAdViewListener;->onLoad()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    const-string v1, "ADSDK"

    const-string v2, "Exception in show content"

    invoke-static {v1, v2, v0}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
