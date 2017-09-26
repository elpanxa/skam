.class Lio/casper/android/activity/SnapchatLoginActivity$4$1;
.super Ljava/lang/Object;
.source "SnapchatLoginActivity.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$InputCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/SnapchatLoginActivity$4;->a(Lio/casper/android/c/c/g/a;)V
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
    .line 308
    iput-object p1, p0, Lio/casper/android/activity/SnapchatLoginActivity$4$1;->this$1:Lio/casper/android/activity/SnapchatLoginActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInput(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 311
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity$4$1;->this$1:Lio/casper/android/activity/SnapchatLoginActivity$4;

    iget-object v0, v0, Lio/casper/android/activity/SnapchatLoginActivity$4;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity$4$1;->this$1:Lio/casper/android/activity/SnapchatLoginActivity$4;

    iget-object v1, v1, Lio/casper/android/activity/SnapchatLoginActivity$4;->val$username:Ljava/lang/String;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/casper/android/activity/SnapchatLoginActivity$4$1;->this$1:Lio/casper/android/activity/SnapchatLoginActivity$4;

    iget-object v3, v3, Lio/casper/android/activity/SnapchatLoginActivity$4;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v3}, Lio/casper/android/activity/SnapchatLoginActivity;->n(Lio/casper/android/activity/SnapchatLoginActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lio/casper/android/activity/SnapchatLoginActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    return-void
.end method
