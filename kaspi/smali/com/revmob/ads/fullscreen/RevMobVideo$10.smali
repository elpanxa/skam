.class Lcom/revmob/ads/fullscreen/RevMobVideo$10;
.super Ljava/lang/Object;
.source "RevMobVideo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/ads/fullscreen/RevMobVideo;->createMuteButton()Landroid/view/View;
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
    .line 603
    iput-object p1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$10;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 608
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$10;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->videoVolume:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 609
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$10;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->videoVolume:F

    .line 610
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$10;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->muteButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$10;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v1, v1, Lcom/revmob/ads/fullscreen/RevMobVideo;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v1}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getSoundOff()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 611
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$10;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-boolean v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->replayClicked:Z

    if-nez v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$10;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    const-string v1, "mute"

    # invokes: Lcom/revmob/ads/fullscreen/RevMobVideo;->postEvent(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/revmob/ads/fullscreen/RevMobVideo;->access$000(Lcom/revmob/ads/fullscreen/RevMobVideo;Ljava/lang/String;)V

    .line 622
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$10;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->videoMp:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$10;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget v1, v1, Lcom/revmob/ads/fullscreen/RevMobVideo;->videoVolume:F

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$10;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget v2, v2, Lcom/revmob/ads/fullscreen/RevMobVideo;->videoVolume:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 623
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$10;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->fullScreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$10;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v1, v1, Lcom/revmob/ads/fullscreen/RevMobVideo;->fullScreenActivity:Lcom/revmob/ads/fullscreen/FullscreenActivity;

    invoke-virtual {v1}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->getApplicationContext()Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 624
    const-string v1, "RevMobVideoVolume"

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$10;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget v2, v2, Lcom/revmob/ads/fullscreen/RevMobVideo;->videoVolume:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 625
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 626
    return-void

    .line 615
    :cond_1
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$10;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iput v1, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->videoVolume:F

    .line 616
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$10;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->muteButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$10;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-object v1, v1, Lcom/revmob/ads/fullscreen/RevMobVideo;->data:Lcom/revmob/ads/fullscreen/client/FullscreenData;

    invoke-virtual {v1}, Lcom/revmob/ads/fullscreen/client/FullscreenData;->getSoundOn()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 617
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$10;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    iget-boolean v0, v0, Lcom/revmob/ads/fullscreen/RevMobVideo;->replayClicked:Z

    if-nez v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/RevMobVideo$10;->this$0:Lcom/revmob/ads/fullscreen/RevMobVideo;

    const-string v1, "unmute"

    # invokes: Lcom/revmob/ads/fullscreen/RevMobVideo;->postEvent(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/revmob/ads/fullscreen/RevMobVideo;->access$000(Lcom/revmob/ads/fullscreen/RevMobVideo;Ljava/lang/String;)V

    goto :goto_0
.end method
