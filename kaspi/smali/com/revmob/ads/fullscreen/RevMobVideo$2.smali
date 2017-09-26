.class Lcom/revmob/ads/fullscreen/RevMobVideo$2;
.super Ljava/lang/Object;
.source "RevMobVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/ads/fullscreen/RevMobVideo;->configureVideo()V
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
    .line 330
    iput-object p1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$2;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$2;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    # invokes: Lcom/revmob/ads/fullscreen/RevMobVideo;->execTimer()V
    invoke-static {v0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->access$100(Lcom/revmob/ads/fullscreen/RevMobVideo;)V

    .line 333
    return-void
.end method
