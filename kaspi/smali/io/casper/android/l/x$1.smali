.class Lio/casper/android/l/x$1;
.super Ljava/lang/Object;
.source "UpdateManager.java"

# interfaces
.implements Lio/casper/android/c/c/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/l/x;->a(Lio/casper/android/l/x$a;)V
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
        "Lio/casper/android/c/b/b/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/l/x;

.field final synthetic val$listener:Lio/casper/android/l/x$a;


# direct methods
.method constructor <init>(Lio/casper/android/l/x;Lio/casper/android/l/x$a;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lio/casper/android/l/x$1;->this$0:Lio/casper/android/l/x;

    iput-object p2, p0, Lio/casper/android/l/x$1;->val$listener:Lio/casper/android/l/x$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/squareup/okhttp/Response;Lio/casper/android/c/b/b/f;)V
    .locals 4

    .prologue
    .line 100
    invoke-virtual {p2}, Lio/casper/android/c/b/b/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lio/casper/android/l/x$1;->this$0:Lio/casper/android/l/x;

    invoke-virtual {p2}, Lio/casper/android/c/b/b/f;->e()Lio/casper/android/c/b/b/a/a/a;

    move-result-object v1

    invoke-virtual {p2}, Lio/casper/android/c/b/b/f;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/l/x;->a(Lio/casper/android/c/b/b/a/a/a;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lio/casper/android/l/x$1;->this$0:Lio/casper/android/l/x;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/casper/android/l/x;->b(J)V

    .line 105
    invoke-virtual {p2}, Lio/casper/android/c/b/b/f;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 107
    :goto_0
    iget-object v1, p0, Lio/casper/android/l/x$1;->val$listener:Lio/casper/android/l/x$a;

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lio/casper/android/l/x$1;->val$listener:Lio/casper/android/l/x$a;

    invoke-interface {v1, v0}, Lio/casper/android/l/x$a;->a(Z)V

    .line 112
    :cond_0
    return-void

    .line 105
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/squareup/okhttp/Response;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 96
    check-cast p2, Lio/casper/android/c/b/b/f;

    invoke-virtual {p0, p1, p2}, Lio/casper/android/l/x$1;->a(Lcom/squareup/okhttp/Response;Lio/casper/android/c/b/b/f;)V

    return-void
.end method

.method public a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 117
    return-void
.end method
