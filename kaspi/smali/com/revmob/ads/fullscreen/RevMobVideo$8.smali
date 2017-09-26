.class Lcom/revmob/ads/fullscreen/RevMobVideo$8;
.super Ljava/lang/Object;
.source "RevMobVideo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/ads/fullscreen/RevMobVideo;->createImageAdView(Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public requestSent:Z

.field final synthetic this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

.field final synthetic val$clickListener:Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;


# direct methods
.method constructor <init>(Lcom/revmob/ads/fullscreen/RevMobVideo;Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;)V
    .locals 1

    .prologue
    .line 552
    iput-object p1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$8;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iput-object p2, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$8;->val$clickListener:Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 553
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$8;->requestSent:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 556
    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$8;->requestSent:Z

    if-nez v0, :cond_1

    .line 557
    iput-boolean v2, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$8;->requestSent:Z

    .line 558
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$8;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-boolean v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->replayClicked:Z

    if-nez v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$8;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    const-string v1, "clicks"

    # invokes: Lcom/revmob/ads/fullscreen/RevMobVideo;->getEvent(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/revmob/ads/fullscreen/RevMobVideo;->access$200(Lcom/revmob/ads/fullscreen/RevMobVideo;Ljava/lang/String;)V

    .line 561
    :cond_0
    const-string v0, "%.2f"

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$8;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-wide v4, v3, Lcom/revmob/ads/fullscreen/RevMobVideo;->relativePosition:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 562
    iget-object v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$8;->val$clickListener:Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;

    invoke-virtual {v1, v0}, Lcom/revmob/ads/fullscreen/internal/FullscreenClickListener;->onClick(Ljava/lang/String;)Z

    .line 565
    :cond_1
    return-void
.end method
