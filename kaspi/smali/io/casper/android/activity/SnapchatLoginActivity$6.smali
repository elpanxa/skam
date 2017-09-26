.class Lio/casper/android/activity/SnapchatLoginActivity$6;
.super Ljava/lang/Object;
.source "SnapchatLoginActivity.java"

# interfaces
.implements Lio/casper/android/h/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/SnapchatLoginActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/activity/SnapchatLoginActivity;


# direct methods
.method constructor <init>(Lio/casper/android/activity/SnapchatLoginActivity;)V
    .locals 0

    .prologue
    .line 587
    iput-object p1, p0, Lio/casper/android/activity/SnapchatLoginActivity$6;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/casper/android/e/b/b;)V
    .locals 4

    .prologue
    .line 590
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity$6;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    iget-object v0, v0, Lio/casper/android/activity/SnapchatLoginActivity;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {p1}, Lio/casper/android/e/b/b;->g()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/casper/android/l/s;->a(J)V

    .line 591
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity$6;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    iget-object v0, v0, Lio/casper/android/activity/SnapchatLoginActivity;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v0}, Lio/casper/android/l/s;->n()V

    .line 592
    new-instance v0, Lio/casper/android/b/a/g;

    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity$6;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v1}, Lio/casper/android/activity/SnapchatLoginActivity;->b(Lio/casper/android/activity/SnapchatLoginActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/casper/android/b/a/g;-><init>(Landroid/content/Context;)V

    const-string v1, "Switch"

    invoke-virtual {v0, v1}, Lio/casper/android/b/a/g;->a(Ljava/lang/String;)Lio/casper/android/b/a/g;

    move-result-object v0

    invoke-static {v0}, Lio/casper/android/l/c;->a(Lio/casper/android/b/a/a/a;)V

    .line 593
    return-void
.end method
