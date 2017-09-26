.class Lcom/adsdk/sdk/video/RichMediaActivity$5;
.super Ljava/lang/Object;
.source "RichMediaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$5;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 254
    const-string v0, "Video playback is being checked"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->w(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$5;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoView:Lcom/adsdk/sdk/video/SDKVideoView;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$4(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/SDKVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/SDKVideoView;->getCurrentPosition()I

    move-result v0

    .line 256
    iget-object v1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$5;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    iget v1, v1, Lcom/adsdk/sdk/video/RichMediaActivity;->mTimeTest:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 257
    const-string v0, "Video playback too slow. Ending"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->w(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$5;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->finish()V

    .line 262
    :goto_0
    return-void

    .line 260
    :cond_0
    const-string v0, "Video playback has restarted"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->w(Ljava/lang/String;)V

    goto :goto_0
.end method
