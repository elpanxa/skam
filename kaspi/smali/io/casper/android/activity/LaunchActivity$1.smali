.class Lio/casper/android/activity/LaunchActivity$1;
.super Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
.source "LaunchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/LaunchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/activity/LaunchActivity;


# direct methods
.method constructor <init>(Lio/casper/android/activity/LaunchActivity;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lio/casper/android/activity/LaunchActivity$1;->this$0:Lio/casper/android/activity/LaunchActivity;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegative(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 3

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 67
    iget-object v0, p0, Lio/casper/android/activity/LaunchActivity$1;->this$0:Lio/casper/android/activity/LaunchActivity;

    invoke-static {v0}, Lio/casper/android/activity/LaunchActivity;->b(Lio/casper/android/activity/LaunchActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0700ce

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 68
    iget-object v0, p0, Lio/casper/android/activity/LaunchActivity$1;->this$0:Lio/casper/android/activity/LaunchActivity;

    invoke-virtual {v0}, Lio/casper/android/activity/LaunchActivity;->finish()V

    .line 69
    return-void
.end method

.method public onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 61
    iget-object v0, p0, Lio/casper/android/activity/LaunchActivity$1;->this$0:Lio/casper/android/activity/LaunchActivity;

    invoke-static {v0}, Lio/casper/android/activity/LaunchActivity;->a(Lio/casper/android/activity/LaunchActivity;)Lio/casper/android/l/l;

    move-result-object v0

    sget-object v1, Lio/casper/android/l/l;->AGREEMENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/casper/android/l/l;->a(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lio/casper/android/activity/LaunchActivity$1;->this$0:Lio/casper/android/activity/LaunchActivity;

    invoke-virtual {v0}, Lio/casper/android/activity/LaunchActivity;->a()V

    .line 63
    return-void
.end method
