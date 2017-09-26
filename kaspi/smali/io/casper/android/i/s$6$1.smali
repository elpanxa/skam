.class Lio/casper/android/i/s$6$1;
.super Ljava/lang/Object;
.source "ViewerFragment.java"

# interfaces
.implements Lio/casper/android/ui/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/i/s$6;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/i/s$6;


# direct methods
.method constructor <init>(Lio/casper/android/i/s$6;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lio/casper/android/i/s$6$1;->this$1:Lio/casper/android/i/s$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lio/casper/android/i/s$6$1;->this$1:Lio/casper/android/i/s$6;

    iget-object v0, v0, Lio/casper/android/i/s$6;->this$0:Lio/casper/android/i/s;

    invoke-static {v0}, Lio/casper/android/i/s;->c(Lio/casper/android/i/s;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 355
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lio/casper/android/i/s$6$1;->this$1:Lio/casper/android/i/s$6;

    iget-object v0, v0, Lio/casper/android/i/s$6;->this$0:Lio/casper/android/i/s;

    invoke-static {v0}, Lio/casper/android/i/s;->c(Lio/casper/android/i/s;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 375
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lio/casper/android/i/s$6$1;->this$1:Lio/casper/android/i/s$6;

    iget-object v0, v0, Lio/casper/android/i/s$6;->this$0:Lio/casper/android/i/s;

    invoke-static {v0}, Lio/casper/android/i/s;->c(Lio/casper/android/i/s;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 360
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lio/casper/android/i/s$6$1;->this$1:Lio/casper/android/i/s$6;

    iget-object v0, v0, Lio/casper/android/i/s$6;->this$0:Lio/casper/android/i/s;

    invoke-static {v0}, Lio/casper/android/i/s;->c(Lio/casper/android/i/s;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lio/casper/android/i/s$6$1;->this$1:Lio/casper/android/i/s$6;

    iget-object v0, v0, Lio/casper/android/i/s$6;->this$0:Lio/casper/android/i/s;

    invoke-static {v0}, Lio/casper/android/i/s;->c(Lio/casper/android/i/s;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lio/casper/android/i/s$6$1;->this$1:Lio/casper/android/i/s$6;

    iget-object v0, v0, Lio/casper/android/i/s$6;->this$0:Lio/casper/android/i/s;

    invoke-static {v0}, Lio/casper/android/i/s;->c(Lio/casper/android/i/s;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lio/casper/android/i/s$6$1;->this$1:Lio/casper/android/i/s$6;

    iget-object v0, v0, Lio/casper/android/i/s$6;->this$0:Lio/casper/android/i/s;

    invoke-static {v0}, Lio/casper/android/i/s;->c(Lio/casper/android/i/s;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getBufferPercentage()I

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lio/casper/android/i/s$6$1;->this$1:Lio/casper/android/i/s$6;

    iget-object v0, v0, Lio/casper/android/i/s$6;->this$0:Lio/casper/android/i/s;

    invoke-static {v0}, Lio/casper/android/i/s;->c(Lio/casper/android/i/s;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->canPause()Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lio/casper/android/i/s$6$1;->this$1:Lio/casper/android/i/s$6;

    iget-object v0, v0, Lio/casper/android/i/s$6;->this$0:Lio/casper/android/i/s;

    invoke-static {v0}, Lio/casper/android/i/s;->c(Lio/casper/android/i/s;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->canSeekBackward()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lio/casper/android/i/s$6$1;->this$1:Lio/casper/android/i/s$6;

    iget-object v0, v0, Lio/casper/android/i/s$6;->this$0:Lio/casper/android/i/s;

    invoke-static {v0}, Lio/casper/android/i/s;->c(Lio/casper/android/i/s;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->canSeekForward()Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 0

    .prologue
    .line 410
    return-void
.end method
