.class Lio/casper/android/a/a/d$1$1;
.super Ljava/lang/Object;
.source "FriendsAdapter.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$InputCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/a/d$1;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/a/a/d$1;

.field final synthetic val$friendRequest:Lio/casper/android/n/a/b/i;


# direct methods
.method constructor <init>(Lio/casper/android/a/a/d$1;Lio/casper/android/n/a/b/i;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lio/casper/android/a/a/d$1$1;->this$1:Lio/casper/android/a/a/d$1;

    iput-object p2, p0, Lio/casper/android/a/a/d$1$1;->val$friendRequest:Lio/casper/android/n/a/b/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInput(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lio/casper/android/a/a/d$1$1;->this$1:Lio/casper/android/a/a/d$1;

    iget-object v0, v0, Lio/casper/android/a/a/d$1;->this$0:Lio/casper/android/a/a/d;

    invoke-static {v0}, Lio/casper/android/a/a/d;->b(Lio/casper/android/a/a/d;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    .line 195
    iget-object v0, p0, Lio/casper/android/a/a/d$1$1;->val$friendRequest:Lio/casper/android/n/a/b/i;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/casper/android/n/a/b/i;->a(Ljava/lang/String;)Lio/casper/android/n/a/b/i;

    .line 196
    iget-object v0, p0, Lio/casper/android/a/a/d$1$1;->val$friendRequest:Lio/casper/android/n/a/b/i;

    iget-object v1, p0, Lio/casper/android/a/a/d$1$1;->this$1:Lio/casper/android/a/a/d$1;

    iget-object v1, v1, Lio/casper/android/a/a/d$1;->this$0:Lio/casper/android/a/a/d;

    invoke-static {v1}, Lio/casper/android/a/a/d;->c(Lio/casper/android/a/a/d;)Lio/casper/android/c/c/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/casper/android/n/a/b/i;->a(Lio/casper/android/c/c/a/a;)V

    .line 198
    return-void
.end method
