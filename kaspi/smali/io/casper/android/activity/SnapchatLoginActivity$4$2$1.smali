.class Lio/casper/android/activity/SnapchatLoginActivity$4$2$1;
.super Ljava/lang/Object;
.source "SnapchatLoginActivity.java"

# interfaces
.implements Lio/casper/android/l/x$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/SnapchatLoginActivity$4$2;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/casper/android/activity/SnapchatLoginActivity$4$2;


# direct methods
.method constructor <init>(Lio/casper/android/activity/SnapchatLoginActivity$4$2;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lio/casper/android/activity/SnapchatLoginActivity$4$2$1;->this$2:Lio/casper/android/activity/SnapchatLoginActivity$4$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .prologue
    .line 402
    if-eqz p1, :cond_0

    .line 404
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity$4$2$1;->this$2:Lio/casper/android/activity/SnapchatLoginActivity$4$2;

    iget-object v1, v1, Lio/casper/android/activity/SnapchatLoginActivity$4$2;->this$1:Lio/casper/android/activity/SnapchatLoginActivity$4;

    iget-object v1, v1, Lio/casper/android/activity/SnapchatLoginActivity$4;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v1}, Lio/casper/android/activity/SnapchatLoginActivity;->b(Lio/casper/android/activity/SnapchatLoginActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 405
    const v1, 0x7f0701ff

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 406
    const v1, 0x7f0700fe

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 407
    const v1, 0x7f070046

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 408
    const v1, 0x7f07003f

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 409
    new-instance v1, Lio/casper/android/activity/SnapchatLoginActivity$4$2$1$1;

    invoke-direct {v1, p0}, Lio/casper/android/activity/SnapchatLoginActivity$4$2$1$1;-><init>(Lio/casper/android/activity/SnapchatLoginActivity$4$2$1;)V

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 416
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 420
    :cond_0
    return-void
.end method
