.class Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener$1$1;
.super Ljava/lang/Object;
.source "FullscreenClickListener.java"

# interfaces
.implements Lcom/revmob/internal/MarketAsyncManager$MarketAsyncManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener$1;


# direct methods
.method constructor <init>(Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener$1;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener$1$1;->this$1:Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostExecute()V
    .locals 1

    .prologue
    .line 74
    const-string v0, "Closing Fullscreen activity"

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->d(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener$1$1;->this$1:Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener$1;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener$1;->this$0:Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;->fullscreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->finish()V

    .line 76
    return-void
.end method

.method public onPreExecute()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method
