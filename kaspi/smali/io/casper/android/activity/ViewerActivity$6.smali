.class Lio/casper/android/activity/ViewerActivity$6;
.super Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
.source "ViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/ViewerActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/activity/ViewerActivity;

.field final synthetic val$editorIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lio/casper/android/activity/ViewerActivity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 540
    iput-object p1, p0, Lio/casper/android/activity/ViewerActivity$6;->this$0:Lio/casper/android/activity/ViewerActivity;

    iput-object p2, p0, Lio/casper/android/activity/ViewerActivity$6;->val$editorIntent:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegative(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 2

    .prologue
    .line 551
    invoke-super {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;->onNegative(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 552
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity$6;->this$0:Lio/casper/android/activity/ViewerActivity;

    iget-object v1, p0, Lio/casper/android/activity/ViewerActivity$6;->val$editorIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lio/casper/android/activity/ViewerActivity;->startActivity(Landroid/content/Intent;)V

    .line 553
    return-void
.end method

.method public onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 3

    .prologue
    .line 544
    invoke-super {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 545
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity$6;->val$editorIntent:Landroid/content/Intent;

    const-string v1, "file_video_caption"

    iget-object v2, p0, Lio/casper/android/activity/ViewerActivity$6;->this$0:Lio/casper/android/activity/ViewerActivity;

    invoke-static {v2}, Lio/casper/android/activity/ViewerActivity;->i(Lio/casper/android/activity/ViewerActivity;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 546
    iget-object v0, p0, Lio/casper/android/activity/ViewerActivity$6;->this$0:Lio/casper/android/activity/ViewerActivity;

    iget-object v1, p0, Lio/casper/android/activity/ViewerActivity$6;->val$editorIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lio/casper/android/activity/ViewerActivity;->startActivity(Landroid/content/Intent;)V

    .line 547
    return-void
.end method
