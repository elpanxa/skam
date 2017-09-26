.class Lio/casper/android/activity/SnapchatLoginActivity$4$2;
.super Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
.source "SnapchatLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/SnapchatLoginActivity$4;->a(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/activity/SnapchatLoginActivity$4;


# direct methods
.method constructor <init>(Lio/casper/android/activity/SnapchatLoginActivity$4;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lio/casper/android/activity/SnapchatLoginActivity$4$2;->this$1:Lio/casper/android/activity/SnapchatLoginActivity$4;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 4

    .prologue
    .line 397
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity$4$2;->this$1:Lio/casper/android/activity/SnapchatLoginActivity$4;

    iget-object v0, v0, Lio/casper/android/activity/SnapchatLoginActivity$4;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v0}, Lio/casper/android/activity/SnapchatLoginActivity;->i(Lio/casper/android/activity/SnapchatLoginActivity;)Lio/casper/android/l/x;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lio/casper/android/l/x;->b(J)V

    .line 398
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity$4$2;->this$1:Lio/casper/android/activity/SnapchatLoginActivity$4;

    iget-object v0, v0, Lio/casper/android/activity/SnapchatLoginActivity$4;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v0}, Lio/casper/android/activity/SnapchatLoginActivity;->i(Lio/casper/android/activity/SnapchatLoginActivity;)Lio/casper/android/l/x;

    move-result-object v0

    new-instance v1, Lio/casper/android/activity/SnapchatLoginActivity$4$2$1;

    invoke-direct {v1, p0}, Lio/casper/android/activity/SnapchatLoginActivity$4$2$1;-><init>(Lio/casper/android/activity/SnapchatLoginActivity$4$2;)V

    invoke-virtual {v0, v1}, Lio/casper/android/l/x;->a(Lio/casper/android/l/x$a;)V

    .line 423
    return-void
.end method
