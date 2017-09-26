.class public Lcom/adsdk/sdk/nativeads/NativeAdView;
.super Landroid/widget/FrameLayout;
.source "NativeAdView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adsdk/sdk/nativeads/NativeAdView$LoadUrlTask;
    }
.end annotation


# instance fields
.field private adView:Landroid/view/View;

.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private impressionReported:Z

.field private listener:Lcom/adsdk/sdk/nativeads/NativeAdListener;

.field private nativeAd:Lcom/adsdk/sdk/nativeads/NativeAd;

.field private overlayView:Landroid/view/View;

.field private trackers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adsdk/sdk/nativeads/NativeAd$Tracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/adsdk/sdk/nativeads/NativeAd;Lcom/adsdk/sdk/nativeads/NativeViewBinder;Lcom/adsdk/sdk/nativeads/NativeAdListener;)V
    .locals 4

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 47
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->context:Landroid/content/Context;

    .line 51
    invoke-virtual {p3}, Lcom/adsdk/sdk/nativeads/NativeViewBinder;->getAdLayoutId()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/adsdk/sdk/nativeads/NativeAdView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->adView:Landroid/view/View;

    .line 52
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->overlayView:Landroid/view/View;

    .line 53
    invoke-virtual {p2}, Lcom/adsdk/sdk/nativeads/NativeAd;->getTrackers()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->trackers:Ljava/util/List;

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->handler:Landroid/os/Handler;

    .line 55
    iput-object p4, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->listener:Lcom/adsdk/sdk/nativeads/NativeAdListener;

    .line 56
    invoke-virtual {p0, p2, p3}, Lcom/adsdk/sdk/nativeads/NativeAdView;->fillAdView(Lcom/adsdk/sdk/nativeads/NativeAd;Lcom/adsdk/sdk/nativeads/NativeViewBinder;)V

    .line 57
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->adView:Landroid/view/View;

    invoke-virtual {p2, v0}, Lcom/adsdk/sdk/nativeads/NativeAd;->prepareImpression(Landroid/view/View;)V

    .line 58
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->overlayView:Landroid/view/View;

    invoke-direct {p0, p2}, Lcom/adsdk/sdk/nativeads/NativeAdView;->createOnNativeAdClickListener(Lcom/adsdk/sdk/nativeads/NativeAd;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->adView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/nativeads/NativeAdView;->addView(Landroid/view/View;)V

    .line 61
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->overlayView:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->adView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->adView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->overlayView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/nativeads/NativeAdView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/nativeads/NativeAdView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/nativeads/NativeAdView;)V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/adsdk/sdk/nativeads/NativeAdView;->notifyAdClicked()V

    return-void
.end method

.method static synthetic access$2(Lcom/adsdk/sdk/nativeads/NativeAdView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->adView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3(Lcom/adsdk/sdk/nativeads/NativeAdView;)Lcom/adsdk/sdk/nativeads/NativeAdListener;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->listener:Lcom/adsdk/sdk/nativeads/NativeAdListener;

    return-object v0
.end method

.method private createOnNativeAdClickListener(Lcom/adsdk/sdk/nativeads/NativeAd;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/adsdk/sdk/nativeads/NativeAdView$1;

    invoke-direct {v0, p0, p1}, Lcom/adsdk/sdk/nativeads/NativeAdView$1;-><init>(Lcom/adsdk/sdk/nativeads/NativeAdView;Lcom/adsdk/sdk/nativeads/NativeAd;)V

    .line 135
    return-object v0
.end method

.method private notifyAdClicked()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->listener:Lcom/adsdk/sdk/nativeads/NativeAdListener;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/adsdk/sdk/nativeads/NativeAdView$2;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/nativeads/NativeAdView$2;-><init>(Lcom/adsdk/sdk/nativeads/NativeAdView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 222
    :cond_0
    return-void
.end method

.method private notifyImpression()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->listener:Lcom/adsdk/sdk/nativeads/NativeAdListener;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/adsdk/sdk/nativeads/NativeAdView$3;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/nativeads/NativeAdView$3;-><init>(Lcom/adsdk/sdk/nativeads/NativeAdView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 252
    :cond_0
    return-void
.end method

.method private trackImpression(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 255
    new-instance v0, Lcom/adsdk/sdk/nativeads/NativeAdView$4;

    invoke-direct {v0, p0, p1}, Lcom/adsdk/sdk/nativeads/NativeAdView$4;-><init>(Lcom/adsdk/sdk/nativeads/NativeAdView;Ljava/lang/String;)V

    .line 273
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 274
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 226
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->overlayView:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->adView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->adView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    iget-boolean v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->impressionReported:Z

    if-nez v0, :cond_2

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->impressionReported:Z

    .line 229
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->nativeAd:Lcom/adsdk/sdk/nativeads/NativeAd;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->nativeAd:Lcom/adsdk/sdk/nativeads/NativeAd;

    invoke-virtual {v0}, Lcom/adsdk/sdk/nativeads/NativeAd;->handleImpression()V

    .line 232
    :cond_0
    invoke-direct {p0}, Lcom/adsdk/sdk/nativeads/NativeAdView;->notifyImpression()V

    .line 234
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->trackers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 240
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 241
    return-void

    .line 234
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/nativeads/NativeAd$Tracker;

    .line 235
    iget-object v2, v0, Lcom/adsdk/sdk/nativeads/NativeAd$Tracker;->type:Ljava/lang/String;

    const-string v3, "impression"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 236
    iget-object v0, v0, Lcom/adsdk/sdk/nativeads/NativeAd$Tracker;->url:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adsdk/sdk/nativeads/NativeAdView;->trackImpression(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public fillAdView(Lcom/adsdk/sdk/nativeads/NativeAd;Lcom/adsdk/sdk/nativeads/NativeViewBinder;)V
    .locals 6

    .prologue
    .line 66
    invoke-virtual {p2}, Lcom/adsdk/sdk/nativeads/NativeViewBinder;->getTextAssetsBindingsKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 101
    invoke-virtual {p2}, Lcom/adsdk/sdk/nativeads/NativeViewBinder;->getImageAssetsBindingsKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 116
    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->nativeAd:Lcom/adsdk/sdk/nativeads/NativeAd;

    .line 118
    return-void

    .line 66
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    invoke-virtual {p2, v0}, Lcom/adsdk/sdk/nativeads/NativeViewBinder;->getIdForTextAsset(Ljava/lang/String;)I

    move-result v1

    .line 68
    if-eqz v1, :cond_0

    .line 72
    :try_start_0
    const-string v3, "rating"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 73
    iget-object v3, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->adView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RatingBar;

    .line 74
    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {p1, v0}, Lcom/adsdk/sdk/nativeads/NativeAd;->getTextAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 76
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-lez v4, :cond_3

    .line 78
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 79
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/widget/RatingBar;->setIsIndicator(Z)V

    .line 80
    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/widget/RatingBar;->setRating(F)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 81
    :catch_0
    move-exception v4

    .line 82
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cannot parse rating string: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 83
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/RatingBar;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 96
    :catch_1
    move-exception v1

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Cannot fill view for "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_3
    const/4 v3, 0x4

    :try_start_3
    invoke-virtual {v1, v3}, Landroid/widget/RatingBar;->setVisibility(I)V

    goto :goto_0

    .line 90
    :cond_4
    iget-object v3, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->adView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 91
    invoke-virtual {p1, v0}, Lcom/adsdk/sdk/nativeads/NativeAd;->getTextAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 92
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 93
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 101
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    invoke-virtual {p2, v0}, Lcom/adsdk/sdk/nativeads/NativeViewBinder;->getIdForImageAsset(Ljava/lang/String;)I

    move-result v1

    .line 103
    if-eqz v1, :cond_1

    .line 107
    :try_start_4
    iget-object v3, p0, Lcom/adsdk/sdk/nativeads/NativeAdView;->adView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 108
    invoke-virtual {p1, v0}, Lcom/adsdk/sdk/nativeads/NativeAd;->getImageAsset(Ljava/lang/String;)Lcom/adsdk/sdk/nativeads/NativeAd$ImageAsset;

    move-result-object v3

    iget-object v3, v3, Lcom/adsdk/sdk/nativeads/NativeAd$ImageAsset;->bitmap:Landroid/graphics/Bitmap;

    .line 109
    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    .line 110
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 112
    :catch_2
    move-exception v1

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Cannot fill view for "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;)V

    goto/16 :goto_1
.end method
