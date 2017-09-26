.class Lio/casper/android/a/f$1;
.super Ljava/lang/Object;
.source "ImojiCategoryListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/f;->a(Lio/casper/android/a/f$b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/a/f;

.field final synthetic val$imojiCategory:Lcom/imojiapp/imoji/sdk/ImojiCategory;


# direct methods
.method constructor <init>(Lio/casper/android/a/f;Lcom/imojiapp/imoji/sdk/ImojiCategory;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lio/casper/android/a/f$1;->this$0:Lio/casper/android/a/f;

    iput-object p2, p0, Lio/casper/android/a/f$1;->val$imojiCategory:Lcom/imojiapp/imoji/sdk/ImojiCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lio/casper/android/a/f$1;->this$0:Lio/casper/android/a/f;

    invoke-static {v0}, Lio/casper/android/a/f;->a(Lio/casper/android/a/f;)Lio/casper/android/a/f$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lio/casper/android/a/f$1;->this$0:Lio/casper/android/a/f;

    invoke-static {v0}, Lio/casper/android/a/f;->a(Lio/casper/android/a/f;)Lio/casper/android/a/f$a;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/a/f$1;->val$imojiCategory:Lcom/imojiapp/imoji/sdk/ImojiCategory;

    invoke-interface {v0, v1}, Lio/casper/android/a/f$a;->a(Lcom/imojiapp/imoji/sdk/ImojiCategory;)V

    .line 72
    :cond_0
    return-void
.end method
