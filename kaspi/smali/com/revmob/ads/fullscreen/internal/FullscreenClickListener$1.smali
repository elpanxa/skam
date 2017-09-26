.class Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener$1;
.super Ljava/lang/Object;
.source "FullscreenClickListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;->openMarket()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;


# direct methods
.method constructor <init>(Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener$1;->this$0:Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 63
    new-instance v0, Lcom/revmob/internal/MarketAsyncManager;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener$1;->this$0:Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;

    iget-object v1, v1, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;->fullscreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener$1;->this$0:Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;

    iget-object v2, v2, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;->fullscreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    iget-object v2, v2, Lcom/revmob/ads/fullscreen/FullscreenActivity;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    iget-object v3, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener$1;->this$0:Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;

    iget-object v3, v3, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;->fullscreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    iget-object v3, v3, Lcom/revmob/ads/fullscreen/FullscreenActivity;->publisherListener:Lcom/revmob/RevMobAdsListener;

    new-instance v4, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener$1$1;

    invoke-direct {v4, p0}, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener$1$1;-><init>(Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener$1;)V

    iget-object v5, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener$1;->this$0:Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;

    iget-object v5, v5, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;->relativePosition:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/revmob/internal/MarketAsyncManager;-><init>(Landroid/app/Activity;Lcom/revmob/client/AdData;Lcom/revmob/RevMobAdsListener;Lcom/revmob/internal/MarketAsyncManager$MarketAsyncManagerListener;Ljava/lang/String;)V

    .line 79
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/revmob/internal/MarketAsyncManager;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 80
    return-void
.end method
