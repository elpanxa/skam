.class Lio/casper/android/i/h$2;
.super Ljava/lang/Object;
.source "ImojiCategoriesFragment.java"

# interfaces
.implements Lcom/imojiapp/imoji/sdk/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/i/h;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
        "Lcom/imojiapp/imoji/sdk/ImojiCategory;",
        ">;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/i/h;


# direct methods
.method constructor <init>(Lio/casper/android/i/h;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lio/casper/android/i/h$2;->this$0:Lio/casper/android/i/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 86
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/i/h$2;->this$0:Lio/casper/android/i/h;

    invoke-static {v1}, Lio/casper/android/i/h;->a(Lio/casper/android/i/h;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 87
    const v1, 0x7f0701a1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 88
    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 89
    const v1, 0x7f070045

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 90
    const v1, 0x7f070036

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 91
    new-instance v1, Lio/casper/android/i/h$2$1;

    invoke-direct {v1, p0}, Lio/casper/android/i/h$2$1;-><init>(Lio/casper/android/i/h$2;)V

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 107
    new-instance v1, Lio/casper/android/h/a/a;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/casper/android/h/a/a;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    invoke-virtual {v1}, Lio/casper/android/h/a/a;->a()V

    .line 109
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/imojiapp/imoji/sdk/ImojiCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lio/casper/android/i/h$2;->this$0:Lio/casper/android/i/h;

    invoke-static {v0}, Lio/casper/android/i/h;->b(Lio/casper/android/i/h;)Lio/casper/android/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/a/f;->a()V

    .line 79
    iget-object v0, p0, Lio/casper/android/i/h$2;->this$0:Lio/casper/android/i/h;

    invoke-static {v0}, Lio/casper/android/i/h;->b(Lio/casper/android/i/h;)Lio/casper/android/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/casper/android/a/f;->a(Ljava/util/List;)V

    .line 80
    iget-object v0, p0, Lio/casper/android/i/h$2;->this$0:Lio/casper/android/i/h;

    invoke-static {v0}, Lio/casper/android/i/h;->c(Lio/casper/android/i/h;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 81
    return-void
.end method

.method public synthetic onFailure(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 74
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/casper/android/i/h$2;->a(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 74
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/casper/android/i/h$2;->a(Ljava/util/List;)V

    return-void
.end method
