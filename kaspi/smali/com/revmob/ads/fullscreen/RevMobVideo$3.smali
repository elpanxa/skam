.class Lcom/revmob/ads/fullscreen/RevMobVideo$3;
.super Ljava/lang/Object;
.source "RevMobVideo.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/ads/fullscreen/RevMobVideo;->configureVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public requestSent:Z

.field final synthetic this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

.field final synthetic val$videoClickListener:Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;


# direct methods
.method constructor <init>(Lcom/revmob/ads/fullscreen/RevMobVideo;Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;)V
    .locals 1

    .prologue
    .line 338
    iput-object p1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$3;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iput-object p2, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$3;->val$videoClickListener:Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$3;->requestSent:Z

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 342
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$3;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iput-boolean v2, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->clicked:Z

    .line 344
    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$3;->requestSent:Z

    if-nez v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$3;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-boolean v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->replayClicked:Z

    if-nez v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$3;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    const-string v1, "clicks"

    # invokes: Lcom/revmob/ads/fullscreen/RevMobVideo;->getEvent(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/revmob/ads/fullscreen/RevMobVideo;->access$200(Lcom/revmob/ads/fullscreen/RevMobVideo;Ljava/lang/String;)V

    .line 348
    :cond_0
    iput-boolean v2, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$3;->requestSent:Z

    .line 349
    const-string v0, "%.2f"

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$3;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-wide v4, v3, Lcom/revmob/ads/fullscreen/RevMobVideo;->relativePosition:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 350
    iget-object v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$3;->val$videoClickListener:Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;

    invoke-virtual {v1, v0}, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;->onClick(Ljava/lang/String;)Z

    .line 351
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$3;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->removeHandlerCallbacks()V

    .line 353
    :cond_1
    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$3;->requestSent:Z

    return v0
.end method
