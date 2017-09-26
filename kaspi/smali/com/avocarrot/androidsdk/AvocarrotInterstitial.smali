.class public Lcom/avocarrot/androidsdk/AvocarrotInterstitial;
.super Lcom/avocarrot/androidsdk/BaseController;
.source "AvocarrotInterstitial.java"

# interfaces
.implements Lcom/avocarrot/androidsdk/CarouselListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avocarrot/androidsdk/AvocarrotInterstitial$InterstitialViewHolder;,
        Lcom/avocarrot/androidsdk/AvocarrotInterstitial$InterstitialClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avocarrot/androidsdk/BaseController",
        "<",
        "Lcom/avocarrot/androidsdk/AvocarrotInterstitialListener;",
        ">;",
        "Lcom/avocarrot/androidsdk/CarouselListener;"
    }
.end annotation


# instance fields
.field final INTERSTITIAL_FRAGMENT_TAG:Ljava/lang/String;

.field carousel:Lcom/avocarrot/androidsdk/Carousel;

.field closeListener:Landroid/view/View$OnClickListener;

.field enableCarousel:Z

.field pressBack:Landroid/view/View$OnKeyListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/avocarrot/androidsdk/BaseController;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v0, "AVOCARROT_INTERSTITIAL_FRAGMENT"

    iput-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->INTERSTITIAL_FRAGMENT_TAG:Ljava/lang/String;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->enableCarousel:Z

    .line 120
    new-instance v0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$1;

    invoke-direct {v0, p0}, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$1;-><init>(Lcom/avocarrot/androidsdk/AvocarrotInterstitial;)V

    iput-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->pressBack:Landroid/view/View$OnKeyListener;

    .line 131
    new-instance v0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$2;

    invoke-direct {v0, p0}, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$2;-><init>(Lcom/avocarrot/androidsdk/AvocarrotInterstitial;)V

    iput-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->closeListener:Landroid/view/View$OnClickListener;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/avocarrot/androidsdk/BaseController;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v0, "AVOCARROT_INTERSTITIAL_FRAGMENT"

    iput-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->INTERSTITIAL_FRAGMENT_TAG:Ljava/lang/String;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->enableCarousel:Z

    .line 120
    new-instance v0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$1;

    invoke-direct {v0, p0}, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$1;-><init>(Lcom/avocarrot/androidsdk/AvocarrotInterstitial;)V

    iput-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->pressBack:Landroid/view/View$OnKeyListener;

    .line 131
    new-instance v0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$2;

    invoke-direct {v0, p0}, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$2;-><init>(Lcom/avocarrot/androidsdk/AvocarrotInterstitial;)V

    iput-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->closeListener:Landroid/view/View$OnClickListener;

    .line 46
    return-void
.end method


# virtual methods
.method public bridge synthetic clear()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Lcom/avocarrot/androidsdk/BaseController;->clear()V

    return-void
.end method

.method closeAd()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->carousel:Lcom/avocarrot/androidsdk/Carousel;

    if-eqz v0, :cond_1

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->carousel:Lcom/avocarrot/androidsdk/Carousel;

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/Carousel;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->carousel:Lcom/avocarrot/androidsdk/Carousel;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 143
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 145
    :try_start_1
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 146
    const-string v1, "AVOCARROT_INTERSTITIAL_FRAGMENT"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 147
    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 152
    :cond_0
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->carousel:Lcom/avocarrot/androidsdk/Carousel;

    .line 154
    :cond_1
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->getListener()Lcom/avocarrot/androidsdk/BaseListener;

    move-result-object v0

    check-cast v0, Lcom/avocarrot/androidsdk/AvocarrotInterstitialListener;

    .line 155
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/AvocarrotInterstitialListener;->onAdDismissed()V

    .line 156
    :cond_2
    return-void

    .line 149
    :catch_0
    move-exception v0

    goto :goto_1

    .line 142
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public createVisibilityConditions()Lcom/avocarrot/androidsdk/VisibilityConditions;
    .locals 6

    .prologue
    .line 160
    new-instance v0, Lcom/avocarrot/androidsdk/VisibilityConditions;

    iget-object v1, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->placementName:Ljava/lang/String;

    sget-object v2, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->visibilityPercentage:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/avocarrot/androidsdk/DynamicConfiguration;->getInt(Ljava/lang/String;Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    iget-object v1, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->placementName:Ljava/lang/String;

    sget-object v4, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->visibilityMinTime:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    invoke-static {v1, v4}, Lcom/avocarrot/androidsdk/DynamicConfiguration;->getIntFallbackToDefault(Ljava/lang/String;Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v4, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/avocarrot/androidsdk/VisibilityConditions;-><init>(JJ)V

    return-object v0
.end method

.method displayAd()Z
    .locals 10

    .prologue
    const v9, 0x1020002

    const/4 v7, 0x1

    const/4 v8, -0x1

    const/4 v0, 0x0

    .line 66
    invoke-super {p0}, Lcom/avocarrot/androidsdk/BaseController;->displayAd()Z

    .line 68
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->getPoolAds()Ljava/util/LinkedList;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 71
    sget-object v1, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->ERROR:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v2, "Failed to call displayAd() without an ad"

    invoke-static {v1, v2}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;)V

    .line 116
    :goto_0
    return v0

    .line 74
    :cond_0
    iget-object v2, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->placementName:Ljava/lang/String;

    sget-object v3, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->carouselLength:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    invoke-static {v2, v3}, Lcom/avocarrot/androidsdk/DynamicConfiguration;->getIntFallbackToDefault(Ljava/lang/String;Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 75
    iget-boolean v3, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->enableCarousel:Z

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v3, v2, :cond_1

    .line 76
    sget-object v3, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->WARN:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v4, "Failed to fill all ad slots for Carousel"

    invoke-static {v3, v4}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;)V

    .line 79
    :cond_1
    iget-object v3, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->placementName:Ljava/lang/String;

    iget-object v4, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->avocarrot:Lcom/avocarrot/androidsdk/Avocarrot;

    iget-object v4, v4, Lcom/avocarrot/androidsdk/Avocarrot;->deviceInfo:Lcom/avocarrot/androidsdk/DeviceInfo;

    iget-object v4, v4, Lcom/avocarrot/androidsdk/DeviceInfo;->orientation:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/avocarrot/androidsdk/DynamicLayoutManager;->getLayoutForPlacement(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 80
    if-nez v3, :cond_2

    .line 81
    sget-object v1, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->ERROR:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v2, "Cannot Create Interstitial without Dynamic Layout"

    invoke-static {v1, v2}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 87
    :goto_1
    if-ge v0, v2, :cond_3

    .line 88
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 90
    :cond_3
    new-instance v0, Lcom/avocarrot/androidsdk/Carousel;

    iget-object v1, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$InterstitialViewHolder;

    iget-boolean v6, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->enableCarousel:Z

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/avocarrot/androidsdk/Carousel;-><init>(Landroid/content/Context;Ljava/lang/Class;Lorg/json/JSONObject;Ljava/util/List;Lcom/avocarrot/androidsdk/CarouselListener;Z)V

    iput-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->carousel:Lcom/avocarrot/androidsdk/Carousel;

    .line 91
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->carousel:Lcom/avocarrot/androidsdk/Carousel;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/avocarrot/androidsdk/Carousel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->carousel:Lcom/avocarrot/androidsdk/Carousel;

    invoke-virtual {v0, v7}, Lcom/avocarrot/androidsdk/Carousel;->setFocusableInTouchMode(Z)V

    .line 99
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->carousel:Lcom/avocarrot/androidsdk/Carousel;

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/Carousel;->requestFocus()Z

    .line 100
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->carousel:Lcom/avocarrot/androidsdk/Carousel;

    iget-object v1, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->pressBack:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/avocarrot/androidsdk/Carousel;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_5

    .line 105
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 106
    iget-object v1, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->carousel:Lcom/avocarrot/androidsdk/Carousel;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 113
    :goto_2
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->getListener()Lcom/avocarrot/androidsdk/BaseListener;

    move-result-object v0

    check-cast v0, Lcom/avocarrot/androidsdk/AvocarrotInterstitialListener;

    .line 114
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/AvocarrotInterstitialListener;->onAdDisplayed()V

    :cond_4
    move v0, v7

    .line 116
    goto/16 :goto_0

    .line 109
    :cond_5
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->carousel:Lcom/avocarrot/androidsdk/Carousel;

    invoke-static {v0}, Lcom/avocarrot/androidsdk/InterstitialFragment;->newInstance(Landroid/view/View;)Lcom/avocarrot/androidsdk/InterstitialFragment;

    move-result-object v1

    .line 110
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const-string v2, "AVOCARROT_INTERSTITIAL_FRAGMENT"

    invoke-virtual {v0, v9, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_2
.end method

.method public isReady()Z
    .locals 2

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->getPoolAds()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->placementName:Ljava/lang/String;

    iget-object v1, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->avocarrot:Lcom/avocarrot/androidsdk/Avocarrot;

    invoke-virtual {v1}, Lcom/avocarrot/androidsdk/Avocarrot;->getDeviceInfo()Lcom/avocarrot/androidsdk/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avocarrot/androidsdk/DeviceInfo;->getOrientation()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avocarrot/androidsdk/DynamicLayoutManager;->getLayoutForPlacement(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAd()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->placementName:Ljava/lang/String;

    sget-object v1, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->carouselLength:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    invoke-static {v0, v1}, Lcom/avocarrot/androidsdk/DynamicConfiguration;->getIntFallbackToDefault(Ljava/lang/String;Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-super {p0, v0, v1}, Lcom/avocarrot/androidsdk/BaseController;->loadAd(IZ)V

    .line 269
    return-void
.end method

.method public loadAndShowAd()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->placementName:Ljava/lang/String;

    sget-object v1, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->carouselLength:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    invoke-static {v0, v1}, Lcom/avocarrot/androidsdk/DynamicConfiguration;->getIntFallbackToDefault(Ljava/lang/String;Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Lcom/avocarrot/androidsdk/BaseController;->loadAd(IZ)V

    .line 264
    return-void
.end method

.method public onCarouselBindView(Landroid/view/View;Lcom/avocarrot/androidsdk/BaseModel;II)V
    .locals 4

    .prologue
    .line 169
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 170
    instance-of v1, v0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$InterstitialViewHolder;

    if-eqz v1, :cond_8

    .line 171
    check-cast v0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$InterstitialViewHolder;

    .line 173
    iget-object v1, v0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$InterstitialViewHolder;->title:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, v0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$InterstitialViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/avocarrot/androidsdk/BaseModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    :cond_0
    iget-object v1, v0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$InterstitialViewHolder;->description:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 176
    iget-object v1, v0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$InterstitialViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/avocarrot/androidsdk/BaseModel;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    :cond_1
    iget-object v1, v0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$InterstitialViewHolder;->ctaBtn:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 178
    iget-object v1, v0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$InterstitialViewHolder;->ctaBtn:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/avocarrot/androidsdk/BaseModel;->getCTAText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :cond_2
    iget-object v1, v0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$InterstitialViewHolder;->closeBtn:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 181
    iget-object v1, v0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$InterstitialViewHolder;->closeBtn:Landroid/view/View;

    iget-object v2, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->closeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    :cond_3
    iget-object v1, v0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$InterstitialViewHolder;->redirectBtn:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 184
    iget-object v1, v0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$InterstitialViewHolder;->redirectBtn:Landroid/view/View;

    new-instance v2, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$InterstitialClickListener;

    invoke-direct {v2, p0, p1, p2}, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$InterstitialClickListener;-><init>(Lcom/avocarrot/androidsdk/AvocarrotInterstitial;Landroid/view/View;Lcom/avocarrot/androidsdk/BaseModel;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    :cond_4
    iget-object v1, v0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$InterstitialViewHolder;->image:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    .line 188
    iget-object v1, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->imageManager:Lcom/avocarrot/androidsdk/ImageManager;

    invoke-virtual {p2}, Lcom/avocarrot/androidsdk/BaseModel;->getImage()Lcom/avocarrot/androidsdk/CreativeModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avocarrot/androidsdk/CreativeModel;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$InterstitialViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcom/avocarrot/androidsdk/ImageManager;->loadImageInto(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 190
    :cond_5
    iget-object v1, v0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$InterstitialViewHolder;->icon:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    .line 191
    iget-object v1, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->imageManager:Lcom/avocarrot/androidsdk/ImageManager;

    invoke-virtual {p2}, Lcom/avocarrot/androidsdk/BaseModel;->getIcon()Lcom/avocarrot/androidsdk/CreativeModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avocarrot/androidsdk/CreativeModel;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$InterstitialViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcom/avocarrot/androidsdk/ImageManager;->loadImageInto(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 194
    :cond_6
    iget-object v1, v0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$InterstitialViewHolder;->rating:Landroid/widget/ImageView;

    if-eqz v1, :cond_7

    invoke-virtual {p2}, Lcom/avocarrot/androidsdk/BaseModel;->getRatingImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 195
    iget-object v1, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->imageManager:Lcom/avocarrot/androidsdk/ImageManager;

    invoke-virtual {p2}, Lcom/avocarrot/androidsdk/BaseModel;->getRatingImageUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$3;

    invoke-direct {v3, p0, v0}, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$3;-><init>(Lcom/avocarrot/androidsdk/AvocarrotInterstitial;Lcom/avocarrot/androidsdk/AvocarrotInterstitial$InterstitialViewHolder;)V

    invoke-virtual {v1, v2, v3}, Lcom/avocarrot/androidsdk/ImageManager;->loadImageInto(Ljava/lang/String;Lcom/avocarrot/androidsdk/ImageLoadListener;)V

    .line 207
    :cond_7
    iget-object v0, v0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$InterstitialViewHolder;->ids:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/avocarrot/androidsdk/BaseModel;->getExtra()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->connectExtraFieldsToView(Landroid/view/View;Ljava/util/HashMap;Ljava/util/List;)V

    .line 211
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->bindAdModel2AdView(Landroid/view/View;Lcom/avocarrot/androidsdk/BaseModel;)V

    .line 213
    return-void
.end method

.method onLoadAdDone(Z)V
    .locals 3

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/avocarrot/androidsdk/BaseController;->onLoadAdDone(Z)V

    .line 52
    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->getPoolAds()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avocarrot/androidsdk/BaseModel;

    .line 54
    if-eqz v0, :cond_0

    .line 55
    iget-object v1, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->imageManager:Lcom/avocarrot/androidsdk/ImageManager;

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/BaseModel;->getIcon()Lcom/avocarrot/androidsdk/CreativeModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avocarrot/androidsdk/CreativeModel;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avocarrot/androidsdk/ImageManager;->loadImageInto(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->imageManager:Lcom/avocarrot/androidsdk/ImageManager;

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/BaseModel;->getImage()Lcom/avocarrot/androidsdk/CreativeModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/CreativeModel;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avocarrot/androidsdk/ImageManager;->loadImageInto(Ljava/lang/String;)V

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->getListener()Lcom/avocarrot/androidsdk/BaseListener;

    move-result-object v0

    check-cast v0, Lcom/avocarrot/androidsdk/AvocarrotInterstitialListener;

    .line 61
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/AvocarrotInterstitialListener;->onAdLoaded()V

    .line 62
    :cond_1
    return-void
.end method

.method public setCarouselMode(Z)V
    .locals 0

    .prologue
    .line 282
    iput-boolean p1, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->enableCarousel:Z

    .line 283
    return-void
.end method

.method public bridge synthetic setLogger(Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0, p1, p2}, Lcom/avocarrot/androidsdk/BaseController;->setLogger(Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setSandbox(Z)V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/avocarrot/androidsdk/BaseController;->setSandbox(Z)V

    return-void
.end method

.method public showAd()Z
    .locals 1

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->displayAd()Z

    move-result v0

    return v0
.end method
