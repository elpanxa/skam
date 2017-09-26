.class Lio/casper/android/i/j$4;
.super Ljava/lang/Object;
.source "ImojiPickerFragment.java"

# interfaces
.implements Lio/casper/android/a/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/i/j;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/i/j;


# direct methods
.method constructor <init>(Lio/casper/android/i/j;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lio/casper/android/i/j$4;->this$0:Lio/casper/android/i/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/imojiapp/imoji/sdk/ImojiCategory;)V
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p1}, Lcom/imojiapp/imoji/sdk/ImojiCategory;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/imojiapp/imoji/sdk/ImojiCategory;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/casper/android/i/i;->a(Ljava/lang/String;Ljava/lang/String;)Lio/casper/android/i/i;

    move-result-object v1

    .line 116
    iget-object v0, p0, Lio/casper/android/i/j$4;->this$0:Lio/casper/android/i/j;

    invoke-static {v0}, Lio/casper/android/i/j;->a(Lio/casper/android/i/j;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lio/casper/android/activity/EditorActivity;

    invoke-virtual {v0, v1}, Lio/casper/android/activity/EditorActivity;->b(Landroid/support/v4/app/Fragment;)V

    .line 125
    return-void
.end method
