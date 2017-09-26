.class Lio/casper/android/activity/EditorActivity$39;
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
    .line 1366
    iput-object p1, p0, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1370
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->C(Lio/casper/android/activity/EditorActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    const v2, 0x7f0700de

    invoke-virtual {v1, v2}, Lio/casper/android/activity/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setContent(Ljava/lang/CharSequence;)V

    .line 1371
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->C(Lio/casper/android/activity/EditorActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    .line 1373
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity;->mSnapchatAccount:Lio/casper/android/e/b/b;

    invoke-virtual {v0}, Lio/casper/android/e/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/casper/android/n/e/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1377
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->D(Lio/casper/android/activity/EditorActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->D(Lio/casper/android/activity/EditorActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "blank"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1379
    :cond_0
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->H(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/l/k;

    move-result-object v0

    invoke-virtual {v0, v6}, Lio/casper/android/l/k;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1380
    new-instance v0, Lio/casper/android/o/c;

    iget-object v2, p0, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v2}, Lio/casper/android/activity/EditorActivity;->F(Lio/casper/android/activity/EditorActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v4, p0, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v4}, Lio/casper/android/activity/EditorActivity;->G(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/l/t;

    move-result-object v4

    invoke-virtual {v4}, Lio/casper/android/l/t;->e()I

    move-result v4

    new-instance v5, Lio/casper/android/activity/EditorActivity$39$1;

    invoke-direct {v5, p0, v6}, Lio/casper/android/activity/EditorActivity$39$1;-><init>(Lio/casper/android/activity/EditorActivity$39;Ljava/lang/String;)V

    invoke-direct/range {v0 .. v5}, Lio/casper/android/o/c;-><init>(Ljava/io/File;Landroid/view/View;Landroid/graphics/Bitmap$CompressFormat;ILio/casper/android/o/c$a;)V

    new-array v1, v7, [Ljava/lang/Void;

    .line 1409
    invoke-virtual {v0, v1}, Lio/casper/android/o/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1645
    :cond_1
    :goto_0
    return-void

    .line 1442
    :cond_2
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->D(Lio/casper/android/activity/EditorActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1444
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->H(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/l/k;

    move-result-object v0

    invoke-virtual {v0, v6}, Lio/casper/android/l/k;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1445
    new-instance v1, Lio/casper/android/o/c;

    iget-object v2, p0, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v2}, Lio/casper/android/activity/EditorActivity;->F(Lio/casper/android/activity/EditorActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    new-instance v4, Lio/casper/android/activity/EditorActivity$39$2;

    invoke-direct {v4, p0, v0, v6}, Lio/casper/android/activity/EditorActivity$39$2;-><init>(Lio/casper/android/activity/EditorActivity$39;Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v0, v2, v3, v4}, Lio/casper/android/o/c;-><init>(Ljava/io/File;Landroid/view/View;Landroid/graphics/Bitmap$CompressFormat;Lio/casper/android/o/c$a;)V

    new-array v0, v7, [Ljava/lang/Void;

    .line 1574
    invoke-virtual {v1, v0}, Lio/casper/android/o/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
