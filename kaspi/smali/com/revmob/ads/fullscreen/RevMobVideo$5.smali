.class Lcom/revmob/ads/fullscreen/RevMobVideo$5;
.super Ljava/lang/Object;
.source "RevMobVideo.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 384
    iput-object p1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$5;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$5;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/RevMobVideo;->videoCompleted()V

    .line 388
    return-void
.end method
