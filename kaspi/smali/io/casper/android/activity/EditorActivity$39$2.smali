.class Lio/casper/android/activity/EditorActivity$39$2;
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

.field final synthetic val$overlayFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lio/casper/android/activity/EditorActivity$39;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1445
    iput-object p1, p0, Lio/casper/android/activity/EditorActivity$39$2;->this$1:Lio/casper/android/activity/EditorActivity$39;

    iput-object p2, p0, Lio/casper/android/activity/EditorActivity$39$2;->val$overlayFile:Ljava/io/File;

    iput-object p3, p0, Lio/casper/android/activity/EditorActivity$39$2;->val$mediaId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 1450
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$39$2;->this$1:Lio/casper/android/activity/EditorActivity$39;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->C(Lio/casper/android/activity/EditorActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity$39$2;->this$1:Lio/casper/android/activity/EditorActivity$39;

    iget-object v1, v1, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v1, v1, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0700df

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setContent(Ljava/lang/CharSequence;)V

    .line 1452
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$39$2;->this$1:Lio/casper/android/activity/EditorActivity$39;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->H(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/l/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/l/k;->a()Ljava/io/File;

    move-result-object v0

    .line 1453
    new-instance v1, Lio/casper/android/o/d;

    iget-object v2, p0, Lio/casper/android/activity/EditorActivity$39$2;->this$1:Lio/casper/android/activity/EditorActivity$39;

    iget-object v2, v2, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v2}, Lio/casper/android/activity/EditorActivity;->c(Lio/casper/android/activity/EditorActivity;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Lio/casper/android/activity/EditorActivity$39$2$1;

    invoke-direct {v3, p0, v0}, Lio/casper/android/activity/EditorActivity$39$2$1;-><init>(Lio/casper/android/activity/EditorActivity$39$2;Ljava/io/File;)V

    invoke-direct {v1, v0, v2, v3}, Lio/casper/android/o/d;-><init>(Ljava/io/File;Ljava/io/File;Lio/casper/android/o/d$a;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 1513
    invoke-virtual {v1, v0}, Lio/casper/android/o/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1566
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 1570
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$39$2;->this$1:Lio/casper/android/activity/EditorActivity$39;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->C(Lio/casper/android/activity/EditorActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 1571
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$39$2;->this$1:Lio/casper/android/activity/EditorActivity$39;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$39;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1572
    return-void
.end method
