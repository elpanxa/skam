.class Lio/casper/android/i/f$2$1;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$InputCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/i/f$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/i/f$2;


# direct methods
.method constructor <init>(Lio/casper/android/i/f$2;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lio/casper/android/i/f$2$1;->this$1:Lio/casper/android/i/f$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInput(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lio/casper/android/i/f$2$1;->this$1:Lio/casper/android/i/f$2;

    iget-object v0, v0, Lio/casper/android/i/f$2;->this$0:Lio/casper/android/i/f;

    invoke-static {v0}, Lio/casper/android/i/f;->b(Lio/casper/android/i/f;)Lio/casper/android/n/c/a/d;

    move-result-object v0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/casper/android/n/c/a/d;->a(Ljava/lang/String;)Lio/casper/android/n/a/c/b/i;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->i()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->i()I

    move-result v0

    if-nez v0, :cond_1

    .line 123
    :cond_0
    iget-object v0, p0, Lio/casper/android/i/f$2$1;->this$1:Lio/casper/android/i/f$2;

    iget-object v0, v0, Lio/casper/android/i/f$2;->this$0:Lio/casper/android/i/f;

    invoke-static {v0}, Lio/casper/android/i/f;->a(Lio/casper/android/i/f;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0700b1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 168
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Lio/casper/android/i/f$2$1;->this$1:Lio/casper/android/i/f$2;

    iget-object v0, v0, Lio/casper/android/i/f$2;->this$0:Lio/casper/android/i/f;

    invoke-static {v0}, Lio/casper/android/i/f;->c(Lio/casper/android/i/f;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    .line 130
    new-instance v0, Lio/casper/android/n/a/b/i;

    iget-object v1, p0, Lio/casper/android/i/f$2$1;->this$1:Lio/casper/android/i/f$2;

    iget-object v1, v1, Lio/casper/android/i/f$2;->this$0:Lio/casper/android/i/f;

    invoke-static {v1}, Lio/casper/android/i/f;->a(Lio/casper/android/i/f;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/casper/android/n/a/b/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0}, Lio/casper/android/n/a/b/i;->i()Lio/casper/android/n/a/b/i;

    .line 132
    new-instance v1, Lio/casper/android/i/f$2$1$1;

    invoke-direct {v1, p0}, Lio/casper/android/i/f$2$1$1;-><init>(Lio/casper/android/i/f$2$1;)V

    invoke-virtual {v0, v1}, Lio/casper/android/n/a/b/i;->a(Lio/casper/android/c/c/a/a;)V

    goto :goto_0
.end method
