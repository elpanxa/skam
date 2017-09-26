.class Lio/casper/android/i/p$4;
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
    .line 175
    iput-object p1, p0, Lio/casper/android/i/p$4;->this$0:Lio/casper/android/i/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lio/casper/android/i/p$4;->this$0:Lio/casper/android/i/p;

    invoke-static {v0}, Lio/casper/android/i/p;->a(Lio/casper/android/i/p;)Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->collapseImmediately()V

    .line 181
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lio/casper/android/i/p$4;->this$0:Lio/casper/android/i/p;

    invoke-static {v1}, Lio/casper/android/i/p;->b(Lio/casper/android/i/p;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/casper/android/activity/EditorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    const-string v1, "type"

    const-string v2, "blank"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    iget-object v1, p0, Lio/casper/android/i/p$4;->this$0:Lio/casper/android/i/p;

    invoke-virtual {v1, v0}, Lio/casper/android/i/p;->startActivity(Landroid/content/Intent;)V

    .line 185
    return-void
.end method
