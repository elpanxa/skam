.class Lio/casper/android/i/r$2;
.super Ljava/lang/Object;
.source "UpdatesFragment.java"

# interfaces
.implements Lio/casper/android/c/c/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/i/r;->a()V
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
        "Lio/casper/android/c/b/b/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/i/r;

.field final synthetic val$updatesRequest:Lio/casper/android/c/b/a/e;


# direct methods
.method constructor <init>(Lio/casper/android/i/r;Lio/casper/android/c/b/a/e;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lio/casper/android/i/r$2;->this$0:Lio/casper/android/i/r;

    iput-object p2, p0, Lio/casper/android/i/r$2;->val$updatesRequest:Lio/casper/android/c/b/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/squareup/okhttp/Response;Lio/casper/android/c/b/b/f;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 101
    iget-object v0, p0, Lio/casper/android/i/r$2;->this$0:Lio/casper/android/i/r;

    invoke-virtual {v0, v3}, Lio/casper/android/i/r;->a(Z)V

    .line 103
    invoke-virtual {p2}, Lio/casper/android/c/b/b/f;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lio/casper/android/i/r$2;->this$0:Lio/casper/android/i/r;

    invoke-static {v0}, Lio/casper/android/i/r;->a(Lio/casper/android/i/r;)Lio/casper/android/l/x;

    move-result-object v0

    invoke-virtual {p2}, Lio/casper/android/c/b/b/f;->e()Lio/casper/android/c/b/b/a/a/a;

    move-result-object v1

    invoke-virtual {p2}, Lio/casper/android/c/b/b/f;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/l/x;->a(Lio/casper/android/c/b/b/a/a/a;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lio/casper/android/i/r$2;->this$0:Lio/casper/android/i/r;

    invoke-static {v0}, Lio/casper/android/i/r;->b(Lio/casper/android/i/r;)Lio/casper/android/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/a/i;->a()V

    .line 108
    invoke-virtual {p2}, Lio/casper/android/c/b/b/f;->a()Ljava/util/List;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/c/b/b/a/d;

    .line 110
    iget-object v2, p0, Lio/casper/android/i/r$2;->this$0:Lio/casper/android/i/r;

    invoke-static {v2}, Lio/casper/android/i/r;->b(Lio/casper/android/i/r;)Lio/casper/android/a/i;

    move-result-object v2

    invoke-virtual {v2, v0}, Lio/casper/android/a/i;->a(Lio/casper/android/c/b/b/a/d;)V

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lio/casper/android/i/r$2;->this$0:Lio/casper/android/i/r;

    invoke-static {v0}, Lio/casper/android/i/r;->b(Lio/casper/android/i/r;)Lio/casper/android/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/a/i;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 114
    iget-object v0, p0, Lio/casper/android/i/r$2;->this$0:Lio/casper/android/i/r;

    invoke-static {v0}, Lio/casper/android/i/r;->c(Lio/casper/android/i/r;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    :goto_1
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lio/casper/android/i/r$2;->this$0:Lio/casper/android/i/r;

    invoke-static {v0}, Lio/casper/android/i/r;->c(Lio/casper/android/i/r;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 120
    :cond_2
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {p2}, Lio/casper/android/c/b/b/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lio/casper/android/i/r$2;->a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public bridge synthetic a(Lcom/squareup/okhttp/Response;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 96
    check-cast p2, Lio/casper/android/c/b/b/f;

    invoke-virtual {p0, p1, p2}, Lio/casper/android/i/r$2;->a(Lcom/squareup/okhttp/Response;Lio/casper/android/c/b/b/f;)V

    return-void
.end method

.method public a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lio/casper/android/i/r$2;->this$0:Lio/casper/android/i/r;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/casper/android/i/r;->a(Z)V

    .line 133
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/i/r$2;->this$0:Lio/casper/android/i/r;

    invoke-static {v1}, Lio/casper/android/i/r;->d(Lio/casper/android/i/r;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 134
    const v1, 0x7f0701a1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 135
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 136
    const v1, 0x7f070045

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 137
    const v1, 0x7f070036

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 138
    new-instance v1, Lio/casper/android/i/r$2$1;

    invoke-direct {v1, p0, p0}, Lio/casper/android/i/r$2$1;-><init>(Lio/casper/android/i/r$2;Lio/casper/android/c/c/a/a;)V

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 154
    new-instance v1, Lio/casper/android/h/a/a;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/casper/android/h/a/a;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    invoke-virtual {v1}, Lio/casper/android/h/a/a;->a()V

    .line 156
    return-void
.end method
