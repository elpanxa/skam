.class Lio/casper/android/activity/SnapchatLoginActivity$1;
.super Ljava/lang/Object;
.source "SnapchatLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/SnapchatLoginActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 139
    iput-object p1, p0, Lio/casper/android/activity/SnapchatLoginActivity$1;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 142
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity$1;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lio/casper/android/activity/SnapchatLoginActivity$1;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v3}, Lio/casper/android/activity/SnapchatLoginActivity;->a(Lio/casper/android/activity/SnapchatLoginActivity;)Lio/casper/android/l/p;

    move-result-object v3

    invoke-virtual {v3}, Lio/casper/android/l/p;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lio/casper/android/activity/SnapchatLoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 143
    new-instance v0, Lio/casper/android/b/a/h;

    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity$1;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v1}, Lio/casper/android/activity/SnapchatLoginActivity;->b(Lio/casper/android/activity/SnapchatLoginActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/casper/android/b/a/h;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity$1;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v1}, Lio/casper/android/activity/SnapchatLoginActivity;->a(Lio/casper/android/activity/SnapchatLoginActivity;)Lio/casper/android/l/p;

    move-result-object v1

    invoke-virtual {v1}, Lio/casper/android/l/p;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/casper/android/b/a/h;->a(Ljava/lang/String;)Lio/casper/android/b/a/h;

    move-result-object v0

    invoke-static {v0}, Lio/casper/android/l/c;->a(Lio/casper/android/b/a/a/a;)V

    .line 144
    return-void
.end method
