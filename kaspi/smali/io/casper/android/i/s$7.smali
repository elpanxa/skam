.class Lio/casper/android/i/s$7;
.super Ljava/lang/Object;
.source "ViewerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 421
    iput-object p1, p0, Lio/casper/android/i/s$7;->this$0:Lio/casper/android/i/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 424
    iget-object v0, p0, Lio/casper/android/i/s$7;->this$0:Lio/casper/android/i/s;

    invoke-static {v0}, Lio/casper/android/i/s;->d(Lio/casper/android/i/s;)Landroid/support/v7/widget/Toolbar;

    move-result-object v2

    iget-object v0, p0, Lio/casper/android/i/s$7;->this$0:Lio/casper/android/i/s;

    invoke-static {v0}, Lio/casper/android/i/s;->d(Lio/casper/android/i/s;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 425
    iget-object v0, p0, Lio/casper/android/i/s$7;->this$0:Lio/casper/android/i/s;

    invoke-static {v0}, Lio/casper/android/i/s;->h(Lio/casper/android/i/s;)Lio/casper/android/ui/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/ui/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 426
    iget-object v0, p0, Lio/casper/android/i/s$7;->this$0:Lio/casper/android/i/s;

    invoke-static {v0}, Lio/casper/android/i/s;->h(Lio/casper/android/i/s;)Lio/casper/android/ui/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/ui/b;->b()V

    .line 430
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 424
    goto :goto_0

    .line 428
    :cond_1
    iget-object v0, p0, Lio/casper/android/i/s$7;->this$0:Lio/casper/android/i/s;

    invoke-static {v0}, Lio/casper/android/i/s;->h(Lio/casper/android/i/s;)Lio/casper/android/ui/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/casper/android/ui/b;->a(I)V

    goto :goto_1
.end method
