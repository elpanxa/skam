.class Lio/casper/android/activity/SnapchatLoginActivity$4$2$1$1;
.super Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
.source "SnapchatLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/SnapchatLoginActivity$4$2$1;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lio/casper/android/activity/SnapchatLoginActivity$4$2$1;


# direct methods
.method constructor <init>(Lio/casper/android/activity/SnapchatLoginActivity$4$2$1;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lio/casper/android/activity/SnapchatLoginActivity$4$2$1$1;->this$3:Lio/casper/android/activity/SnapchatLoginActivity$4$2$1;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 4

    .prologue
    .line 412
    invoke-super {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 413
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity$4$2$1$1;->this$3:Lio/casper/android/activity/SnapchatLoginActivity$4$2$1;

    iget-object v0, v0, Lio/casper/android/activity/SnapchatLoginActivity$4$2$1;->this$2:Lio/casper/android/activity/SnapchatLoginActivity$4$2;

    iget-object v0, v0, Lio/casper/android/activity/SnapchatLoginActivity$4$2;->this$1:Lio/casper/android/activity/SnapchatLoginActivity$4;

    iget-object v0, v0, Lio/casper/android/activity/SnapchatLoginActivity$4;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lio/casper/android/activity/SnapchatLoginActivity$4$2$1$1;->this$3:Lio/casper/android/activity/SnapchatLoginActivity$4$2$1;

    iget-object v2, v2, Lio/casper/android/activity/SnapchatLoginActivity$4$2$1;->this$2:Lio/casper/android/activity/SnapchatLoginActivity$4$2;

    iget-object v2, v2, Lio/casper/android/activity/SnapchatLoginActivity$4$2;->this$1:Lio/casper/android/activity/SnapchatLoginActivity$4;

    iget-object v2, v2, Lio/casper/android/activity/SnapchatLoginActivity$4;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v2}, Lio/casper/android/activity/SnapchatLoginActivity;->b(Lio/casper/android/activity/SnapchatLoginActivity;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lio/casper/android/activity/UpdatesActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lio/casper/android/activity/SnapchatLoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 414
    return-void
.end method
