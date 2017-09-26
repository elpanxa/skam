.class Lio/casper/android/i/n$2;
.super Ljava/lang/Object;
.source "ServerFontsFragment.java"

# interfaces
.implements Lio/casper/android/c/c/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/i/n;->a()V
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
        "Lio/casper/android/c/b/b/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/i/n;

.field final synthetic val$downloadedFonts:Ljava/util/List;

.field final synthetic val$fontsRequest:Lio/casper/android/c/b/a/c;


# direct methods
.method constructor <init>(Lio/casper/android/i/n;Ljava/util/List;Lio/casper/android/c/b/a/c;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lio/casper/android/i/n$2;->this$0:Lio/casper/android/i/n;

    iput-object p2, p0, Lio/casper/android/i/n$2;->val$downloadedFonts:Ljava/util/List;

    iput-object p3, p0, Lio/casper/android/i/n$2;->val$fontsRequest:Lio/casper/android/c/b/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/squareup/okhttp/Response;Lio/casper/android/c/b/b/d;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 119
    iget-object v0, p0, Lio/casper/android/i/n$2;->this$0:Lio/casper/android/i/n;

    invoke-virtual {v0, v5}, Lio/casper/android/i/n;->b(Z)V

    .line 121
    invoke-virtual {p2}, Lio/casper/android/c/b/b/d;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 123
    iget-object v0, p0, Lio/casper/android/i/n$2;->this$0:Lio/casper/android/i/n;

    invoke-static {v0}, Lio/casper/android/i/n;->a(Lio/casper/android/i/n;)Lio/casper/android/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/a/c;->a()V

    .line 125
    invoke-virtual {p2}, Lio/casper/android/c/b/b/d;->a()Ljava/util/List;

    move-result-object v2

    .line 127
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 129
    iget-object v0, p0, Lio/casper/android/i/n$2;->val$downloadedFonts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 130
    new-instance v4, Lio/casper/android/c/b/b/a/a;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-direct {v4, v1, v0}, Lio/casper/android/c/b/b/a/a;-><init>(Ljava/lang/String;Ljava/io/File;)V

    .line 131
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lio/casper/android/i/n$2;->this$0:Lio/casper/android/i/n;

    invoke-static {v0}, Lio/casper/android/i/n;->a(Lio/casper/android/i/n;)Lio/casper/android/a/c;

    move-result-object v0

    invoke-virtual {v0, v4}, Lio/casper/android/a/c;->a(Lio/casper/android/c/b/b/a/b;)V

    goto :goto_0

    .line 136
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/c/b/b/a/b;

    .line 137
    iget-object v2, p0, Lio/casper/android/i/n$2;->this$0:Lio/casper/android/i/n;

    invoke-static {v2}, Lio/casper/android/i/n;->a(Lio/casper/android/i/n;)Lio/casper/android/a/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lio/casper/android/a/c;->a(Lio/casper/android/c/b/b/a/b;)V

    goto :goto_1

    .line 140
    :cond_2
    iget-object v0, p0, Lio/casper/android/i/n$2;->this$0:Lio/casper/android/i/n;

    invoke-static {v0}, Lio/casper/android/i/n;->a(Lio/casper/android/i/n;)Lio/casper/android/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/a/c;->getItemCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 141
    iget-object v0, p0, Lio/casper/android/i/n$2;->this$0:Lio/casper/android/i/n;

    invoke-static {v0}, Lio/casper/android/i/n;->b(Lio/casper/android/i/n;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    :goto_2
    return-void

    .line 143
    :cond_3
    iget-object v0, p0, Lio/casper/android/i/n$2;->this$0:Lio/casper/android/i/n;

    invoke-static {v0}, Lio/casper/android/i/n;->b(Lio/casper/android/i/n;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 160
    :cond_4
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {p2}, Lio/casper/android/c/b/b/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lio/casper/android/i/n$2;->a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public bridge synthetic a(Lcom/squareup/okhttp/Response;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 114
    check-cast p2, Lio/casper/android/c/b/b/d;

    invoke-virtual {p0, p1, p2}, Lio/casper/android/i/n$2;->a(Lcom/squareup/okhttp/Response;Lio/casper/android/c/b/b/d;)V

    return-void
.end method

.method public a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lio/casper/android/i/n$2;->this$0:Lio/casper/android/i/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/casper/android/i/n;->b(Z)V

    .line 172
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/i/n$2;->this$0:Lio/casper/android/i/n;

    invoke-static {v1}, Lio/casper/android/i/n;->c(Lio/casper/android/i/n;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 173
    const v1, 0x7f0701a1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 174
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 175
    const v1, 0x7f070045

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 176
    const v1, 0x7f070036

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 177
    new-instance v1, Lio/casper/android/i/n$2$1;

    invoke-direct {v1, p0, p0}, Lio/casper/android/i/n$2$1;-><init>(Lio/casper/android/i/n$2;Lio/casper/android/c/c/a/a;)V

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 184
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 186
    return-void
.end method
