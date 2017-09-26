.class Lcom/revmob/ads/fullscreen/RevMobVideo$6;
.super Ljava/lang/Object;
.source "RevMobVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/ads/fullscreen/RevMobVideo;->videoCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;


# direct methods
.method constructor <init>(Lcom/revmob/ads/fullscreen/RevMobVideo;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$6;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$6;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->removeHandlerCallbacks()V

    .line 405
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$6;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    # invokes: Lcom/revmob/ads/fullscreen/RevMobVideo;->onVideoFinish()V
    invoke-static {v0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->access$400(Lcom/revmob/ads/fullscreen/RevMobVideo;)V

    .line 406
    return-void
.end method
