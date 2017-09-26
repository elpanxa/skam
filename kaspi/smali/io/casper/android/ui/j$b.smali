.class Lio/casper/android/ui/j$b;
.super Landroid/os/Handler;
.source "VideoControllerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/ui/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lio/casper/android/ui/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/casper/android/ui/j;)V
    .locals 1

    .prologue
    .line 646
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 647
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/casper/android/ui/j$b;->mView:Ljava/lang/ref/WeakReference;

    .line 648
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 651
    iget-object v0, p0, Lio/casper/android/ui/j$b;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/ui/j;

    .line 652
    if-eqz v0, :cond_0

    invoke-static {v0}, Lio/casper/android/ui/j;->d(Lio/casper/android/ui/j;)Lio/casper/android/ui/j$a;

    move-result-object v1

    if-nez v1, :cond_1

    .line 669
    :cond_0
    :goto_0
    return-void

    .line 657
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 659
    :pswitch_0
    invoke-virtual {v0}, Lio/casper/android/ui/j;->a()V

    goto :goto_0

    .line 662
    :pswitch_1
    invoke-static {v0}, Lio/casper/android/ui/j;->f(Lio/casper/android/ui/j;)I

    move-result v1

    .line 663
    invoke-static {v0}, Lio/casper/android/ui/j;->g(Lio/casper/android/ui/j;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lio/casper/android/ui/j;->h(Lio/casper/android/ui/j;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lio/casper/android/ui/j;->d(Lio/casper/android/ui/j;)Lio/casper/android/ui/j$a;

    move-result-object v0

    invoke-interface {v0}, Lio/casper/android/ui/j$a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lio/casper/android/ui/j$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 665
    rem-int/lit16 v1, v1, 0x3e8

    rsub-int v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lio/casper/android/ui/j$b;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 657
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
