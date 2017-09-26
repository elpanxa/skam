.class Lio/casper/android/ui/j$5;
.super Ljava/lang/Object;
.source "VideoControllerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 584
    iput-object p1, p0, Lio/casper/android/ui/j$5;->this$0:Lio/casper/android/ui/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 586
    iget-object v0, p0, Lio/casper/android/ui/j$5;->this$0:Lio/casper/android/ui/j;

    invoke-static {v0}, Lio/casper/android/ui/j;->d(Lio/casper/android/ui/j;)Lio/casper/android/ui/j$a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 596
    :goto_0
    return-void

    .line 590
    :cond_0
    iget-object v0, p0, Lio/casper/android/ui/j$5;->this$0:Lio/casper/android/ui/j;

    invoke-static {v0}, Lio/casper/android/ui/j;->d(Lio/casper/android/ui/j;)Lio/casper/android/ui/j$a;

    move-result-object v0

    invoke-interface {v0}, Lio/casper/android/ui/j$a;->d()I

    move-result v0

    .line 591
    add-int/lit16 v0, v0, 0x3a98

    .line 592
    iget-object v1, p0, Lio/casper/android/ui/j$5;->this$0:Lio/casper/android/ui/j;

    invoke-static {v1}, Lio/casper/android/ui/j;->d(Lio/casper/android/ui/j;)Lio/casper/android/ui/j$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/casper/android/ui/j$a;->a(I)V

    .line 593
    iget-object v0, p0, Lio/casper/android/ui/j$5;->this$0:Lio/casper/android/ui/j;

    invoke-static {v0}, Lio/casper/android/ui/j;->f(Lio/casper/android/ui/j;)I

    .line 595
    iget-object v0, p0, Lio/casper/android/ui/j$5;->this$0:Lio/casper/android/ui/j;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lio/casper/android/ui/j;->a(I)V

    goto :goto_0
.end method
