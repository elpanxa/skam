.class Lio/casper/android/activity/EditorActivity$38$1;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Lio/casper/android/o/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/EditorActivity$38;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/activity/EditorActivity$38;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lio/casper/android/activity/EditorActivity$38;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 1309
    iput-object p1, p0, Lio/casper/android/activity/EditorActivity$38$1;->this$1:Lio/casper/android/activity/EditorActivity$38;

    iput-object p2, p0, Lio/casper/android/activity/EditorActivity$38$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 1314
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$38$1;->this$1:Lio/casper/android/activity/EditorActivity$38;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$38;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->C(Lio/casper/android/activity/EditorActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 1316
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$38$1;->this$1:Lio/casper/android/activity/EditorActivity$38;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$38;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->E(Lio/casper/android/activity/EditorActivity;)Lio/casper/android/l/q;

    move-result-object v0

    const-string v1, "image/jpeg"

    iget-object v2, p0, Lio/casper/android/activity/EditorActivity$38$1;->val$file:Ljava/io/File;

    invoke-virtual {v0, v1, v2}, Lio/casper/android/l/q;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 1317
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$38$1;->this$1:Lio/casper/android/activity/EditorActivity$38;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$38;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0700e6

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1319
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 1323
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$38$1;->this$1:Lio/casper/android/activity/EditorActivity$38;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$38;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->C(Lio/casper/android/activity/EditorActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 1324
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$38$1;->this$1:Lio/casper/android/activity/EditorActivity$38;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$38;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1325
    return-void
.end method
