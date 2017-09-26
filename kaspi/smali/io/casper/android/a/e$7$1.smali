.class Lio/casper/android/a/e$7$1;
.super Ljava/lang/Object;
.source "FriendStoriesListAdapter.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/e$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/a/e$7;


# direct methods
.method constructor <init>(Lio/casper/android/a/e$7;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lio/casper/android/a/e$7$1;->this$1:Lio/casper/android/a/e$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 156
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 215
    :goto_0
    return v0

    .line 160
    :pswitch_0
    new-instance v1, Lio/casper/android/h/c;

    invoke-direct {v1}, Lio/casper/android/h/c;-><init>()V

    .line 161
    iget-object v0, p0, Lio/casper/android/a/e$7$1;->this$1:Lio/casper/android/a/e$7;

    iget-object v0, v0, Lio/casper/android/a/e$7;->this$0:Lio/casper/android/a/e;

    invoke-static {v0}, Lio/casper/android/a/e;->b(Lio/casper/android/a/e;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lio/casper/android/a/e$7$1;->this$1:Lio/casper/android/a/e$7;

    iget-object v2, v2, Lio/casper/android/a/e$7;->val$myStory:Lio/casper/android/n/a/c/b/t;

    invoke-virtual {v1, v0, v2}, Lio/casper/android/h/c;->a(Landroid/app/Activity;Lio/casper/android/n/a/c/b/t;)V

    .line 162
    const/4 v0, 0x1

    goto :goto_0

    .line 168
    :pswitch_1
    new-instance v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v2, p0, Lio/casper/android/a/e$7$1;->this$1:Lio/casper/android/a/e$7;

    iget-object v2, v2, Lio/casper/android/a/e$7;->this$0:Lio/casper/android/a/e;

    invoke-static {v2}, Lio/casper/android/a/e;->b(Lio/casper/android/a/e;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 169
    const v2, 0x7f070190

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 170
    const v2, 0x7f070096

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 171
    const v2, 0x7f070049

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 172
    const v2, 0x7f070036

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 173
    invoke-virtual {v1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 174
    new-instance v2, Lio/casper/android/a/e$7$1$1;

    invoke-direct {v2, p0}, Lio/casper/android/a/e$7$1$1;-><init>(Lio/casper/android/a/e$7$1;)V

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 211
    new-instance v2, Lio/casper/android/h/a/a;

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v1

    invoke-direct {v2, v1}, Lio/casper/android/h/a/a;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    invoke-virtual {v2}, Lio/casper/android/h/a/a;->a()V

    goto :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x7f0c0178
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
