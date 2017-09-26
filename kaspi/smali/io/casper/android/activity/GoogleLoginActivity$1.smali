.class Lio/casper/android/activity/GoogleLoginActivity$1;
.super Ljava/lang/Object;
.source "GoogleLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/GoogleLoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/activity/GoogleLoginActivity;


# direct methods
.method constructor <init>(Lio/casper/android/activity/GoogleLoginActivity;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lio/casper/android/activity/GoogleLoginActivity$1;->this$0:Lio/casper/android/activity/GoogleLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 88
    iget-object v0, p0, Lio/casper/android/activity/GoogleLoginActivity$1;->this$0:Lio/casper/android/activity/GoogleLoginActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lio/casper/android/activity/GoogleLoginActivity$1;->this$0:Lio/casper/android/activity/GoogleLoginActivity;

    invoke-static {v3}, Lio/casper/android/activity/GoogleLoginActivity;->a(Lio/casper/android/activity/GoogleLoginActivity;)Lio/casper/android/l/p;

    move-result-object v3

    invoke-virtual {v3}, Lio/casper/android/l/p;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lio/casper/android/activity/GoogleLoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 89
    new-instance v0, Lio/casper/android/b/a/h;

    iget-object v1, p0, Lio/casper/android/activity/GoogleLoginActivity$1;->this$0:Lio/casper/android/activity/GoogleLoginActivity;

    invoke-static {v1}, Lio/casper/android/activity/GoogleLoginActivity;->b(Lio/casper/android/activity/GoogleLoginActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/casper/android/b/a/h;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lio/casper/android/activity/GoogleLoginActivity$1;->this$0:Lio/casper/android/activity/GoogleLoginActivity;

    invoke-static {v1}, Lio/casper/android/activity/GoogleLoginActivity;->a(Lio/casper/android/activity/GoogleLoginActivity;)Lio/casper/android/l/p;

    move-result-object v1

    invoke-virtual {v1}, Lio/casper/android/l/p;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/casper/android/b/a/h;->a(Ljava/lang/String;)Lio/casper/android/b/a/h;

    move-result-object v0

    invoke-static {v0}, Lio/casper/android/l/c;->a(Lio/casper/android/b/a/a/a;)V

    .line 90
    return-void
.end method
