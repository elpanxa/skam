.class Lio/casper/android/activity/MainActivity$22;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$InputCallback;


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
    .line 995
    iput-object p1, p0, Lio/casper/android/activity/MainActivity$22;->this$0:Lio/casper/android/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInput(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 998
    iget-object v0, p0, Lio/casper/android/activity/MainActivity$22;->this$0:Lio/casper/android/activity/MainActivity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Lio/casper/android/activity/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 999
    const-string v1, "Snapchat AuthToken"

    iget-object v2, p0, Lio/casper/android/activity/MainActivity$22;->this$0:Lio/casper/android/activity/MainActivity;

    iget-object v2, v2, Lio/casper/android/activity/MainActivity;->mSnapchatAccount:Lio/casper/android/e/b/b;

    invoke-virtual {v2}, Lio/casper/android/e/b/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 1000
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 1001
    iget-object v0, p0, Lio/casper/android/activity/MainActivity$22;->this$0:Lio/casper/android/activity/MainActivity;

    invoke-static {v0}, Lio/casper/android/activity/MainActivity;->b(Lio/casper/android/activity/MainActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07008a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1002
    return-void
.end method
