.class Lcom/revmob/ads/fullscreen/RevMobVideo$7;
.super Ljava/lang/Object;
.source "RevMobVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/ads/fullscreen/RevMobVideo;->configureVideoDurationMethods()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

.field timeLeft:I

.field final synthetic val$finalDuration:I


# direct methods
.method constructor <init>(Lcom/revmob/ads/fullscreen/RevMobVideo;I)V
    .locals 1

    .prologue
    .line 449
    iput-object p1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$7;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iput p2, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$7;->val$finalDuration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    iget v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$7;->val$finalDuration:I

    iput v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$7;->timeLeft:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 454
    iget v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$7;->timeLeft:I

    add-int/lit16 v0, v0, -0x3e8

    if-gez v0, :cond_0

    .line 455
    iput v5, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$7;->timeLeft:I

    .line 456
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$7;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->timerHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 462
    :goto_0
    return-void

    .line 459
    :cond_0
    iget v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$7;->timeLeft:I

    add-int/lit16 v0, v0, -0x3e8

    iput v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$7;->timeLeft:I

    .line 460
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$7;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->countdownTimer:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%02d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$7;->timeLeft:I

    div-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$7;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->timerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$7;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    # getter for: Lcom/revmob/ads/fullscreen/RevMobVideo;->timerRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/revmob/ads/fullscreen/RevMobVideo;->access$300(Lcom/revmob/ads/fullscreen/RevMobVideo;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
