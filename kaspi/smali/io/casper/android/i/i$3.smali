.class Lio/casper/android/i/i$3;
.super Ljava/lang/Object;
.source "ImojiGridFragment.java"

# interfaces
.implements Lcom/imojiapp/imoji/sdk/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/i/i;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/imojiapp/imoji/sdk/Callback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/imojiapp/imoji/sdk/Imoji;",
        ">;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/i/i;


# direct methods
.method constructor <init>(Lio/casper/android/i/i;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lio/casper/android/i/i$3;->this$0:Lio/casper/android/i/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    iget-object v0, p0, Lio/casper/android/i/i$3;->this$0:Lio/casper/android/i/i;

    invoke-static {v0, v1}, Lio/casper/android/i/i;->a(Lio/casper/android/i/i;Z)Z

    .line 111
    iget-object v0, p0, Lio/casper/android/i/i$3;->this$0:Lio/casper/android/i/i;

    invoke-static {v0}, Lio/casper/android/i/i;->b(Lio/casper/android/i/i;)Lio/casper/android/a/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/casper/android/a/g;->a(Z)V

    .line 113
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/i/i$3;->this$0:Lio/casper/android/i/i;

    invoke-static {v1}, Lio/casper/android/i/i;->a(Lio/casper/android/i/i;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 114
    const v1, 0x7f0701a1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 115
    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 116
    const v1, 0x7f070045

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 117
    const v1, 0x7f070036

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 118
    new-instance v1, Lio/casper/android/i/i$3$1;

    invoke-direct {v1, p0}, Lio/casper/android/i/i$3$1;-><init>(Lio/casper/android/i/i$3;)V

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 133
    new-instance v1, Lio/casper/android/h/a/a;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/casper/android/h/a/a;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    invoke-virtual {v1}, Lio/casper/android/h/a/a;->a()V

    .line 135
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/imojiapp/imoji/sdk/Imoji;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 94
    iget-object v0, p0, Lio/casper/android/i/i$3;->this$0:Lio/casper/android/i/i;

    invoke-static {v0, v2}, Lio/casper/android/i/i;->a(Lio/casper/android/i/i;Z)Z

    .line 95
    iget-object v0, p0, Lio/casper/android/i/i$3;->this$0:Lio/casper/android/i/i;

    invoke-static {v0}, Lio/casper/android/i/i;->b(Lio/casper/android/i/i;)Lio/casper/android/a/g;

    move-result-object v0

    invoke-virtual {v0, v2}, Lio/casper/android/a/g;->a(Z)V

    .line 97
    iget-object v0, p0, Lio/casper/android/i/i$3;->this$0:Lio/casper/android/i/i;

    invoke-static {v0}, Lio/casper/android/i/i;->b(Lio/casper/android/i/i;)Lio/casper/android/a/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/casper/android/a/g;->a(Ljava/util/List;)V

    .line 98
    iget-object v0, p0, Lio/casper/android/i/i$3;->this$0:Lio/casper/android/i/i;

    invoke-static {v0}, Lio/casper/android/i/i;->c(Lio/casper/android/i/i;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lio/casper/android/i/i$3;->this$0:Lio/casper/android/i/i;

    iget-object v1, p0, Lio/casper/android/i/i$3;->this$0:Lio/casper/android/i/i;

    invoke-static {v1}, Lio/casper/android/i/i;->b(Lio/casper/android/i/i;)Lio/casper/android/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lio/casper/android/a/g;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lio/casper/android/i/i;->a(Lio/casper/android/i/i;I)I

    .line 101
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lio/casper/android/i/i$3;->this$0:Lio/casper/android/i/i;

    invoke-static {v0}, Lio/casper/android/i/i;->a(Lio/casper/android/i/i;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "No more to Load"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 105
    :cond_0
    return-void
.end method

.method public synthetic onFailure(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 90
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/casper/android/i/i$3;->a(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 90
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/casper/android/i/i$3;->a(Ljava/util/List;)V

    return-void
.end method
