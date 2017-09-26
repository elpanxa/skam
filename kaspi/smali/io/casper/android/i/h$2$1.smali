.class Lio/casper/android/i/h$2$1;
.super Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
.source "ImojiCategoriesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/i/h$2;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/i/h$2;


# direct methods
.method constructor <init>(Lio/casper/android/i/h$2;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lio/casper/android/i/h$2$1;->this$1:Lio/casper/android/i/h$2;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegative(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;->onNegative(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 102
    iget-object v0, p0, Lio/casper/android/i/h$2$1;->this$1:Lio/casper/android/i/h$2;

    iget-object v0, v0, Lio/casper/android/i/h$2;->this$0:Lio/casper/android/i/h;

    invoke-static {v0}, Lio/casper/android/i/h;->a(Lio/casper/android/i/h;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 103
    return-void
.end method

.method public onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 96
    iget-object v0, p0, Lio/casper/android/i/h$2$1;->this$1:Lio/casper/android/i/h$2;

    iget-object v0, v0, Lio/casper/android/i/h$2;->this$0:Lio/casper/android/i/h;

    invoke-static {v0}, Lio/casper/android/i/h;->a(Lio/casper/android/i/h;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/imojiapp/imoji/sdk/ImojiApi;->with(Landroid/content/Context;)Lcom/imojiapp/imoji/sdk/ImojiApi;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/i/h$2$1;->this$1:Lio/casper/android/i/h$2;

    iget-object v1, v1, Lio/casper/android/i/h$2;->this$0:Lio/casper/android/i/h;

    invoke-static {v1}, Lio/casper/android/i/h;->d(Lio/casper/android/i/h;)Lcom/imojiapp/imoji/sdk/Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/imojiapp/imoji/sdk/ImojiApi;->getImojiCategories(Lcom/imojiapp/imoji/sdk/Callback;)V

    .line 97
    return-void
.end method
