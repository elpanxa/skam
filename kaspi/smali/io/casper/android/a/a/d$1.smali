.class Lio/casper/android/a/a/d$1;
.super Ljava/lang/Object;
.source "FriendsAdapter.java"

# interfaces
.implements Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/a/d;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/a/a/d;

.field final synthetic val$friend:Lio/casper/android/n/a/c/b/i;


# direct methods
.method constructor <init>(Lio/casper/android/a/a/d;Lio/casper/android/n/a/c/b/i;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lio/casper/android/a/a/d$1;->this$0:Lio/casper/android/a/a/d;

    iput-object p2, p0, Lio/casper/android/a/a/d$1;->val$friend:Lio/casper/android/n/a/c/b/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 177
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0c0170

    if-ne v1, v2, :cond_0

    .line 178
    iget-object v1, p0, Lio/casper/android/a/a/d$1;->this$0:Lio/casper/android/a/a/d;

    invoke-static {v1}, Lio/casper/android/a/a/d;->a(Lio/casper/android/a/a/d;)Lio/casper/android/l/s;

    move-result-object v1

    iget-object v2, p0, Lio/casper/android/a/a/d$1;->val$friend:Lio/casper/android/n/a/c/b/i;

    invoke-virtual {v2}, Lio/casper/android/n/a/c/b/i;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/casper/android/l/s;->g(Ljava/lang/String;)V

    .line 260
    :goto_0
    return v0

    .line 182
    :cond_0
    new-instance v1, Lio/casper/android/n/a/b/i;

    iget-object v2, p0, Lio/casper/android/a/a/d$1;->this$0:Lio/casper/android/a/a/d;

    iget-object v2, v2, Lio/casper/android/a/a/d;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lio/casper/android/a/a/d$1;->val$friend:Lio/casper/android/n/a/c/b/i;

    invoke-direct {v1, v2, v3}, Lio/casper/android/n/a/b/i;-><init>(Landroid/content/Context;Lio/casper/android/n/a/c/b/i;)V

    .line 184
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0c0171

    if-ne v2, v3, :cond_1

    .line 186
    new-instance v2, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v3, p0, Lio/casper/android/a/a/d$1;->this$0:Lio/casper/android/a/a/d;

    iget-object v3, v3, Lio/casper/android/a/a/d;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 187
    const v3, 0x7f07001d

    invoke-virtual {v2, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 188
    const v3, 0x7f070046

    invoke-virtual {v2, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 189
    const v3, 0x7f070036

    invoke-virtual {v2, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 190
    iget-object v3, p0, Lio/casper/android/a/a/d$1;->val$friend:Lio/casper/android/n/a/c/b/i;

    invoke-virtual {v3}, Lio/casper/android/n/a/c/b/i;->f()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/casper/android/a/a/d$1;->val$friend:Lio/casper/android/n/a/c/b/i;

    invoke-virtual {v4}, Lio/casper/android/n/a/c/b/i;->h()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lio/casper/android/a/a/d$1$1;

    invoke-direct {v5, p0, v1}, Lio/casper/android/a/a/d$1$1;-><init>(Lio/casper/android/a/a/d$1;Lio/casper/android/n/a/b/i;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->input(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/afollestad/materialdialogs/MaterialDialog$InputCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 200
    new-instance v1, Lio/casper/android/h/a/a;

    invoke-virtual {v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/casper/android/h/a/a;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    invoke-virtual {v1}, Lio/casper/android/h/a/a;->a()V

    goto :goto_0

    .line 206
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 260
    const/4 v0, 0x0

    goto :goto_0

    .line 210
    :pswitch_0
    iget-object v2, p0, Lio/casper/android/a/a/d$1;->this$0:Lio/casper/android/a/a/d;

    invoke-static {v2}, Lio/casper/android/a/a/d;->b(Lio/casper/android/a/a/d;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    .line 211
    invoke-virtual {v1}, Lio/casper/android/n/a/b/i;->j()Lio/casper/android/n/a/b/i;

    .line 212
    iget-object v2, p0, Lio/casper/android/a/a/d$1;->this$0:Lio/casper/android/a/a/d;

    invoke-static {v2}, Lio/casper/android/a/a/d;->c(Lio/casper/android/a/a/d;)Lio/casper/android/c/c/a/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/casper/android/n/a/b/i;->a(Lio/casper/android/c/c/a/a;)V

    goto :goto_0

    .line 220
    :pswitch_1
    iget-object v2, p0, Lio/casper/android/a/a/d$1;->this$0:Lio/casper/android/a/a/d;

    invoke-static {v2}, Lio/casper/android/a/a/d;->b(Lio/casper/android/a/a/d;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    .line 221
    invoke-virtual {v1}, Lio/casper/android/n/a/b/i;->i()Lio/casper/android/n/a/b/i;

    .line 222
    iget-object v2, p0, Lio/casper/android/a/a/d$1;->this$0:Lio/casper/android/a/a/d;

    invoke-static {v2}, Lio/casper/android/a/a/d;->c(Lio/casper/android/a/a/d;)Lio/casper/android/c/c/a/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/casper/android/n/a/b/i;->a(Lio/casper/android/c/c/a/a;)V

    goto/16 :goto_0

    .line 230
    :pswitch_2
    iget-object v2, p0, Lio/casper/android/a/a/d$1;->this$0:Lio/casper/android/a/a/d;

    invoke-static {v2}, Lio/casper/android/a/a/d;->b(Lio/casper/android/a/a/d;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    .line 231
    invoke-virtual {v1}, Lio/casper/android/n/a/b/i;->j()Lio/casper/android/n/a/b/i;

    .line 232
    iget-object v2, p0, Lio/casper/android/a/a/d$1;->this$0:Lio/casper/android/a/a/d;

    invoke-static {v2}, Lio/casper/android/a/a/d;->c(Lio/casper/android/a/a/d;)Lio/casper/android/c/c/a/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/casper/android/n/a/b/i;->a(Lio/casper/android/c/c/a/a;)V

    goto/16 :goto_0

    .line 240
    :pswitch_3
    iget-object v2, p0, Lio/casper/android/a/a/d$1;->this$0:Lio/casper/android/a/a/d;

    invoke-static {v2}, Lio/casper/android/a/a/d;->b(Lio/casper/android/a/a/d;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    .line 241
    invoke-virtual {v1}, Lio/casper/android/n/a/b/i;->g()Lio/casper/android/n/a/b/i;

    .line 242
    iget-object v2, p0, Lio/casper/android/a/a/d$1;->this$0:Lio/casper/android/a/a/d;

    invoke-static {v2}, Lio/casper/android/a/a/d;->c(Lio/casper/android/a/a/d;)Lio/casper/android/c/c/a/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/casper/android/n/a/b/i;->a(Lio/casper/android/c/c/a/a;)V

    goto/16 :goto_0

    .line 250
    :pswitch_4
    iget-object v2, p0, Lio/casper/android/a/a/d$1;->this$0:Lio/casper/android/a/a/d;

    invoke-static {v2}, Lio/casper/android/a/a/d;->b(Lio/casper/android/a/a/d;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    .line 251
    invoke-virtual {v1}, Lio/casper/android/n/a/b/i;->h()Lio/casper/android/n/a/b/i;

    .line 252
    iget-object v2, p0, Lio/casper/android/a/a/d$1;->this$0:Lio/casper/android/a/a/d;

    invoke-static {v2}, Lio/casper/android/a/a/d;->c(Lio/casper/android/a/a/d;)Lio/casper/android/c/c/a/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/casper/android/n/a/b/i;->a(Lio/casper/android/c/c/a/a;)V

    goto/16 :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0172
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
