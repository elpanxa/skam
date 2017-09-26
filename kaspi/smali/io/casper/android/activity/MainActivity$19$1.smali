.class Lio/casper/android/activity/MainActivity$19$1;
.super Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/MainActivity$19;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/activity/MainActivity$19;


# direct methods
.method constructor <init>(Lio/casper/android/activity/MainActivity$19;)V
    .locals 0

    .prologue
    .line 792
    iput-object p1, p0, Lio/casper/android/activity/MainActivity$19$1;->this$1:Lio/casper/android/activity/MainActivity$19;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 4

    .prologue
    .line 795
    invoke-super {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 796
    iget-object v0, p0, Lio/casper/android/activity/MainActivity$19$1;->this$1:Lio/casper/android/activity/MainActivity$19;

    iget-object v0, v0, Lio/casper/android/activity/MainActivity$19;->this$0:Lio/casper/android/activity/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lio/casper/android/activity/MainActivity$19$1;->this$1:Lio/casper/android/activity/MainActivity$19;

    iget-object v2, v2, Lio/casper/android/activity/MainActivity$19;->this$0:Lio/casper/android/activity/MainActivity;

    invoke-static {v2}, Lio/casper/android/activity/MainActivity;->b(Lio/casper/android/activity/MainActivity;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lio/casper/android/activity/UpdatesActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lio/casper/android/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 797
    return-void
.end method
