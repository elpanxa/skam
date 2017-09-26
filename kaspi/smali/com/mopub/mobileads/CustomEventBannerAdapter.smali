.class public Lcom/mopub/mobileads/CustomEventBannerAdapter;
.super Ljava/lang/Object;
.source "CustomEventBannerAdapter.java"

# interfaces
.implements Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;


# static fields
.field public static final DEFAULT_BANNER_TIMEOUT_DELAY:I = 0x2710


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomEventBanner:Lcom/mopub/mobileads/CustomEventBanner;

.field private final mHandler:Landroid/os/Handler;

.field private mInvalidated:Z

.field private mLocalExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mMoPubView:Lcom/mopub/mobileads/MoPubView;

.field private mServerExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStoredAutorefresh:Z

.field private final mTimeout:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/MoPubView;Ljava/lang/String;Ljava/util/Map;JLcom/mopub/common/AdReport;)V
    .locals 4
    .param p1    # Lcom/mopub/mobileads/MoPubView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/mopub/common/AdReport;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/mobileads/MoPubView;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/mopub/common/AdReport;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mHandler:Landroid/os/Handler;

    .line 47
    iput-object p1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    .line 48
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mContext:Landroid/content/Context;

    .line 49
    new-instance v0, Lcom/mopub/mobileads/CustomEventBannerAdapter$1;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter$1;-><init>(Lcom/mopub/mobileads/CustomEventBannerAdapter;)V

    iput-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mTimeout:Ljava/lang/Runnable;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to invoke custom event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 60
    :try_start_0
    invoke-static {p2}, Lcom/mopub/mobileads/factories/CustomEventBannerFactory;->create(Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventBanner;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mCustomEventBanner:Lcom/mopub/mobileads/CustomEventBanner;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p3}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mServerExtras:Ljava/util/Map;

    .line 70
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->getLocalExtras()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mLocalExtras:Ljava/util/Map;

    .line 71
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->getLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mLocalExtras:Ljava/util/Map;

    const-string v1, "location"

    iget-object v2, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubView;->getLocation()Landroid/location/Location;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mLocalExtras:Ljava/util/Map;

    const-string v1, "broadcastIdentifier"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mLocalExtras:Ljava/util/Map;

    const-string v1, "mopub-intent-ad-report"

    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mLocalExtras:Ljava/util/Map;

    const-string v1, "com_mopub_ad_width"

    iget-object v2, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubView;->getAdWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mLocalExtras:Ljava/util/Map;

    const-string v1, "com_mopub_ad_height"

    iget-object v2, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubView;->getAdHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t locate or instantiate custom event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_NOT_FOUND:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->loadFailUrl(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method private cancelTimeout()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 122
    return-void
.end method

.method private getTimeoutDelayMilliseconds()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->getAdTimeoutDelay()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->getAdTimeoutDelay()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_1

    .line 128
    :cond_0
    const/16 v0, 0x2710

    .line 131
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->getAdTimeoutDelay()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_0
.end method


# virtual methods
.method invalidate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 100
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mCustomEventBanner:Lcom/mopub/mobileads/CustomEventBanner;

    if-eqz v0, :cond_0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mCustomEventBanner:Lcom/mopub/mobileads/CustomEventBanner;

    invoke-virtual {v0}, Lcom/mopub/mobileads/CustomEventBanner;->onInvalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mContext:Landroid/content/Context;

    .line 110
    iput-object v2, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mCustomEventBanner:Lcom/mopub/mobileads/CustomEventBanner;

    .line 111
    iput-object v2, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mLocalExtras:Ljava/util/Map;

    .line 112
    iput-object v2, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mServerExtras:Ljava/util/Map;

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mInvalidated:Z

    .line 114
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    const-string v1, "Invalidating a custom event banner threw an exception"

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method isInvalidated()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mInvalidated:Z

    return v0
.end method

.method loadAd()V
    .locals 4

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->isInvalidated()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mCustomEventBanner:Lcom/mopub/mobileads/CustomEventBanner;

    if-nez v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->getTimeoutDelayMilliseconds()I

    move-result v0

    if-lez v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mTimeout:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->getTimeoutDelayMilliseconds()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mCustomEventBanner:Lcom/mopub/mobileads/CustomEventBanner;

    iget-object v1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mLocalExtras:Ljava/util/Map;

    iget-object v3, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mServerExtras:Ljava/util/Map;

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/mopub/mobileads/CustomEventBanner;->loadBanner(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    const-string v1, "Loading a custom event banner threw an exception."

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method public onBannerClicked()V
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->registerClick()V

    goto :goto_0
.end method

.method public onBannerCollapsed()V
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    iget-boolean v1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mStoredAutorefresh:Z

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setAutorefreshEnabled(Z)V

    .line 187
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->adClosed()V

    goto :goto_0
.end method

.method public onBannerExpanded()V
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->getAutorefreshEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mStoredAutorefresh:Z

    .line 176
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setAutorefreshEnabled(Z)V

    .line 177
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->adPresentedOverlay()V

    goto :goto_0
.end method

.method public onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_0

    .line 161
    if-nez p1, :cond_2

    .line 162
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 164
    :cond_2
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->cancelTimeout()V

    .line 165
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubView;->loadFailUrl(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method public onBannerLoaded(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->cancelTimeout()V

    .line 145
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->nativeAdLoaded()V

    .line 147
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubView;->setAdContentView(Landroid/view/View;)V

    .line 148
    instance-of v0, p1, Lcom/mopub/mobileads/HtmlBannerWebView;

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->trackNativeImpression()V

    goto :goto_0
.end method

.method public onLeaveApplication()V
    .locals 0

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->onBannerClicked()V

    .line 204
    return-void
.end method
