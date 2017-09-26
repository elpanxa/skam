.class Lio/casper/android/i/p$2;
.super Ljava/lang/Object;
.source "SnapsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/i/p;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/i/p;


# direct methods
.method constructor <init>(Lio/casper/android/i/p;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lio/casper/android/i/p$2;->this$0:Lio/casper/android/i/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lio/casper/android/i/p$2;->this$0:Lio/casper/android/i/p;

    invoke-static {v0}, Lio/casper/android/i/p;->a(Lio/casper/android/i/p;)Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->collapseImmediately()V

    .line 163
    iget-object v0, p0, Lio/casper/android/i/p$2;->this$0:Lio/casper/android/i/p;

    invoke-static {v0}, Lio/casper/android/i/p;->b(Lio/casper/android/i/p;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lio/casper/android/activity/MainActivity;

    invoke-virtual {v0}, Lio/casper/android/activity/MainActivity;->d()V

    .line 164
    return-void
.end method
