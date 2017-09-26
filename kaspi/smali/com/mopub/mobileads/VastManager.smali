.class public Lcom/mopub/mobileads/VastManager;
.super Ljava/lang/Object;
.source "VastManager.java"

# interfaces
.implements Lcom/mopub/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VastManager$VastManagerListener;
    }
.end annotation


# instance fields
.field private mScreenAreaDp:I

.field private mScreenAspectRatio:D

.field private final mShouldPreCacheVideo:Z

.field private mVastManagerListener:Lcom/mopub/mobileads/VastManager$VastManagerListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mVastXmlManagerAggregator:Lcom/mopub/mobileads/VastXmlManagerAggregator;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastManager;->initializeScreenDimensions(Landroid/content/Context;)V

    .line 46
    iput-boolean p2, p0, Lcom/mopub/mobileads/VastManager;->mShouldPreCacheVideo:Z

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/VastManager;Lcom/mopub/mobileads/VastVideoConfig;)Z
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastManager;->updateDiskMediaFileUrl(Lcom/mopub/mobileads/VastVideoConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/mopub/mobileads/VastManager;)Lcom/mopub/mobileads/VastManager$VastManagerListener;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mopub/mobileads/VastManager;->mVastManagerListener:Lcom/mopub/mobileads/VastManager$VastManagerListener;

    return-object v0
.end method

.method private initializeScreenDimensions(Landroid/content/Context;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 142
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 146
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 150
    const/4 v3, 0x0

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_0

    .line 151
    const/high16 v0, 0x3f800000    # 1.0f

    .line 155
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 156
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 157
    int-to-double v4, v3

    int-to-double v6, v1

    div-double/2addr v4, v6

    iput-wide v4, p0, Lcom/mopub/mobileads/VastManager;->mScreenAspectRatio:D

    .line 158
    int-to-float v2, v3

    div-float/2addr v2, v0

    int-to-float v1, v1

    div-float v0, v1, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/mopub/mobileads/VastManager;->mScreenAreaDp:I

    .line 159
    return-void
.end method

.method private updateDiskMediaFileUrl(Lcom/mopub/mobileads/VastVideoConfig;)Z
    .locals 2
    .param p1    # Lcom/mopub/mobileads/VastVideoConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 130
    const-string v0, "vastVideoConfig cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoConfig;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v0}, Lcom/mopub/common/CacheService;->containsKeyDiskCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    invoke-static {v0}, Lcom/mopub/common/CacheService;->getFilePathDiskCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setDiskMediaFileUrl(Ljava/lang/String;)V

    .line 136
    const/4 v0, 0x1

    .line 138
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mopub/mobileads/VastManager;->mVastXmlManagerAggregator:Lcom/mopub/mobileads/VastXmlManagerAggregator;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/mopub/mobileads/VastManager;->mVastXmlManagerAggregator:Lcom/mopub/mobileads/VastXmlManagerAggregator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->cancel(Z)Z

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mobileads/VastManager;->mVastXmlManagerAggregator:Lcom/mopub/mobileads/VastXmlManagerAggregator;

    .line 84
    :cond_0
    return-void
.end method

.method getScreenAreaDp()I
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 164
    iget v0, p0, Lcom/mopub/mobileads/VastManager;->mScreenAreaDp:I

    return v0
.end method

.method getScreenAspectRatio()D
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 170
    iget-wide v0, p0, Lcom/mopub/mobileads/VastManager;->mScreenAspectRatio:D

    return-wide v0
.end method

.method public onAggregationComplete(Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 2
    .param p1    # Lcom/mopub/mobileads/VastVideoConfig;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mopub/mobileads/VastManager;->mVastManagerListener:Lcom/mopub/mobileads/VastManager$VastManagerListener;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mVastManagerListener cannot be null here. Did you call prepareVastVideoConfiguration()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    if-nez p1, :cond_1

    .line 95
    iget-object v0, p0, Lcom/mopub/mobileads/VastManager;->mVastManagerListener:Lcom/mopub/mobileads/VastManager$VastManagerListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/VastManager$VastManagerListener;->onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 118
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastManager;->mShouldPreCacheVideo:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastManager;->updateDiskMediaFileUrl(Lcom/mopub/mobileads/VastVideoConfig;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/mopub/mobileads/VastManager;->mVastManagerListener:Lcom/mopub/mobileads/VastManager$VastManagerListener;

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/VastManager$VastManagerListener;->onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/VastVideoConfig;)V

    goto :goto_0

    .line 105
    :cond_3
    new-instance v0, Lcom/mopub/mobileads/VastManager$1;

    invoke-direct {v0, p0, p1}, Lcom/mopub/mobileads/VastManager$1;-><init>(Lcom/mopub/mobileads/VastManager;Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 117
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoConfig;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/mopub/mobileads/VideoDownloader;->cache(Ljava/lang/String;Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderListener;)V

    goto :goto_0
.end method

.method public prepareVastVideoConfiguration(Ljava/lang/String;Lcom/mopub/mobileads/VastManager$VastManagerListener;Landroid/content/Context;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/mopub/mobileads/VastManager$VastManagerListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 59
    const-string v0, "vastManagerListener cannot be null"

    invoke-static {p2, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    const-string v0, "context cannot be null"

    invoke-static {p3, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/mopub/mobileads/VastManager;->mVastXmlManagerAggregator:Lcom/mopub/mobileads/VastXmlManagerAggregator;

    if-nez v0, :cond_0

    .line 63
    iput-object p2, p0, Lcom/mopub/mobileads/VastManager;->mVastManagerListener:Lcom/mopub/mobileads/VastManager$VastManagerListener;

    .line 64
    new-instance v0, Lcom/mopub/mobileads/VastXmlManagerAggregator;

    iget-wide v2, p0, Lcom/mopub/mobileads/VastManager;->mScreenAspectRatio:D

    iget v4, p0, Lcom/mopub/mobileads/VastManager;->mScreenAreaDp:I

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/mopub/mobileads/VastXmlManagerAggregator;-><init>(Lcom/mopub/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;DILandroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastManager;->mVastXmlManagerAggregator:Lcom/mopub/mobileads/VastXmlManagerAggregator;

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/mopub/mobileads/VastManager;->mVastXmlManagerAggregator:Lcom/mopub/mobileads/VastXmlManagerAggregator;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/util/AsyncTasks;->safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    const-string v1, "Failed to aggregate vast xml"

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    iget-object v0, p0, Lcom/mopub/mobileads/VastManager;->mVastManagerListener:Lcom/mopub/mobileads/VastManager$VastManagerListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/VastManager$VastManagerListener;->onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/VastVideoConfig;)V

    goto :goto_0
.end method
