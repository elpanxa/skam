.class Lio/casper/android/activity/SnapchatLoginActivity$3;
.super Ljava/lang/Object;
.source "SnapchatLoginActivity.java"

# interfaces
.implements Lio/casper/android/c/c/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/SnapchatLoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/casper/android/c/c/a/a",
        "<",
        "Lio/casper/android/c/b/b/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/activity/SnapchatLoginActivity;


# direct methods
.method constructor <init>(Lio/casper/android/activity/SnapchatLoginActivity;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lio/casper/android/activity/SnapchatLoginActivity$3;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/squareup/okhttp/Response;Lio/casper/android/c/b/b/c;)V
    .locals 3

    .prologue
    .line 212
    invoke-virtual {p2}, Lio/casper/android/c/b/b/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity$3;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v0}, Lio/casper/android/activity/SnapchatLoginActivity;->i(Lio/casper/android/activity/SnapchatLoginActivity;)Lio/casper/android/l/x;

    move-result-object v0

    invoke-virtual {p2}, Lio/casper/android/c/b/b/c;->a()Lio/casper/android/c/b/b/a/a/a;

    move-result-object v1

    invoke-virtual {p2}, Lio/casper/android/c/b/b/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/l/x;->a(Lio/casper/android/c/b/b/a/a/a;Ljava/lang/String;)V

    .line 215
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Lcom/squareup/okhttp/Response;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 208
    check-cast p2, Lio/casper/android/c/b/b/c;

    invoke-virtual {p0, p1, p2}, Lio/casper/android/activity/SnapchatLoginActivity$3;->a(Lcom/squareup/okhttp/Response;Lio/casper/android/c/b/b/c;)V

    return-void
.end method

.method public a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 220
    return-void
.end method
