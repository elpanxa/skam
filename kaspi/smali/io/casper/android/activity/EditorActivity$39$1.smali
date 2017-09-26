.class Lio/casper/android/activity/EditorActivity$39$1;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Lio/casper/android/o/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/EditorActivity$39;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/activity/EditorActivity$39;

.field final synthetic val$mediaId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/casper/android/activity/EditorActivity$39;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1380
    iput-object p1, p0, Lio/casper/android/activity/EditorActivity$39$1;->this$1:Lio/casper/android/activity/EditorActivity$39;

    iput-object p2, p0, Lio/casper/android/activity/EditorActivity$39$1;->val$mediaId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 1385
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$39$1;->this$1:Lio/casper/android/activity/EditorActivity$39;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->C(Lio/casper/android/activity/EditorActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 1387
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$39$1;->this$1:Lio/casper/android/activity/EditorActivity$39;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->I(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/l/r;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/l/r;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1388
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$39$1;->this$1:Lio/casper/android/activity/EditorActivity$39;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->C(Lio/casper/android/activity/EditorActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity$39$1;->this$1:Lio/casper/android/activity/EditorActivity$39;

    iget-object v1, v1, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    const v2, 0x7f070180

    invoke-virtual {v1, v2}, Lio/casper/android/activity/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setContent(Ljava/lang/CharSequence;)V

    .line 1389
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$39$1;->this$1:Lio/casper/android/activity/EditorActivity$39;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->E(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/l/q;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity$39$1;->this$1:Lio/casper/android/activity/EditorActivity$39;

    iget-object v1, v1, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v1, v1, Lio/casper/android/activity/EditorActivity;->mSnapchatAccount:Lio/casper/android/e/b/b;

    invoke-virtual {v1}, Lio/casper/android/e/b/b;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/casper/android/l/q;->a(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    .line 1390
    iget-object v1, p0, Lio/casper/android/activity/EditorActivity$39$1;->this$1:Lio/casper/android/activity/EditorActivity$39;

    iget-object v1, v1, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v1}, Lio/casper/android/activity/EditorActivity;->E(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/l/q;

    move-result-object v1

    iget-object v2, p0, Lio/casper/android/activity/EditorActivity$39$1;->this$1:Lio/casper/android/activity/EditorActivity$39;

    iget-object v2, v2, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v2}, Lio/casper/android/activity/EditorActivity;->H(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/l/k;

    move-result-object v2

    iget-object v3, p0, Lio/casper/android/activity/EditorActivity$39$1;->val$mediaId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lio/casper/android/l/k;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lio/casper/android/l/q;->a(Ljava/io/File;Ljava/io/File;)Z

    .line 1391
    iget-object v1, p0, Lio/casper/android/activity/EditorActivity$39$1;->this$1:Lio/casper/android/activity/EditorActivity$39;

    iget-object v1, v1, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v1}, Lio/casper/android/activity/EditorActivity;->E(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/l/q;

    move-result-object v1

    const-string v2, "image/jpeg"

    invoke-virtual {v1, v2, v0}, Lio/casper/android/l/q;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 1394
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity$39$1;->this$1:Lio/casper/android/activity/EditorActivity$39;

    iget-object v1, v1, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v1, v1, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    const-class v2, Lio/casper/android/activity/SendActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1395
    const-string v1, "media_id"

    iget-object v2, p0, Lio/casper/android/activity/EditorActivity$39$1;->val$mediaId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1396
    const-string v1, "media_file"

    iget-object v2, p0, Lio/casper/android/activity/EditorActivity$39$1;->this$1:Lio/casper/android/activity/EditorActivity$39;

    iget-object v2, v2, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v2}, Lio/casper/android/activity/EditorActivity;->H(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/l/k;

    move-result-object v2

    iget-object v3, p0, Lio/casper/android/activity/EditorActivity$39$1;->val$mediaId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lio/casper/android/l/k;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1397
    const-string v1, "media_type"

    iget-object v2, p0, Lio/casper/android/activity/EditorActivity$39$1;->this$1:Lio/casper/android/activity/EditorActivity$39;

    iget-object v2, v2, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v2}, Lio/casper/android/activity/EditorActivity;->D(Lio/casper/android/activity/EditorActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1398
    const-string v1, "media_time"

    iget-object v2, p0, Lio/casper/android/activity/EditorActivity$39$1;->this$1:Lio/casper/android/activity/EditorActivity$39;

    iget-object v2, v2, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v2, v2, Lio/casper/android/activity/EditorActivity;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v2}, Lio/casper/android/l/s;->i()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1399
    iget-object v1, p0, Lio/casper/android/activity/EditorActivity$39$1;->this$1:Lio/casper/android/activity/EditorActivity$39;

    iget-object v1, v1, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-virtual {v1, v0}, Lio/casper/android/activity/EditorActivity;->startActivity(Landroid/content/Intent;)V

    .line 1401
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 1405
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$39$1;->this$1:Lio/casper/android/activity/EditorActivity$39;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->C(Lio/casper/android/activity/EditorActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 1406
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$39$1;->this$1:Lio/casper/android/activity/EditorActivity$39;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1407
    return-void
.end method
