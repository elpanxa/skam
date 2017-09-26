.class Lio/casper/android/activity/EditorActivity$38;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/EditorActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/activity/EditorActivity;


# direct methods
.method constructor <init>(Lio/casper/android/activity/EditorActivity;)V
    .locals 0

    .prologue
    .line 1295
    iput-object p1, p0, Lio/casper/android/activity/EditorActivity$38;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1299
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$38;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->C(Lio/casper/android/activity/EditorActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity$38;->this$0:Lio/casper/android/activity/EditorActivity;

    const v2, 0x7f0700de

    invoke-virtual {v1, v2}, Lio/casper/android/activity/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setContent(Ljava/lang/CharSequence;)V

    .line 1300
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$38;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->C(Lio/casper/android/activity/EditorActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    .line 1302
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$38;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity;->mSnapchatAccount:Lio/casper/android/e/b/b;

    invoke-virtual {v0}, Lio/casper/android/e/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/casper/android/n/e/b;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1306
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$38;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->D(Lio/casper/android/activity/EditorActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$38;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->D(Lio/casper/android/activity/EditorActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "blank"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1308
    :cond_0
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$38;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->E(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/l/q;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity$38;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v1, v1, Lio/casper/android/activity/EditorActivity;->mSnapchatAccount:Lio/casper/android/e/b/b;

    invoke-virtual {v1}, Lio/casper/android/e/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lio/casper/android/l/q;->a(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    .line 1309
    new-instance v0, Lio/casper/android/o/c;

    iget-object v2, p0, Lio/casper/android/activity/EditorActivity$38;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v2}, Lio/casper/android/activity/EditorActivity;->F(Lio/casper/android/activity/EditorActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v4, p0, Lio/casper/android/activity/EditorActivity$38;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v4}, Lio/casper/android/activity/EditorActivity;->G(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/l/t;

    move-result-object v4

    invoke-virtual {v4}, Lio/casper/android/l/t;->e()I

    move-result v4

    new-instance v5, Lio/casper/android/activity/EditorActivity$38$1;

    invoke-direct {v5, p0, v1}, Lio/casper/android/activity/EditorActivity$38$1;-><init>(Lio/casper/android/activity/EditorActivity$38;Ljava/io/File;)V

    invoke-direct/range {v0 .. v5}, Lio/casper/android/o/c;-><init>(Ljava/io/File;Landroid/view/View;Landroid/graphics/Bitmap$CompressFormat;ILio/casper/android/o/c$a;)V

    new-array v1, v6, [Ljava/lang/Void;

    .line 1327
    invoke-virtual {v0, v1}, Lio/casper/android/o/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1363
    :cond_1
    :goto_0
    return-void

    .line 1352
    :cond_2
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$38;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->D(Lio/casper/android/activity/EditorActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1354
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$38;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->E(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/l/q;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity$38;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v1, v1, Lio/casper/android/activity/EditorActivity;->mSnapchatAccount:Lio/casper/android/e/b/b;

    invoke-virtual {v1}, Lio/casper/android/e/b/b;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lio/casper/android/l/q;->a(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    .line 1355
    iget-object v1, p0, Lio/casper/android/activity/EditorActivity$38;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v1}, Lio/casper/android/activity/EditorActivity;->E(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/l/q;

    move-result-object v1

    iget-object v2, p0, Lio/casper/android/activity/EditorActivity$38;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v2}, Lio/casper/android/activity/EditorActivity;->c(Lio/casper/android/activity/EditorActivity;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lio/casper/android/l/q;->a(Ljava/io/File;Ljava/io/File;)Z

    .line 1356
    iget-object v1, p0, Lio/casper/android/activity/EditorActivity$38;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v1}, Lio/casper/android/activity/EditorActivity;->E(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/l/q;

    move-result-object v1

    const-string v2, "video/mp4"

    invoke-virtual {v1, v2, v0}, Lio/casper/android/l/q;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 1357
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$38;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->C(Lio/casper/android/activity/EditorActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 1359
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$38;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0700e6

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
