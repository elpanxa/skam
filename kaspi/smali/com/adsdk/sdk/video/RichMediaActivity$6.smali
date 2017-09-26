.class Lcom/adsdk/sdk/video/RichMediaActivity$6;
.super Ljava/lang/Object;
.source "RichMediaActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adsdk/sdk/video/RichMediaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/video/RichMediaActivity;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$6;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 270
    const-string v0, "ADSDK"

    const-string v1, "RichMediaActivity onPrepared MediaPlayer"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$6;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoTimeoutTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$6(Lcom/adsdk/sdk/video/RichMediaActivity;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$6;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoTimeoutTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$6(Lcom/adsdk/sdk/video/RichMediaActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 273
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$6;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$7(Lcom/adsdk/sdk/video/RichMediaActivity;Ljava/util/Timer;)V

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$6;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mLoadingView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$8(Lcom/adsdk/sdk/video/RichMediaActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$6;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mLoadingView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$8(Lcom/adsdk/sdk/video/RichMediaActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$6;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$9(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/MediaController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/MediaController;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$6;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->videoFrame:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$10(Lcom/adsdk/sdk/video/RichMediaActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 281
    return-void
.end method
