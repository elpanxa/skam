.class Lio/casper/android/a/i$1;
.super Ljava/lang/Object;
.source "UpdatesListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/i;->a(Lio/casper/android/a/i$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/a/i;

.field final synthetic val$downloadUrl:Ljava/lang/String;

.field final synthetic val$update:Lio/casper/android/c/b/b/a/d;


# direct methods
.method constructor <init>(Lio/casper/android/a/i;Lio/casper/android/c/b/b/a/d;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lio/casper/android/a/i$1;->this$0:Lio/casper/android/a/i;

    iput-object p2, p0, Lio/casper/android/a/i$1;->val$update:Lio/casper/android/c/b/b/a/d;

    iput-object p3, p0, Lio/casper/android/a/i$1;->val$downloadUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 100
    iget-object v0, p0, Lio/casper/android/a/i$1;->val$update:Lio/casper/android/c/b/b/a/d;

    invoke-virtual {v0}, Lio/casper/android/c/b/b/a/d;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/casper/android/a/i$1;->this$0:Lio/casper/android/a/i;

    invoke-static {v0}, Lio/casper/android/a/i;->a(Lio/casper/android/a/i;)Lio/casper/android/l/r;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/l/r;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    :cond_0
    iget-object v0, p0, Lio/casper/android/a/i$1;->this$0:Lio/casper/android/a/i;

    invoke-static {v0}, Lio/casper/android/a/i;->b(Lio/casper/android/a/i;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lio/casper/android/a/i$1;->val$downloadUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 168
    :goto_0
    return-void

    .line 105
    :cond_1
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/a/i$1;->this$0:Lio/casper/android/a/i;

    invoke-static {v1}, Lio/casper/android/a/i;->b(Lio/casper/android/a/i;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 106
    const/16 v1, 0x64

    invoke-virtual {v0, v3, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progress(ZI)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 107
    invoke-virtual {v0, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 108
    iget-object v1, p0, Lio/casper/android/a/i$1;->this$0:Lio/casper/android/a/i;

    invoke-static {v1}, Lio/casper/android/a/i;->b(Lio/casper/android/a/i;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0700a5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 109
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    .line 110
    new-instance v1, Lio/casper/android/h/a/a;

    invoke-direct {v1, v0}, Lio/casper/android/h/a/a;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    invoke-virtual {v1}, Lio/casper/android/h/a/a;->a()V

    .line 111
    invoke-virtual {v0, v3}, Lcom/afollestad/materialdialogs/MaterialDialog;->setProgress(I)V

    .line 113
    iget-object v1, p0, Lio/casper/android/a/i$1;->this$0:Lio/casper/android/a/i;

    invoke-static {v1}, Lio/casper/android/a/i;->c(Lio/casper/android/a/i;)Lio/casper/android/l/k;

    move-result-object v1

    iget-object v2, p0, Lio/casper/android/a/i$1;->val$update:Lio/casper/android/c/b/b/a/d;

    invoke-virtual {v2}, Lio/casper/android/c/b/b/a/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/casper/android/l/k;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 115
    new-instance v2, Lio/casper/android/c/c/f/a;

    iget-object v3, p0, Lio/casper/android/a/i$1;->this$0:Lio/casper/android/a/i;

    invoke-static {v3}, Lio/casper/android/a/i;->b(Lio/casper/android/a/i;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lio/casper/android/a/i$1;->val$downloadUrl:Ljava/lang/String;

    new-instance v5, Lio/casper/android/a/i$1$1;

    invoke-direct {v5, p0, v0}, Lio/casper/android/a/i$1$1;-><init>(Lio/casper/android/a/i$1;Lcom/afollestad/materialdialogs/MaterialDialog;)V

    invoke-direct {v2, v3, v4, v1, v5}, Lio/casper/android/c/c/f/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lio/casper/android/c/c/c/a;)V

    .line 127
    new-instance v3, Lio/casper/android/a/i$1$2;

    invoke-direct {v3, p0, v0, v1}, Lio/casper/android/a/i$1$2;-><init>(Lio/casper/android/a/i$1;Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/io/File;)V

    invoke-virtual {v2, v3}, Lio/casper/android/c/c/f/a;->a(Lio/casper/android/c/c/a/a;)V

    goto :goto_0
.end method
