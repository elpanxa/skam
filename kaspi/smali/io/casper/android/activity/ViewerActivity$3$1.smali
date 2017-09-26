.class Lio/casper/android/activity/ViewerActivity$3$1;
.super Ljava/lang/Object;
.source "ViewerActivity.java"

# interfaces
.implements Lio/casper/android/ui/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/ViewerActivity$3;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/activity/ViewerActivity$3;


# direct methods
.method constructor <init>(Lio/casper/android/activity/ViewerActivity$3;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lio/casper/android/activity/ViewerActivity$3$1;->this$1:Lio/casper/android/activity/ViewerActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity$3$1;->this$1:Lio/casper/android/activity/ViewerActivity$3;

    iget-object v0, v0, Lio/casper/android/activity/ViewerActivity$3;->this$0:Lio/casper/android/activity/ViewerActivity;

    invoke-static {v0}, Lio/casper/android/activity/ViewerActivity;->e(Lio/casper/android/activity/ViewerActivity;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 256
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity$3$1;->this$1:Lio/casper/android/activity/ViewerActivity$3;

    iget-object v0, v0, Lio/casper/android/activity/ViewerActivity$3;->this$0:Lio/casper/android/activity/ViewerActivity;

    invoke-static {v0}, Lio/casper/android/activity/ViewerActivity;->e(Lio/casper/android/activity/ViewerActivity;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 276
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity$3$1;->this$1:Lio/casper/android/activity/ViewerActivity$3;

    iget-object v0, v0, Lio/casper/android/activity/ViewerActivity$3;->this$0:Lio/casper/android/activity/ViewerActivity;

    invoke-static {v0}, Lio/casper/android/activity/ViewerActivity;->e(Lio/casper/android/activity/ViewerActivity;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 261
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity$3$1;->this$1:Lio/casper/android/activity/ViewerActivity$3;

    iget-object v0, v0, Lio/casper/android/activity/ViewerActivity$3;->this$0:Lio/casper/android/activity/ViewerActivity;

    invoke-static {v0}, Lio/casper/android/activity/ViewerActivity;->e(Lio/casper/android/activity/ViewerActivity;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity$3$1;->this$1:Lio/casper/android/activity/ViewerActivity$3;

    iget-object v0, v0, Lio/casper/android/activity/ViewerActivity$3;->this$0:Lio/casper/android/activity/ViewerActivity;

    invoke-static {v0}, Lio/casper/android/activity/ViewerActivity;->e(Lio/casper/android/activity/ViewerActivity;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity$3$1;->this$1:Lio/casper/android/activity/ViewerActivity$3;

    iget-object v0, v0, Lio/casper/android/activity/ViewerActivity$3;->this$0:Lio/casper/android/activity/ViewerActivity;

    invoke-static {v0}, Lio/casper/android/activity/ViewerActivity;->e(Lio/casper/android/activity/ViewerActivity;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity$3$1;->this$1:Lio/casper/android/activity/ViewerActivity$3;

    iget-object v0, v0, Lio/casper/android/activity/ViewerActivity$3;->this$0:Lio/casper/android/activity/ViewerActivity;

    invoke-static {v0}, Lio/casper/android/activity/ViewerActivity;->e(Lio/casper/android/activity/ViewerActivity;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getBufferPercentage()I

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity$3$1;->this$1:Lio/casper/android/activity/ViewerActivity$3;

    iget-object v0, v0, Lio/casper/android/activity/ViewerActivity$3;->this$0:Lio/casper/android/activity/ViewerActivity;

    invoke-static {v0}, Lio/casper/android/activity/ViewerActivity;->e(Lio/casper/android/activity/ViewerActivity;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->canPause()Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity$3$1;->this$1:Lio/casper/android/activity/ViewerActivity$3;

    iget-object v0, v0, Lio/casper/android/activity/ViewerActivity$3;->this$0:Lio/casper/android/activity/ViewerActivity;

    invoke-static {v0}, Lio/casper/android/activity/ViewerActivity;->e(Lio/casper/android/activity/ViewerActivity;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->canSeekBackward()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity$3$1;->this$1:Lio/casper/android/activity/ViewerActivity$3;

    iget-object v0, v0, Lio/casper/android/activity/ViewerActivity$3;->this$0:Lio/casper/android/activity/ViewerActivity;

    invoke-static {v0}, Lio/casper/android/activity/ViewerActivity;->e(Lio/casper/android/activity/ViewerActivity;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->canSeekForward()Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 0

    .prologue
    .line 311
    return-void
.end method
