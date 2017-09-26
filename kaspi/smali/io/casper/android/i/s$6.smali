.class Lio/casper/android/i/s$6;
.super Ljava/lang/Object;
.source "ViewerFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/i/s;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/i/s;


# direct methods
.method constructor <init>(Lio/casper/android/i/s;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lio/casper/android/i/s$6;->this$0:Lio/casper/android/i/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lio/casper/android/i/s$6;->this$0:Lio/casper/android/i/s;

    invoke-virtual {v0}, Lio/casper/android/i/s;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lio/casper/android/i/s$6;->this$0:Lio/casper/android/i/s;

    invoke-static {v0}, Lio/casper/android/i/s;->c(Lio/casper/android/i/s;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 351
    :cond_0
    iget-object v0, p0, Lio/casper/android/i/s$6;->this$0:Lio/casper/android/i/s;

    invoke-static {v0}, Lio/casper/android/i/s;->h(Lio/casper/android/i/s;)Lio/casper/android/ui/b;

    move-result-object v0

    new-instance v1, Lio/casper/android/i/s$6$1;

    invoke-direct {v1, p0}, Lio/casper/android/i/s$6$1;-><init>(Lio/casper/android/i/s$6;)V

    invoke-virtual {v0, v1}, Lio/casper/android/ui/b;->setMediaPlayer(Lio/casper/android/ui/j$a;)V

    .line 413
    iget-object v0, p0, Lio/casper/android/i/s$6;->this$0:Lio/casper/android/i/s;

    invoke-static {v0}, Lio/casper/android/i/s;->h(Lio/casper/android/i/s;)Lio/casper/android/ui/b;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/i/s$6;->this$0:Lio/casper/android/i/s;

    invoke-static {v1}, Lio/casper/android/i/s;->i(Lio/casper/android/i/s;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/casper/android/ui/b;->setAnchorView(Landroid/view/ViewGroup;)V

    .line 415
    return-void
.end method
