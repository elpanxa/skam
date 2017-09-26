.class Lio/casper/android/a/g$1;
.super Ljava/lang/Object;
.source "ImojiGridAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/g;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/a/g;

.field final synthetic val$imoji:Lcom/imojiapp/imoji/sdk/Imoji;


# direct methods
.method constructor <init>(Lio/casper/android/a/g;Lcom/imojiapp/imoji/sdk/Imoji;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lio/casper/android/a/g$1;->this$0:Lio/casper/android/a/g;

    iput-object p2, p0, Lio/casper/android/a/g$1;->val$imoji:Lcom/imojiapp/imoji/sdk/Imoji;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lio/casper/android/a/g$1;->this$0:Lio/casper/android/a/g;

    invoke-static {v0}, Lio/casper/android/a/g;->a(Lio/casper/android/a/g;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lio/casper/android/activity/EditorActivity;

    iget-object v1, p0, Lio/casper/android/a/g$1;->val$imoji:Lcom/imojiapp/imoji/sdk/Imoji;

    invoke-virtual {v0, v1}, Lio/casper/android/activity/EditorActivity;->a(Lcom/imojiapp/imoji/sdk/Imoji;)V

    .line 74
    iget-object v0, p0, Lio/casper/android/a/g$1;->this$0:Lio/casper/android/a/g;

    invoke-static {v0}, Lio/casper/android/a/g;->a(Lio/casper/android/a/g;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lio/casper/android/activity/EditorActivity;

    invoke-virtual {v0}, Lio/casper/android/activity/EditorActivity;->c()V

    .line 75
    return-void
.end method
