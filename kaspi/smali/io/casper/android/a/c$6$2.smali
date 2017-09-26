.class Lio/casper/android/a/c$6$2;
.super Ljava/lang/Object;
.source "FontsListAdapter.java"

# interfaces
.implements Lio/casper/android/c/c/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/c$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/casper/android/c/c/a/a",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/a/c$6;

.field final synthetic val$progressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;


# direct methods
.method constructor <init>(Lio/casper/android/a/c$6;Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lio/casper/android/a/c$6$2;->this$1:Lio/casper/android/a/c$6;

    iput-object p2, p0, Lio/casper/android/a/c$6$2;->val$progressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/squareup/okhttp/Response;Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 257
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lio/casper/android/a/c$6$2;->val$progressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 259
    iget-object v0, p0, Lio/casper/android/a/c$6$2;->this$1:Lio/casper/android/a/c$6;

    iget-object v0, v0, Lio/casper/android/a/c$6;->this$0:Lio/casper/android/a/c;

    invoke-static {v0}, Lio/casper/android/a/c;->c(Lio/casper/android/a/c;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0700ac

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 260
    iget-object v0, p0, Lio/casper/android/a/c$6$2;->this$1:Lio/casper/android/a/c$6;

    iget-object v0, v0, Lio/casper/android/a/c$6;->this$0:Lio/casper/android/a/c;

    invoke-virtual {v0}, Lio/casper/android/a/c;->notifyDataSetChanged()V

    .line 261
    new-instance v0, Lio/casper/android/b/a/c;

    iget-object v1, p0, Lio/casper/android/a/c$6$2;->this$1:Lio/casper/android/a/c$6;

    iget-object v1, v1, Lio/casper/android/a/c$6;->this$0:Lio/casper/android/a/c;

    invoke-static {v1}, Lio/casper/android/a/c;->c(Lio/casper/android/a/c;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/casper/android/b/a/c;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lio/casper/android/a/c$6$2;->this$1:Lio/casper/android/a/c$6;

    iget-object v1, v1, Lio/casper/android/a/c$6;->val$font:Lio/casper/android/c/b/b/a/b;

    invoke-virtual {v1}, Lio/casper/android/c/b/b/a/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/casper/android/b/a/c;->a(Ljava/lang/String;)Lio/casper/android/b/a/c;

    move-result-object v0

    const-string v1, "Download"

    invoke-virtual {v0, v1}, Lio/casper/android/b/a/c;->b(Ljava/lang/String;)Lio/casper/android/b/a/c;

    move-result-object v0

    invoke-static {v0}, Lio/casper/android/l/c;->a(Lio/casper/android/b/a/a/a;)V

    .line 265
    :goto_0
    return-void

    .line 263
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/casper/android/a/c$6$2;->a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/squareup/okhttp/Response;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 254
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lio/casper/android/a/c$6$2;->a(Lcom/squareup/okhttp/Response;Ljava/lang/Boolean;)V

    return-void
.end method

.method public a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 269
    iget-object v0, p0, Lio/casper/android/a/c$6$2;->val$progressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 270
    iget-object v0, p0, Lio/casper/android/a/c$6$2;->this$1:Lio/casper/android/a/c$6;

    iget-object v0, v0, Lio/casper/android/a/c$6;->this$0:Lio/casper/android/a/c;

    invoke-static {v0}, Lio/casper/android/a/c;->c(Lio/casper/android/a/c;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07007c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 271
    return-void
.end method
