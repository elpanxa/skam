.class Lcom/adsdk/sdk/video/RichMediaActivity$7;
.super Ljava/lang/Object;
.source "RichMediaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$7;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 288
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$7;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$1(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/VideoData;

    move-result-object v0

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->videoClickThrough:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$7;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$1(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/VideoData;

    move-result-object v0

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->videoClickTracking:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$7;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$1(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/VideoData;

    move-result-object v0

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->videoClickTracking:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$7;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$1(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/VideoData;

    move-result-object v0

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->videoClickThrough:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 297
    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$7;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # invokes: Lcom/adsdk/sdk/video/RichMediaActivity;->notifyAdClicked()V
    invoke-static {v1}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$3(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    .line 298
    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$7;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    iget-object v1, v1, Lcom/adsdk/sdk/video/RichMediaActivity;->mOnVideoCanCloseEventListener:Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;->onTimeEvent(I)V

    .line 300
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 301
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$7;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/RichMediaActivity;->startActivity(Landroid/content/Intent;)V

    .line 303
    :cond_1
    return-void

    .line 291
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 292
    iget-object v2, p0, Lcom/adsdk/sdk/video/RichMediaActivity$7;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # invokes: Lcom/adsdk/sdk/video/RichMediaActivity;->trackClick(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$2(Lcom/adsdk/sdk/video/RichMediaActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
