.class Lio/casper/android/a/e$7$1$1;
.super Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
.source "FriendStoriesListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/e$7$1;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/casper/android/a/e$7$1;


# direct methods
.method constructor <init>(Lio/casper/android/a/e$7$1;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lio/casper/android/a/e$7$1$1;->this$2:Lio/casper/android/a/e$7$1;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 178
    invoke-super {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 180
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/a/e$7$1$1;->this$2:Lio/casper/android/a/e$7$1;

    iget-object v1, v1, Lio/casper/android/a/e$7$1;->this$1:Lio/casper/android/a/e$7;

    iget-object v1, v1, Lio/casper/android/a/e$7;->this$0:Lio/casper/android/a/e;

    invoke-static {v1}, Lio/casper/android/a/e;->b(Lio/casper/android/a/e;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 181
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progress(ZI)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 182
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    .line 183
    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog;->setCanceledOnTouchOutside(Z)V

    .line 184
    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog;->setCancelable(Z)V

    .line 185
    iget-object v1, p0, Lio/casper/android/a/e$7$1$1;->this$2:Lio/casper/android/a/e$7$1;

    iget-object v1, v1, Lio/casper/android/a/e$7$1;->this$1:Lio/casper/android/a/e$7;

    iget-object v1, v1, Lio/casper/android/a/e$7;->this$0:Lio/casper/android/a/e;

    invoke-static {v1}, Lio/casper/android/a/e;->b(Lio/casper/android/a/e;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070099

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setContent(Ljava/lang/CharSequence;)V

    .line 186
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    .line 188
    new-instance v1, Lio/casper/android/n/a/b/h;

    iget-object v2, p0, Lio/casper/android/a/e$7$1$1;->this$2:Lio/casper/android/a/e$7$1;

    iget-object v2, v2, Lio/casper/android/a/e$7$1;->this$1:Lio/casper/android/a/e$7;

    iget-object v2, v2, Lio/casper/android/a/e$7;->this$0:Lio/casper/android/a/e;

    invoke-static {v2}, Lio/casper/android/a/e;->b(Lio/casper/android/a/e;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lio/casper/android/a/e$7$1$1;->this$2:Lio/casper/android/a/e$7$1;

    iget-object v3, v3, Lio/casper/android/a/e$7$1;->this$1:Lio/casper/android/a/e$7;

    iget-object v3, v3, Lio/casper/android/a/e$7;->val$myStory:Lio/casper/android/n/a/c/b/t;

    invoke-virtual {v3}, Lio/casper/android/n/a/c/b/t;->b()Lio/casper/android/n/a/c/b/x;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lio/casper/android/n/a/b/h;-><init>(Landroid/content/Context;Lio/casper/android/n/a/c/b/x;)V

    .line 189
    new-instance v2, Lio/casper/android/a/e$7$1$1$1;

    invoke-direct {v2, p0, v0}, Lio/casper/android/a/e$7$1$1$1;-><init>(Lio/casper/android/a/e$7$1$1;Lcom/afollestad/materialdialogs/MaterialDialog;)V

    invoke-virtual {v1, v2}, Lio/casper/android/n/a/b/h;->a(Lio/casper/android/c/c/a/a;)V

    .line 207
    return-void
.end method
