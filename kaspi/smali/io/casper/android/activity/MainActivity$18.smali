.class Lio/casper/android/activity/MainActivity$18;
.super Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/activity/MainActivity;

.field final synthetic val$file:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/casper/android/activity/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 748
    iput-object p1, p0, Lio/casper/android/activity/MainActivity$18;->this$0:Lio/casper/android/activity/MainActivity;

    iput-object p2, p0, Lio/casper/android/activity/MainActivity$18;->val$file:Ljava/lang/String;

    iput-object p3, p0, Lio/casper/android/activity/MainActivity$18;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 3

    .prologue
    .line 751
    invoke-super {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 753
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lio/casper/android/activity/MainActivity$18;->this$0:Lio/casper/android/activity/MainActivity;

    invoke-static {v1}, Lio/casper/android/activity/MainActivity;->b(Lio/casper/android/activity/MainActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/casper/android/activity/EditorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 754
    const-string v1, "file"

    iget-object v2, p0, Lio/casper/android/activity/MainActivity$18;->val$file:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 755
    const-string v1, "type"

    iget-object v2, p0, Lio/casper/android/activity/MainActivity$18;->val$type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 756
    iget-object v1, p0, Lio/casper/android/activity/MainActivity$18;->this$0:Lio/casper/android/activity/MainActivity;

    invoke-virtual {v1, v0}, Lio/casper/android/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 758
    return-void
.end method
