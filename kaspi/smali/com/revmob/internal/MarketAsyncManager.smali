.class public Lcom/revmob/internal/MarketAsyncManager;
.super Landroid/os/AsyncTask;
.source "MarketAsyncManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/revmob/internal/MarketAsyncManager$MarketAsyncManagerListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private data:Lcom/revmob/client/AdData;

.field private firstClick:Z

.field private listener:Lcom/revmob/internal/MarketAsyncManager$MarketAsyncManagerListener;

.field private publisherListener:Lcom/revmob/RevMobAdsListener;

.field private relativePosition:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/revmob/client/AdData;Lcom/revmob/RevMobAdsListener;)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/revmob/internal/MarketAsyncManager;-><init>(Landroid/app/Activity;Lcom/revmob/client/AdData;Lcom/revmob/RevMobAdsListener;Lcom/revmob/internal/MarketAsyncManager$MarketAsyncManagerListener;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/revmob/client/AdData;Lcom/revmob/RevMobAdsListener;Lcom/revmob/internal/MarketAsyncManager$MarketAsyncManagerListener;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 34
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/revmob/internal/MarketAsyncManager;-><init>(Landroid/app/Activity;Lcom/revmob/client/AdData;Lcom/revmob/RevMobAdsListener;Lcom/revmob/internal/MarketAsyncManager$MarketAsyncManagerListener;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/revmob/client/AdData;Lcom/revmob/RevMobAdsListener;Lcom/revmob/internal/MarketAsyncManager$MarketAsyncManagerListener;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/revmob/internal/MarketAsyncManager;->firstClick:Z

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/revmob/internal/MarketAsyncManager;->relativePosition:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/revmob/internal/MarketAsyncManager;->activity:Landroid/app/Activity;

    .line 39
    iput-object p3, p0, Lcom/revmob/internal/MarketAsyncManager;->publisherListener:Lcom/revmob/RevMobAdsListener;

    .line 40
    iput-object p2, p0, Lcom/revmob/internal/MarketAsyncManager;->data:Lcom/revmob/client/AdData;

    .line 41
    iput-object p4, p0, Lcom/revmob/internal/MarketAsyncManager;->listener:Lcom/revmob/internal/MarketAsyncManager$MarketAsyncManagerListener;

    .line 42
    iput-object p5, p0, Lcom/revmob/internal/MarketAsyncManager;->relativePosition:Ljava/lang/String;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/revmob/internal/MarketAsyncManager;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/revmob/internal/MarketAsyncManager;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private dspServerRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/revmob/internal/MarketAsyncManager;->firstClick:Z

    .line 144
    new-instance v0, Lcom/revmob/internal/MarketAsyncManager$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/revmob/internal/MarketAsyncManager$3;-><init>(Lcom/revmob/internal/MarketAsyncManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 152
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/revmob/internal/MarketAsyncManager;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/revmob/internal/MarketAsyncManager;->publisherListener:Lcom/revmob/RevMobAdsListener;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/revmob/internal/MarketAsyncManager;->publisherListener:Lcom/revmob/RevMobAdsListener;

    invoke-virtual {v0}, Lcom/revmob/RevMobAdsListener;->onRevMobAdClicked()V

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/revmob/internal/MarketAsyncManager;->openAdvertisement()V

    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/revmob/internal/MarketAsyncManager;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/revmob/internal/MarketAsyncManager;->listener:Lcom/revmob/internal/MarketAsyncManager$MarketAsyncManagerListener;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/revmob/internal/MarketAsyncManager;->listener:Lcom/revmob/internal/MarketAsyncManager$MarketAsyncManagerListener;

    invoke-interface {v0}, Lcom/revmob/internal/MarketAsyncManager$MarketAsyncManagerListener;->onPostExecute()V

    .line 140
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/revmob/internal/MarketAsyncManager;->listener:Lcom/revmob/internal/MarketAsyncManager$MarketAsyncManagerListener;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/revmob/internal/MarketAsyncManager;->listener:Lcom/revmob/internal/MarketAsyncManager$MarketAsyncManagerListener;

    invoke-interface {v0}, Lcom/revmob/internal/MarketAsyncManager$MarketAsyncManagerListener;->onPreExecute()V

    .line 133
    :cond_0
    return-void
.end method

.method public openAdvertisement()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/revmob/internal/MarketAsyncManager;->data:Lcom/revmob/client/AdData;

    invoke-virtual {v0}, Lcom/revmob/client/AdData;->shouldFollowRedirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/revmob/internal/MarketAsyncManager;->data:Lcom/revmob/client/AdData;

    iget-object v1, p0, Lcom/revmob/internal/MarketAsyncManager;->relativePosition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/revmob/client/AdData;->getClickUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/revmob/internal/MarketAsyncManager;->openClickUrlFollowingRedirect(Ljava/lang/String;)V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/revmob/internal/MarketAsyncManager;->data:Lcom/revmob/client/AdData;

    iget-object v1, p0, Lcom/revmob/internal/MarketAsyncManager;->relativePosition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/revmob/client/AdData;->getClickUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/revmob/internal/MarketAsyncManager;->openClickUrlDirectly(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public openClickUrlDirectly(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/revmob/internal/MarketAsyncManager;->data:Lcom/revmob/client/AdData;

    invoke-virtual {v0}, Lcom/revmob/client/AdData;->isOpenInside()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/revmob/internal/MarketAsyncManager;->data:Lcom/revmob/client/AdData;

    iget-object v1, p0, Lcom/revmob/internal/MarketAsyncManager;->relativePosition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/revmob/client/AdData;->getClickUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/revmob/internal/MarketAsyncManager;->openUrlInTheWebViewWithPost(Ljava/lang/String;)V

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/revmob/internal/MarketAsyncManager;->data:Lcom/revmob/client/AdData;

    iget-object v1, p0, Lcom/revmob/internal/MarketAsyncManager;->relativePosition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/revmob/client/AdData;->getClickUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/revmob/internal/MarketAsyncManager;->openUrlInTheBrowser(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public openClickUrlFollowingRedirect(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 64
    new-instance v0, Lcom/revmob/internal/MarketRedirector;

    invoke-direct {v0, p1}, Lcom/revmob/internal/MarketRedirector;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/revmob/internal/MarketAsyncManager;->data:Lcom/revmob/client/AdData;

    invoke-virtual {v1}, Lcom/revmob/client/AdData;->getDspUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/revmob/internal/MarketRedirector;->getMarketUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    iget-boolean v1, p0, Lcom/revmob/internal/MarketAsyncManager;->firstClick:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/revmob/internal/MarketAsyncManager;->data:Lcom/revmob/client/AdData;

    invoke-virtual {v1}, Lcom/revmob/client/AdData;->getClickUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/revmob/internal/MarketAsyncManager;->data:Lcom/revmob/client/AdData;

    invoke-virtual {v1}, Lcom/revmob/client/AdData;->getDspUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/revmob/internal/MarketAsyncManager;->data:Lcom/revmob/client/AdData;

    invoke-virtual {v1}, Lcom/revmob/client/AdData;->getDspUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#click"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/revmob/internal/MarketAsyncManager;->relativePosition:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 67
    iget-object v1, p0, Lcom/revmob/internal/MarketAsyncManager;->data:Lcom/revmob/client/AdData;

    iget-object v2, p0, Lcom/revmob/internal/MarketAsyncManager;->relativePosition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/revmob/client/AdData;->getClickUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-direct {p0, v1, v2}, Lcom/revmob/internal/MarketAsyncManager;->dspServerRequest(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/revmob/internal/MarketAsyncManager;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->isFullscreenActivityAvailable(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 74
    iget-object v2, p0, Lcom/revmob/internal/MarketAsyncManager;->data:Lcom/revmob/client/AdData;

    invoke-virtual {v2}, Lcom/revmob/client/AdData;->getAppOrSite()Ljava/lang/String;

    move-result-object v2

    const-string v3, "site"

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/revmob/internal/MarketAsyncManager;->data:Lcom/revmob/client/AdData;

    invoke-virtual {v2}, Lcom/revmob/client/AdData;->isOpenInside()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 75
    invoke-virtual {p0, v0}, Lcom/revmob/internal/MarketAsyncManager;->openUrlInTheWebView(Ljava/lang/String;)V

    .line 82
    :cond_1
    :goto_1
    return-void

    .line 69
    :cond_2
    iget-object v1, p0, Lcom/revmob/internal/MarketAsyncManager;->data:Lcom/revmob/client/AdData;

    iget-object v2, p0, Lcom/revmob/internal/MarketAsyncManager;->relativePosition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/revmob/client/AdData;->getClickUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-direct {p0, v1, v2}, Lcom/revmob/internal/MarketAsyncManager;->dspServerRequest(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_3
    invoke-virtual {p0, v0}, Lcom/revmob/internal/MarketAsyncManager;->openUrlInTheBrowser(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public openUrlInTheBrowser(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 124
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 125
    iget-object v1, p0, Lcom/revmob/internal/MarketAsyncManager;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 126
    return-void
.end method

.method public openUrlInTheWebView(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/revmob/internal/MarketAsyncManager;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/revmob/internal/MarketAsyncManager$1;

    invoke-direct {v1, p0, p1}, Lcom/revmob/internal/MarketAsyncManager$1;-><init>(Lcom/revmob/internal/MarketAsyncManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 103
    return-void
.end method

.method public openUrlInTheWebViewWithPost(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/revmob/internal/MarketAsyncManager;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/revmob/internal/MarketAsyncManager$2;

    invoke-direct {v1, p0, p1}, Lcom/revmob/internal/MarketAsyncManager$2;-><init>(Lcom/revmob/internal/MarketAsyncManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 120
    return-void
.end method
