.class Lio/casper/android/activity/MainActivity$14$1;
.super Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/MainActivity$14;->onClick(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/activity/MainActivity$14;


# direct methods
.method constructor <init>(Lio/casper/android/activity/MainActivity$14;)V
    .locals 0

    .prologue
    .line 618
    iput-object p1, p0, Lio/casper/android/activity/MainActivity$14$1;->this$1:Lio/casper/android/activity/MainActivity$14;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegative(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 1

    .prologue
    .line 629
    invoke-super {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;->onNegative(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 630
    iget-object v0, p0, Lio/casper/android/activity/MainActivity$14$1;->this$1:Lio/casper/android/activity/MainActivity$14;

    iget-object v0, v0, Lio/casper/android/activity/MainActivity$14;->this$0:Lio/casper/android/activity/MainActivity;

    iget-object v0, v0, Lio/casper/android/activity/MainActivity;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v0}, Lio/casper/android/l/s;->k()V

    .line 631
    iget-object v0, p0, Lio/casper/android/activity/MainActivity$14$1;->this$1:Lio/casper/android/activity/MainActivity$14;

    iget-object v0, v0, Lio/casper/android/activity/MainActivity$14;->this$0:Lio/casper/android/activity/MainActivity;

    invoke-static {v0}, Lio/casper/android/activity/MainActivity;->i(Lio/casper/android/activity/MainActivity;)Lio/casper/android/l/i;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/l/i;->k()V

    .line 632
    return-void
.end method

.method public onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 2

    .prologue
    .line 621
    invoke-super {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 622
    new-instance v0, Lio/casper/android/n/a/b/m;

    iget-object v1, p0, Lio/casper/android/activity/MainActivity$14$1;->this$1:Lio/casper/android/activity/MainActivity$14;

    iget-object v1, v1, Lio/casper/android/activity/MainActivity$14;->this$0:Lio/casper/android/activity/MainActivity;

    invoke-static {v1}, Lio/casper/android/activity/MainActivity;->b(Lio/casper/android/activity/MainActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/casper/android/n/a/b/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lio/casper/android/n/a/b/m;->m()V

    .line 623
    iget-object v0, p0, Lio/casper/android/activity/MainActivity$14$1;->this$1:Lio/casper/android/activity/MainActivity$14;

    iget-object v0, v0, Lio/casper/android/activity/MainActivity$14;->this$0:Lio/casper/android/activity/MainActivity;

    iget-object v0, v0, Lio/casper/android/activity/MainActivity;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v0}, Lio/casper/android/l/s;->k()V

    .line 624
    iget-object v0, p0, Lio/casper/android/activity/MainActivity$14$1;->this$1:Lio/casper/android/activity/MainActivity$14;

    iget-object v0, v0, Lio/casper/android/activity/MainActivity$14;->this$0:Lio/casper/android/activity/MainActivity;

    invoke-static {v0}, Lio/casper/android/activity/MainActivity;->i(Lio/casper/android/activity/MainActivity;)Lio/casper/android/l/i;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/l/i;->k()V

    .line 625
    return-void
.end method
