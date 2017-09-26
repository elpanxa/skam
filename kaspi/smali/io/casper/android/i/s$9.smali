.class Lio/casper/android/i/s$9;
.super Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
.source "ViewerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/i/s;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/i/s;

.field final synthetic val$editorIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lio/casper/android/i/s;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 666
    iput-object p1, p0, Lio/casper/android/i/s$9;->this$0:Lio/casper/android/i/s;

    iput-object p2, p0, Lio/casper/android/i/s$9;->val$editorIntent:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegative(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 2

    .prologue
    .line 677
    invoke-super {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;->onNegative(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 678
    iget-object v0, p0, Lio/casper/android/i/s$9;->this$0:Lio/casper/android/i/s;

    iget-object v1, p0, Lio/casper/android/i/s$9;->val$editorIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lio/casper/android/i/s;->startActivity(Landroid/content/Intent;)V

    .line 679
    return-void
.end method

.method public onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 3

    .prologue
    .line 670
    invoke-super {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 671
    iget-object v0, p0, Lio/casper/android/i/s$9;->val$editorIntent:Landroid/content/Intent;

    const-string v1, "file_video_caption"

    iget-object v2, p0, Lio/casper/android/i/s$9;->this$0:Lio/casper/android/i/s;

    invoke-static {v2}, Lio/casper/android/i/s;->j(Lio/casper/android/i/s;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 672
    iget-object v0, p0, Lio/casper/android/i/s$9;->this$0:Lio/casper/android/i/s;

    iget-object v1, p0, Lio/casper/android/i/s$9;->val$editorIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lio/casper/android/i/s;->startActivity(Landroid/content/Intent;)V

    .line 673
    return-void
.end method
