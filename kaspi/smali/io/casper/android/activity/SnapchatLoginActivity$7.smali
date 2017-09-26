.class Lio/casper/android/activity/SnapchatLoginActivity$7;
.super Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
.source "SnapchatLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/SnapchatLoginActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/activity/SnapchatLoginActivity;


# direct methods
.method constructor <init>(Lio/casper/android/activity/SnapchatLoginActivity;)V
    .locals 0

    .prologue
    .line 620
    iput-object p1, p0, Lio/casper/android/activity/SnapchatLoginActivity$7;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 1

    .prologue
    .line 624
    invoke-super {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 625
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity$7;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-virtual {v0}, Lio/casper/android/activity/SnapchatLoginActivity;->a()V

    .line 626
    return-void
.end method
