.class Lio/casper/android/a/a/h$4$1$1;
.super Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
.source "StoriesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/a/h$4$1;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/casper/android/a/a/h$4$1;


# direct methods
.method constructor <init>(Lio/casper/android/a/a/h$4$1;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lio/casper/android/a/a/h$4$1$1;->this$2:Lio/casper/android/a/a/h$4$1;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 172
    invoke-super {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 174
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/a/a/h$4$1$1;->this$2:Lio/casper/android/a/a/h$4$1;

    iget-object v1, v1, Lio/casper/android/a/a/h$4$1;->this$1:Lio/casper/android/a/a/h$4;

    iget-object v1, v1, Lio/casper/android/a/a/h$4;->this$0:Lio/casper/android/a/a/h;

    iget-object v1, v1, Lio/casper/android/a/a/h;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 175
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v5}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progress(ZI)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 176
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    .line 177
    invoke-virtual {v0, v5}, Lcom/afollestad/materialdialogs/MaterialDialog;->setCanceledOnTouchOutside(Z)V

    .line 178
    invoke-virtual {v0, v5}, Lcom/afollestad/materialdialogs/MaterialDialog;->setCancelable(Z)V

    .line 179
    iget-object v1, p0, Lio/casper/android/a/a/h$4$1$1;->this$2:Lio/casper/android/a/a/h$4$1;

    iget-object v1, v1, Lio/casper/android/a/a/h$4$1;->this$1:Lio/casper/android/a/a/h$4;

    iget-object v1, v1, Lio/casper/android/a/a/h$4;->this$0:Lio/casper/android/a/a/h;

    iget-object v1, v1, Lio/casper/android/a/a/h;->mContext:Landroid/content/Context;

    const v2, 0x7f070099

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setContent(Ljava/lang/CharSequence;)V

    .line 180
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    .line 185
    new-instance v1, Lio/casper/android/o/a;

    iget-object v2, p0, Lio/casper/android/a/a/h$4$1$1;->this$2:Lio/casper/android/a/a/h$4$1;

    iget-object v2, v2, Lio/casper/android/a/a/h$4$1;->this$1:Lio/casper/android/a/a/h$4;

    iget-object v2, v2, Lio/casper/android/a/a/h$4;->this$0:Lio/casper/android/a/a/h;

    iget-object v2, v2, Lio/casper/android/a/a/h;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lio/casper/android/a/a/h$4$1$1;->this$2:Lio/casper/android/a/a/h$4$1;

    iget-object v3, v3, Lio/casper/android/a/a/h$4$1;->this$1:Lio/casper/android/a/a/h$4;

    iget-object v3, v3, Lio/casper/android/a/a/h$4;->val$myStories:Ljava/util/List;

    new-instance v4, Lio/casper/android/a/a/h$4$1$1$1;

    invoke-direct {v4, p0, v0}, Lio/casper/android/a/a/h$4$1$1$1;-><init>(Lio/casper/android/a/a/h$4$1$1;Lcom/afollestad/materialdialogs/MaterialDialog;)V

    invoke-direct {v1, v2, v3, v4}, Lio/casper/android/o/a;-><init>(Landroid/content/Context;Ljava/util/List;Lio/casper/android/o/a$a;)V

    new-array v0, v5, [Ljava/lang/Void;

    .line 193
    invoke-virtual {v1, v0}, Lio/casper/android/o/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 195
    return-void
.end method
