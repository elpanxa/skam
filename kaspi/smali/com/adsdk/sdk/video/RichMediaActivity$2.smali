.class Lcom/adsdk/sdk/video/RichMediaActivity$2;
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
    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$2;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$2;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$1(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/VideoData;

    move-result-object v0

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->overlayClickThrough:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$2;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$1(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/VideoData;

    move-result-object v0

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->overlayClickTracking:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$2;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$2;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;
    invoke-static {v1}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$1(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/VideoData;

    move-result-object v1

    iget-object v1, v1, Lcom/adsdk/sdk/video/VideoData;->overlayClickTracking:Ljava/lang/String;

    # invokes: Lcom/adsdk/sdk/video/RichMediaActivity;->trackClick(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$2(Lcom/adsdk/sdk/video/RichMediaActivity;Ljava/lang/String;)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$2;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$1(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/VideoData;

    move-result-object v0

    iget-object v0, v0, Lcom/adsdk/sdk/video/VideoData;->overlayClickThrough:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$2;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # invokes: Lcom/adsdk/sdk/video/RichMediaActivity;->notifyAdClicked()V
    invoke-static {v1}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$3(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    .line 218
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 219
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$2;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/RichMediaActivity;->startActivity(Landroid/content/Intent;)V

    .line 222
    :cond_1
    const-string v0, "ADSDK"

    const-string v1, "RichMediaActivity mOverlayClickListener"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void
.end method
