.class Lio/casper/android/i/f$2$1$1;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Lio/casper/android/c/c/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/i/f$2$1;->onInput(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/CharSequence;)V
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
        "Lio/casper/android/n/a/c/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lio/casper/android/i/f$2$1;


# direct methods
.method constructor <init>(Lio/casper/android/i/f$2$1;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lio/casper/android/i/f$2$1$1;->this$2:Lio/casper/android/i/f$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/squareup/okhttp/Response;Lio/casper/android/n/a/c/f;)V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lio/casper/android/i/f$2$1$1;->this$2:Lio/casper/android/i/f$2$1;

    iget-object v0, v0, Lio/casper/android/i/f$2$1;->this$1:Lio/casper/android/i/f$2;

    iget-object v0, v0, Lio/casper/android/i/f$2;->this$0:Lio/casper/android/i/f;

    invoke-static {v0}, Lio/casper/android/i/f;->c(Lio/casper/android/i/f;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 138
    invoke-virtual {p2}, Lio/casper/android/n/a/c/f;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lio/casper/android/i/f$2$1$1;->this$2:Lio/casper/android/i/f$2$1;

    iget-object v0, v0, Lio/casper/android/i/f$2$1;->this$1:Lio/casper/android/i/f$2;

    iget-object v0, v0, Lio/casper/android/i/f$2;->this$0:Lio/casper/android/i/f;

    invoke-static {v0}, Lio/casper/android/i/f;->a(Lio/casper/android/i/f;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lio/casper/android/n/a/c/f;->m()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 141
    new-instance v0, Lio/casper/android/n/a/b/g;

    iget-object v1, p0, Lio/casper/android/i/f$2$1$1;->this$2:Lio/casper/android/i/f$2$1;

    iget-object v1, v1, Lio/casper/android/i/f$2$1;->this$1:Lio/casper/android/i/f$2;

    iget-object v1, v1, Lio/casper/android/i/f$2;->this$0:Lio/casper/android/i/f;

    invoke-static {v1}, Lio/casper/android/i/f;->a(Lio/casper/android/i/f;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/casper/android/n/a/b/g;-><init>(Landroid/content/Context;)V

    new-instance v1, Lio/casper/android/i/f$2$1$1$1;

    invoke-direct {v1, p0}, Lio/casper/android/i/f$2$1$1$1;-><init>(Lio/casper/android/i/f$2$1$1;)V

    invoke-virtual {v0, v1}, Lio/casper/android/n/a/b/g;->a(Lio/casper/android/c/c/a/a;)V

    .line 157
    :goto_0
    return-void

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-virtual {p2}, Lio/casper/android/n/a/c/f;->m()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lio/casper/android/i/f$2$1$1;->a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/squareup/okhttp/Response;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 132
    check-cast p2, Lio/casper/android/n/a/c/f;

    invoke-virtual {p0, p1, p2}, Lio/casper/android/i/f$2$1$1;->a(Lcom/squareup/okhttp/Response;Lio/casper/android/n/a/c/f;)V

    return-void
.end method

.method public a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lio/casper/android/i/f$2$1$1;->this$2:Lio/casper/android/i/f$2$1;

    iget-object v0, v0, Lio/casper/android/i/f$2$1;->this$1:Lio/casper/android/i/f$2;

    iget-object v0, v0, Lio/casper/android/i/f$2;->this$0:Lio/casper/android/i/f;

    invoke-static {v0}, Lio/casper/android/i/f;->c(Lio/casper/android/i/f;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 163
    iget-object v0, p0, Lio/casper/android/i/f$2$1$1;->this$2:Lio/casper/android/i/f$2$1;

    iget-object v0, v0, Lio/casper/android/i/f$2$1;->this$1:Lio/casper/android/i/f$2;

    iget-object v0, v0, Lio/casper/android/i/f$2;->this$0:Lio/casper/android/i/f;

    invoke-static {v0}, Lio/casper/android/i/f;->a(Lio/casper/android/i/f;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 165
    return-void
.end method
