.class Lio/casper/android/i/i$3$1;
.super Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
.source "ImojiGridFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/i/i$3;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/i/i$3;


# direct methods
.method constructor <init>(Lio/casper/android/i/i$3;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lio/casper/android/i/i$3$1;->this$1:Lio/casper/android/i/i$3;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegative(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 0

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;->onNegative(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 129
    return-void
.end method

.method public onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 2

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 123
    iget-object v0, p0, Lio/casper/android/i/i$3$1;->this$1:Lio/casper/android/i/i$3;

    iget-object v0, v0, Lio/casper/android/i/i$3;->this$0:Lio/casper/android/i/i;

    invoke-static {v0}, Lio/casper/android/i/i;->a(Lio/casper/android/i/i;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/imojiapp/imoji/sdk/ImojiApi;->with(Landroid/content/Context;)Lcom/imojiapp/imoji/sdk/ImojiApi;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/i/i$3$1;->this$1:Lio/casper/android/i/i$3;

    iget-object v1, v1, Lio/casper/android/i/i$3;->this$0:Lio/casper/android/i/i;

    invoke-static {v1}, Lio/casper/android/i/i;->d(Lio/casper/android/i/i;)Lcom/imojiapp/imoji/sdk/Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/imojiapp/imoji/sdk/ImojiApi;->getImojiCategories(Lcom/imojiapp/imoji/sdk/Callback;)V

    .line 124
    return-void
.end method
