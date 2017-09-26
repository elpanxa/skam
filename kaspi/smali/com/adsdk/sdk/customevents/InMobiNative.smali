.class public Lcom/adsdk/sdk/customevents/InMobiNative;
.super Lcom/adsdk/sdk/customevents/CustomEventNative;
.source "InMobiNative.java"


# static fields
.field private static isInitialized:Z


# instance fields
.field private loadedNative:Lcom/inmobi/monetization/IMNative;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/adsdk/sdk/customevents/CustomEventNative;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/customevents/InMobiNative;Lcom/inmobi/monetization/IMNative;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/adsdk/sdk/customevents/InMobiNative;->loadedNative:Lcom/inmobi/monetization/IMNative;

    return-void
.end method

.method private createListener()Lcom/inmobi/monetization/IMNativeListener;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/adsdk/sdk/customevents/InMobiNative$1;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/customevents/InMobiNative$1;-><init>(Lcom/adsdk/sdk/customevents/InMobiNative;)V

    return-object v0
.end method


# virtual methods
.method public createNativeAd(Landroid/content/Context;Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 24
    iput-object p2, p0, Lcom/adsdk/sdk/customevents/InMobiNative;->listener:Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;

    .line 27
    :try_start_0
    const-string v0, "com.inmobi.commons.InMobi"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 28
    const-string v0, "com.inmobi.monetization.IMErrorCode"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 29
    const-string v0, "com.inmobi.monetization.IMNative"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 30
    const-string v0, "com.inmobi.monetization.IMNativeListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    invoke-virtual {p0, p4}, Lcom/adsdk/sdk/customevents/InMobiNative;->addImpressionTracker(Ljava/lang/String;)V

    .line 40
    sget-boolean v0, Lcom/adsdk/sdk/customevents/InMobiNative;->isInitialized:Z

    if-nez v0, :cond_0

    .line 41
    invoke-static {p1, p3}, Lcom/inmobi/commons/InMobi;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adsdk/sdk/customevents/InMobiNative;->isInitialized:Z

    .line 44
    :cond_0
    new-instance v0, Lcom/inmobi/monetization/IMNative;

    invoke-direct {p0}, Lcom/adsdk/sdk/customevents/InMobiNative;->createListener()Lcom/inmobi/monetization/IMNativeListener;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Lcom/inmobi/monetization/IMNative;-><init>(Ljava/lang/String;Lcom/inmobi/monetization/IMNativeListener;)V

    .line 45
    invoke-virtual {v0}, Lcom/inmobi/monetization/IMNative;->loadAd()V

    .line 46
    :cond_1
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    if-eqz p2, :cond_1

    .line 33
    invoke-interface {p2}, Lcom/adsdk/sdk/customevents/CustomEventNative$CustomEventNativeListener;->onCustomEventNativeFailed()V

    goto :goto_0
.end method

.method public handleClick()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiNative;->loadedNative:Lcom/inmobi/monetization/IMNative;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/monetization/IMNative;->handleClick(Ljava/util/HashMap;)V

    .line 124
    return-void
.end method

.method public prepareImpression(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 114
    if-eqz p1, :cond_1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/adsdk/sdk/customevents/InMobiNative;->loadedNative:Lcom/inmobi/monetization/IMNative;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Lcom/inmobi/monetization/IMNative;->attachToView(Landroid/view/ViewGroup;)V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 117
    iget-object v1, p0, Lcom/adsdk/sdk/customevents/InMobiNative;->loadedNative:Lcom/inmobi/monetization/IMNative;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Lcom/inmobi/monetization/IMNative;->attachToView(Landroid/view/ViewGroup;)V

    goto :goto_0
.end method
