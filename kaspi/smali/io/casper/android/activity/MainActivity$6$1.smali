.class Lio/casper/android/activity/MainActivity$6$1;
.super Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/MainActivity$6;->onClick(Lcom/heinrichreimersoftware/materialdrawer/structure/DrawerItem;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/activity/MainActivity$6;


# direct methods
.method constructor <init>(Lio/casper/android/activity/MainActivity$6;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lio/casper/android/activity/MainActivity$6$1;->this$1:Lio/casper/android/activity/MainActivity$6;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 4

    .prologue
    .line 466
    invoke-super {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 467
    iget-object v0, p0, Lio/casper/android/activity/MainActivity$6$1;->this$1:Lio/casper/android/activity/MainActivity$6;

    iget-object v0, v0, Lio/casper/android/activity/MainActivity$6;->this$0:Lio/casper/android/activity/MainActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lio/casper/android/activity/MainActivity$6$1;->this$1:Lio/casper/android/activity/MainActivity$6;

    iget-object v3, v3, Lio/casper/android/activity/MainActivity$6;->this$0:Lio/casper/android/activity/MainActivity;

    invoke-static {v3}, Lio/casper/android/activity/MainActivity;->f(Lio/casper/android/activity/MainActivity;)Lio/casper/android/l/p;

    move-result-object v3

    invoke-virtual {v3}, Lio/casper/android/l/p;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lio/casper/android/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 468
    return-void
.end method
