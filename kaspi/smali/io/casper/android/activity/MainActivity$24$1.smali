.class Lio/casper/android/activity/MainActivity$24$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lio/casper/android/o/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/MainActivity$24;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/activity/MainActivity$24;

.field final synthetic val$progressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;


# direct methods
.method constructor <init>(Lio/casper/android/activity/MainActivity$24;Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 0

    .prologue
    .line 1027
    iput-object p1, p0, Lio/casper/android/activity/MainActivity$24$1;->this$1:Lio/casper/android/activity/MainActivity$24;

    iput-object p2, p0, Lio/casper/android/activity/MainActivity$24$1;->val$progressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1031
    iget-object v0, p0, Lio/casper/android/activity/MainActivity$24$1;->val$progressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 1033
    if-eqz p1, :cond_0

    .line 1034
    iget-object v0, p0, Lio/casper/android/activity/MainActivity$24$1;->this$1:Lio/casper/android/activity/MainActivity$24;

    iget-object v0, v0, Lio/casper/android/activity/MainActivity$24;->this$0:Lio/casper/android/activity/MainActivity;

    invoke-static {v0}, Lio/casper/android/activity/MainActivity;->b(Lio/casper/android/activity/MainActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0700b7

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1035
    iget-object v0, p0, Lio/casper/android/activity/MainActivity$24$1;->this$1:Lio/casper/android/activity/MainActivity$24;

    iget-object v0, v0, Lio/casper/android/activity/MainActivity$24;->this$0:Lio/casper/android/activity/MainActivity;

    invoke-static {v0}, Lio/casper/android/activity/MainActivity;->b(Lio/casper/android/activity/MainActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/casper/android/util/a;->c(Landroid/content/Context;)V

    .line 1040
    :goto_0
    return-void

    .line 1037
    :cond_0
    iget-object v0, p0, Lio/casper/android/activity/MainActivity$24$1;->this$1:Lio/casper/android/activity/MainActivity$24;

    iget-object v0, v0, Lio/casper/android/activity/MainActivity$24;->this$0:Lio/casper/android/activity/MainActivity;

    invoke-static {v0}, Lio/casper/android/activity/MainActivity;->b(Lio/casper/android/activity/MainActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0700b6

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
