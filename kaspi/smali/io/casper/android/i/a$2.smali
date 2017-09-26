.class Lio/casper/android/i/a$2;
.super Ljava/lang/Object;
.source "ConversationFragment.java"

# interfaces
.implements Lio/casper/android/c/c/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/i/a;->a()V
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
        "Lio/casper/android/n/a/c/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/i/a;

.field final synthetic val$request:Lio/casper/android/n/a/b/f;


# direct methods
.method constructor <init>(Lio/casper/android/i/a;Lio/casper/android/n/a/b/f;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lio/casper/android/i/a$2;->this$0:Lio/casper/android/i/a;

    iput-object p2, p0, Lio/casper/android/i/a$2;->val$request:Lio/casper/android/n/a/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/squareup/okhttp/Response;Lio/casper/android/n/a/c/c;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 120
    invoke-virtual {p2}, Lio/casper/android/n/a/c/c;->a()Lio/casper/android/n/a/c/b/f;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/f;->e()Lio/casper/android/n/a/c/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/g;->a()Ljava/util/List;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lio/casper/android/i/a$2;->this$0:Lio/casper/android/i/a;

    invoke-static {v1}, Lio/casper/android/i/a;->a(Lio/casper/android/i/a;)Lio/casper/android/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lio/casper/android/a/b;->a()V

    .line 124
    iget-object v1, p0, Lio/casper/android/i/a$2;->this$0:Lio/casper/android/i/a;

    invoke-static {v1}, Lio/casper/android/i/a;->a(Lio/casper/android/i/a;)Lio/casper/android/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/casper/android/a/b;->a(Ljava/util/List;)V

    .line 125
    iget-object v0, p0, Lio/casper/android/i/a$2;->this$0:Lio/casper/android/i/a;

    invoke-virtual {v0, v2}, Lio/casper/android/i/a;->a(Z)V

    .line 127
    iget-object v0, p0, Lio/casper/android/i/a$2;->this$0:Lio/casper/android/i/a;

    invoke-static {v0}, Lio/casper/android/i/a;->a(Lio/casper/android/i/a;)Lio/casper/android/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/a/b;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lio/casper/android/i/a$2;->this$0:Lio/casper/android/i/a;

    invoke-static {v0}, Lio/casper/android/i/a;->b(Lio/casper/android/i/a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lio/casper/android/i/a$2;->this$0:Lio/casper/android/i/a;

    invoke-static {v0}, Lio/casper/android/i/a;->b(Lio/casper/android/i/a;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/squareup/okhttp/Response;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 115
    check-cast p2, Lio/casper/android/n/a/c/c;

    invoke-virtual {p0, p1, p2}, Lio/casper/android/i/a$2;->a(Lcom/squareup/okhttp/Response;Lio/casper/android/n/a/c/c;)V

    return-void
.end method

.method public a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 138
    .line 140
    iget-object v0, p0, Lio/casper/android/i/a$2;->this$0:Lio/casper/android/i/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/casper/android/i/a;->a(Z)V

    .line 142
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/i/a$2;->this$0:Lio/casper/android/i/a;

    invoke-static {v1}, Lio/casper/android/i/a;->c(Lio/casper/android/i/a;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 143
    const v1, 0x7f0701a1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 144
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 145
    const v1, 0x7f070045

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 146
    const v1, 0x7f070036

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 147
    new-instance v1, Lio/casper/android/i/a$2$1;

    invoke-direct {v1, p0, p0}, Lio/casper/android/i/a$2$1;-><init>(Lio/casper/android/i/a$2;Lio/casper/android/c/c/a/a;)V

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 154
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 156
    return-void
.end method
