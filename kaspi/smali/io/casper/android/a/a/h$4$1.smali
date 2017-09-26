.class Lio/casper/android/a/a/h$4$1;
.super Ljava/lang/Object;
.source "StoriesAdapter.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/a/h$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/a/a/h$4;


# direct methods
.method constructor <init>(Lio/casper/android/a/a/h$4;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lio/casper/android/a/a/h$4$1;->this$1:Lio/casper/android/a/a/h$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 159
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 204
    :goto_0
    return v0

    .line 162
    :pswitch_0
    new-instance v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v2, p0, Lio/casper/android/a/a/h$4$1;->this$1:Lio/casper/android/a/a/h$4;

    iget-object v2, v2, Lio/casper/android/a/a/h$4;->this$0:Lio/casper/android/a/a/h;

    iget-object v2, v2, Lio/casper/android/a/a/h;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 163
    const v2, 0x7f070190

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 164
    const v2, 0x7f070095

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 165
    const v2, 0x7f070049

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 166
    const v2, 0x7f070036

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 167
    invoke-virtual {v1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 168
    new-instance v0, Lio/casper/android/a/a/h$4$1$1;

    invoke-direct {v0, p0}, Lio/casper/android/a/a/h$4$1$1;-><init>(Lio/casper/android/a/a/h$4$1;)V

    invoke-virtual {v1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 199
    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 201
    const/4 v0, 0x1

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x7f0c0177
        :pswitch_0
    .end packed-switch
.end method
