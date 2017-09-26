.class Lcom/adsdk/sdk/video/RichMediaActivity$8;
.super Ljava/lang/Object;
.source "RichMediaActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$8;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 310
    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 311
    const-string v0, "###########TRACKING END VIDEO"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$8;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mVideoData:Lcom/adsdk/sdk/video/VideoData;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$1(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/VideoData;

    move-result-object v0

    iget-object v3, v0, Lcom/adsdk/sdk/video/VideoData;->completeEvents:Ljava/util/Vector;

    move v1, v2

    .line 313
    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$8;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$11(Lcom/adsdk/sdk/video/RichMediaActivity;Z)V

    .line 322
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$8;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/RichMediaActivity;->setResult(I)V

    .line 324
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$8;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mMediaController:Lcom/adsdk/sdk/video/MediaController;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$9(Lcom/adsdk/sdk/video/RichMediaActivity;)Lcom/adsdk/sdk/video/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/MediaController;->hide()V

    .line 325
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$8;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->buttonsLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$12(Lcom/adsdk/sdk/video/RichMediaActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 326
    return-void

    .line 315
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "Track url:"

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 316
    new-instance v4, Lcom/adsdk/sdk/video/TrackEvent;

    invoke-direct {v4}, Lcom/adsdk/sdk/video/TrackEvent;-><init>()V

    .line 317
    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v4, Lcom/adsdk/sdk/video/TrackEvent;->url:Ljava/lang/String;

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/adsdk/sdk/video/TrackEvent;->timestamp:J

    .line 319
    invoke-static {v4}, Lcom/adsdk/sdk/video/TrackerService;->requestTrack(Lcom/adsdk/sdk/video/TrackEvent;)V

    .line 313
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
