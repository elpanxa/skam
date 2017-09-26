.class public Lcom/revmob/ads/link/RevMobLink;
.super Ljava/lang/Object;
.source "RevMobLink.java"

# interfaces
.implements Lcom/revmob/ads/internal/Ad;


# instance fields
.field private activity:Landroid/app/Activity;

.field public autoopen:Z

.field private data:Lcom/revmob/ads/link/client/LinkData;

.field private publisherListener:Lcom/revmob/RevMobAdsListener;

.field private state:Lcom/revmob/ads/internal/AdState;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/revmob/ads/link/RevMobLink;->autoopen:Z

    .line 25
    iput-object p1, p0, Lcom/revmob/ads/link/RevMobLink;->activity:Landroid/app/Activity;

    .line 26
    iput-object p2, p0, Lcom/revmob/ads/link/RevMobLink;->publisherListener:Lcom/revmob/RevMobAdsListener;

    .line 27
    sget-object v0, Lcom/revmob/ads/internal/AdState;->CREATED:Lcom/revmob/ads/internal/AdState;

    iput-object v0, p0, Lcom/revmob/ads/link/RevMobLink;->state:Lcom/revmob/ads/internal/AdState;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/revmob/ads/link/RevMobLink;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/revmob/ads/link/RevMobLink;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/revmob/ads/link/RevMobLink;)Lcom/revmob/ads/link/client/LinkData;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/revmob/ads/link/RevMobLink;->data:Lcom/revmob/ads/link/client/LinkData;

    return-object v0
.end method

.method static synthetic access$200(Lcom/revmob/ads/link/RevMobLink;)Lcom/revmob/RevMobAdsListener;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/revmob/ads/link/RevMobLink;->publisherListener:Lcom/revmob/RevMobAdsListener;

    return-object v0
.end method

.method private isLoaded()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/revmob/ads/link/RevMobLink;->data:Lcom/revmob/ads/link/client/LinkData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/revmob/ads/link/RevMobLink;->autoopen:Z

    .line 78
    return-void
.end method

.method public load()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/revmob/ads/link/RevMobLink;->load(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public load(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 41
    iget-object v0, p0, Lcom/revmob/ads/link/RevMobLink;->state:Lcom/revmob/ads/internal/AdState;

    sget-object v1, Lcom/revmob/ads/internal/AdState;->CREATED:Lcom/revmob/ads/internal/AdState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/link/RevMobLink;->state:Lcom/revmob/ads/internal/AdState;

    sget-object v1, Lcom/revmob/ads/internal/AdState;->CLOSED:Lcom/revmob/ads/internal/AdState;

    if-ne v0, v1, :cond_1

    .line 42
    :cond_0
    if-eqz p1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading Link "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/revmob/client/RevMobClient;->getInstance()Lcom/revmob/client/RevMobClient;

    move-result-object v0

    iget-object v1, p0, Lcom/revmob/ads/link/RevMobLink;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/revmob/android/RevMobContext;->toPayload(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/revmob/ads/link/client/LinkClientListener;

    iget-object v3, p0, Lcom/revmob/ads/link/RevMobLink;->publisherListener:Lcom/revmob/RevMobAdsListener;

    invoke-direct {v2, p0, v3}, Lcom/revmob/ads/link/client/LinkClientListener;-><init>(Lcom/revmob/ads/internal/Ad;Lcom/revmob/RevMobAdsListener;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/revmob/client/RevMobClient;->fetchAdLink(Ljava/lang/String;Ljava/lang/String;Lcom/revmob/client/RevMobClientListener;)V

    .line 47
    :cond_1
    return-void

    .line 42
    :cond_2
    const-string v0, "Loading Link"

    goto :goto_0
.end method

.method public open()V
    .locals 3

    .prologue
    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/revmob/ads/link/RevMobLink;->autoopen:Z

    .line 85
    invoke-direct {p0}, Lcom/revmob/ads/link/RevMobLink;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/revmob/ads/link/RevMobLink;->state:Lcom/revmob/ads/internal/AdState;

    sget-object v1, Lcom/revmob/ads/internal/AdState;->DISPLAYED:Lcom/revmob/ads/internal/AdState;

    if-eq v0, v1, :cond_2

    .line 86
    sget-object v0, Lcom/revmob/ads/internal/AdState;->DISPLAYED:Lcom/revmob/ads/internal/AdState;

    iput-object v0, p0, Lcom/revmob/ads/link/RevMobLink;->state:Lcom/revmob/ads/internal/AdState;

    .line 87
    iget-object v0, p0, Lcom/revmob/ads/link/RevMobLink;->publisherListener:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/revmob/ads/link/RevMobLink;->publisherListener:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobAdDisplayed()V

    .line 90
    :cond_0
    invoke-static {}, Lcom/revmob/client/RevMobClient;->getInstance()Lcom/revmob/client/RevMobClient;

    move-result-object v0

    iget-object v1, p0, Lcom/revmob/ads/link/RevMobLink;->data:Lcom/revmob/ads/link/client/LinkData;

    invoke-virtual {v1}, Lcom/revmob/ads/link/client/LinkData;->getImpressionUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/revmob/ads/link/RevMobLink;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/revmob/android/RevMobContext;->toPayload(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/revmob/client/RevMobClient;->reportImpression(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/revmob/ads/link/RevMobLink;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/revmob/ads/link/RevMobLink$1;

    invoke-direct {v1, p0}, Lcom/revmob/ads/link/RevMobLink$1;-><init>(Lcom/revmob/ads/link/RevMobLink;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 103
    :cond_1
    :goto_0
    return-void

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/revmob/ads/link/RevMobLink;->state:Lcom/revmob/ads/internal/AdState;

    sget-object v1, Lcom/revmob/ads/internal/AdState;->CREATED:Lcom/revmob/ads/internal/AdState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/revmob/ads/link/RevMobLink;->state:Lcom/revmob/ads/internal/AdState;

    sget-object v1, Lcom/revmob/ads/internal/AdState;->CLOSED:Lcom/revmob/ads/internal/AdState;

    if-eq v0, v1, :cond_1

    .line 100
    const-string v0, "The ad is not completely loaded yet. As soon as it is loaded, it is going to be displayed automatically."

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateWithData(Lcom/revmob/client/AdData;)V
    .locals 2

    .prologue
    .line 54
    sget-object v0, Lcom/revmob/ads/internal/AdState;->LOADED:Lcom/revmob/ads/internal/AdState;

    iput-object v0, p0, Lcom/revmob/ads/link/RevMobLink;->state:Lcom/revmob/ads/internal/AdState;

    .line 55
    check-cast p1, Lcom/revmob/ads/link/client/LinkData;

    iput-object p1, p0, Lcom/revmob/ads/link/RevMobLink;->data:Lcom/revmob/ads/link/client/LinkData;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Link loaded - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/revmob/ads/link/RevMobLink;->data:Lcom/revmob/ads/link/client/LinkData;

    invoke-virtual {v1}, Lcom/revmob/ads/link/client/LinkData;->getCampaignId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/revmob/ads/link/RevMobLink;->publisherListener:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/revmob/ads/link/RevMobLink;->publisherListener:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobAdReceived()V

    .line 60
    :cond_0
    iget-boolean v0, p0, Lcom/revmob/ads/link/RevMobLink;->autoopen:Z

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/revmob/ads/link/RevMobLink;->open()V

    .line 63
    :cond_1
    return-void
.end method
