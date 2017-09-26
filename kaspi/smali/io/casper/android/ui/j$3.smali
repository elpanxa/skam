.class Lio/casper/android/ui/j$3;
.super Ljava/lang/Object;
.source "VideoControllerView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/ui/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/ui/j;


# direct methods
.method constructor <init>(Lio/casper/android/ui/j;)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Lio/casper/android/ui/j$3;->this$0:Lio/casper/android/ui/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    .prologue
    .line 503
    iget-object v0, p0, Lio/casper/android/ui/j$3;->this$0:Lio/casper/android/ui/j;

    invoke-static {v0}, Lio/casper/android/ui/j;->d(Lio/casper/android/ui/j;)Lio/casper/android/ui/j$a;

    move-result-object v0

    if-nez v0, :cond_1

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    if-eqz p3, :cond_0

    .line 513
    iget-object v0, p0, Lio/casper/android/ui/j$3;->this$0:Lio/casper/android/ui/j;

    invoke-static {v0}, Lio/casper/android/ui/j;->d(Lio/casper/android/ui/j;)Lio/casper/android/ui/j$a;

    move-result-object v0

    invoke-interface {v0}, Lio/casper/android/ui/j$a;->c()I

    move-result v0

    int-to-long v0, v0

    .line 514
    int-to-long v2, p2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 515
    iget-object v2, p0, Lio/casper/android/ui/j$3;->this$0:Lio/casper/android/ui/j;

    invoke-static {v2}, Lio/casper/android/ui/j;->d(Lio/casper/android/ui/j;)Lio/casper/android/ui/j$a;

    move-result-object v2

    long-to-int v3, v0

    invoke-interface {v2, v3}, Lio/casper/android/ui/j$a;->a(I)V

    .line 516
    iget-object v2, p0, Lio/casper/android/ui/j$3;->this$0:Lio/casper/android/ui/j;

    invoke-static {v2}, Lio/casper/android/ui/j;->e(Lio/casper/android/ui/j;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 517
    iget-object v2, p0, Lio/casper/android/ui/j$3;->this$0:Lio/casper/android/ui/j;

    invoke-static {v2}, Lio/casper/android/ui/j;->e(Lio/casper/android/ui/j;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lio/casper/android/ui/j$3;->this$0:Lio/casper/android/ui/j;

    long-to-int v0, v0

    invoke-static {v3, v0}, Lio/casper/android/ui/j;->a(Lio/casper/android/ui/j;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .prologue
    .line 490
    iget-object v0, p0, Lio/casper/android/ui/j$3;->this$0:Lio/casper/android/ui/j;

    const v1, 0x36ee80

    invoke-virtual {v0, v1}, Lio/casper/android/ui/j;->a(I)V

    .line 492
    iget-object v0, p0, Lio/casper/android/ui/j$3;->this$0:Lio/casper/android/ui/j;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/casper/android/ui/j;->a(Lio/casper/android/ui/j;Z)Z

    .line 499
    iget-object v0, p0, Lio/casper/android/ui/j$3;->this$0:Lio/casper/android/ui/j;

    invoke-static {v0}, Lio/casper/android/ui/j;->c(Lio/casper/android/ui/j;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 500
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lio/casper/android/ui/j$3;->this$0:Lio/casper/android/ui/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/casper/android/ui/j;->a(Lio/casper/android/ui/j;Z)Z

    .line 522
    iget-object v0, p0, Lio/casper/android/ui/j$3;->this$0:Lio/casper/android/ui/j;

    invoke-static {v0}, Lio/casper/android/ui/j;->f(Lio/casper/android/ui/j;)I

    .line 523
    iget-object v0, p0, Lio/casper/android/ui/j$3;->this$0:Lio/casper/android/ui/j;

    invoke-virtual {v0}, Lio/casper/android/ui/j;->e()V

    .line 524
    iget-object v0, p0, Lio/casper/android/ui/j$3;->this$0:Lio/casper/android/ui/j;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lio/casper/android/ui/j;->a(I)V

    .line 529
    iget-object v0, p0, Lio/casper/android/ui/j$3;->this$0:Lio/casper/android/ui/j;

    invoke-static {v0}, Lio/casper/android/ui/j;->c(Lio/casper/android/ui/j;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 530
    return-void
.end method
