.class Lio/casper/android/activity/ViewerActivity$3;
.super Ljava/lang/Object;
.source "ViewerActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/ViewerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/activity/ViewerActivity;


# direct methods
.method constructor <init>(Lio/casper/android/activity/ViewerActivity;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lio/casper/android/activity/ViewerActivity$3;->this$0:Lio/casper/android/activity/ViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity$3;->this$0:Lio/casper/android/activity/ViewerActivity;

    invoke-static {v0}, Lio/casper/android/activity/ViewerActivity;->f(Lio/casper/android/activity/ViewerActivity;)Lio/casper/android/ui/b;

    move-result-object v0

    new-instance v1, Lio/casper/android/activity/ViewerActivity$3$1;

    invoke-direct {v1, p0}, Lio/casper/android/activity/ViewerActivity$3$1;-><init>(Lio/casper/android/activity/ViewerActivity$3;)V

    invoke-virtual {v0, v1}, Lio/casper/android/ui/b;->setMediaPlayer(Lio/casper/android/ui/j$a;)V

    .line 314
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity$3;->this$0:Lio/casper/android/activity/ViewerActivity;

    invoke-static {v0}, Lio/casper/android/activity/ViewerActivity;->f(Lio/casper/android/activity/ViewerActivity;)Lio/casper/android/ui/b;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/activity/ViewerActivity$3;->this$0:Lio/casper/android/activity/ViewerActivity;

    invoke-static {v1}, Lio/casper/android/activity/ViewerActivity;->g(Lio/casper/android/activity/ViewerActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/casper/android/ui/b;->setAnchorView(Landroid/view/ViewGroup;)V

    .line 316
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity$3;->this$0:Lio/casper/android/activity/ViewerActivity;

    invoke-static {v0}, Lio/casper/android/activity/ViewerActivity;->h(Lio/casper/android/activity/ViewerActivity;)Lio/casper/android/l/r;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/l/r;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity$3;->this$0:Lio/casper/android/activity/ViewerActivity;

    invoke-static {v0}, Lio/casper/android/activity/ViewerActivity;->f(Lio/casper/android/activity/ViewerActivity;)Lio/casper/android/ui/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/casper/android/ui/b;->a(I)V

    .line 320
    :cond_0
    return-void
.end method
