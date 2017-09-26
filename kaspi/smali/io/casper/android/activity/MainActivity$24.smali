.class Lio/casper/android/activity/MainActivity$24;
.super Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/MainActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/activity/MainActivity;


# direct methods
.method constructor <init>(Lio/casper/android/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 1017
    iput-object p1, p0, Lio/casper/android/activity/MainActivity$24;->this$0:Lio/casper/android/activity/MainActivity;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1021
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/activity/MainActivity$24;->this$0:Lio/casper/android/activity/MainActivity;

    invoke-static {v1}, Lio/casper/android/activity/MainActivity;->b(Lio/casper/android/activity/MainActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1022
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progress(ZI)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 1023
    const v1, 0x7f0700db

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 1024
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    .line 1025
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    .line 1027
    new-instance v1, Lio/casper/android/o/f;

    iget-object v2, p0, Lio/casper/android/activity/MainActivity$24;->this$0:Lio/casper/android/activity/MainActivity;

    invoke-static {v2}, Lio/casper/android/activity/MainActivity;->b(Lio/casper/android/activity/MainActivity;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lio/casper/android/activity/MainActivity$24$1;

    invoke-direct {v3, p0, v0}, Lio/casper/android/activity/MainActivity$24$1;-><init>(Lio/casper/android/activity/MainActivity$24;Lcom/afollestad/materialdialogs/MaterialDialog;)V

    invoke-direct {v1, v2, v3}, Lio/casper/android/o/f;-><init>(Landroid/content/Context;Lio/casper/android/o/f$a;)V

    new-array v0, v4, [Ljava/lang/Void;

    .line 1041
    invoke-virtual {v1, v0}, Lio/casper/android/o/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1043
    return-void
.end method
