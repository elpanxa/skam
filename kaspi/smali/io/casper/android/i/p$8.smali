.class Lio/casper/android/i/p$8;
.super Ljava/lang/Object;
.source "SnapsFragment.java"

# interfaces
.implements Lio/casper/android/c/c/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/i/p;->a(Ljava/lang/String;)V
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
        "Lio/casper/android/n/a/c/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/i/p;


# direct methods
.method constructor <init>(Lio/casper/android/i/p;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lio/casper/android/i/p$8;->this$0:Lio/casper/android/i/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/squareup/okhttp/Response;Lio/casper/android/n/a/c/d;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 326
    iget-object v0, p0, Lio/casper/android/i/p$8;->this$0:Lio/casper/android/i/p;

    invoke-virtual {v0, v1}, Lio/casper/android/i/p;->a(Z)V

    .line 327
    iget-object v0, p0, Lio/casper/android/i/p$8;->this$0:Lio/casper/android/i/p;

    invoke-static {v0, v1}, Lio/casper/android/i/p;->a(Lio/casper/android/i/p;Z)Z

    .line 329
    iget-object v0, p0, Lio/casper/android/i/p$8;->this$0:Lio/casper/android/i/p;

    invoke-virtual {p2}, Lio/casper/android/n/a/c/d;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/casper/android/i/p;->a(Ljava/util/List;)V

    .line 331
    return-void
.end method

.method public bridge synthetic a(Lcom/squareup/okhttp/Response;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 321
    check-cast p2, Lio/casper/android/n/a/c/d;

    invoke-virtual {p0, p1, p2}, Lio/casper/android/i/p$8;->a(Lcom/squareup/okhttp/Response;Lio/casper/android/n/a/c/d;)V

    return-void
.end method

.method public a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 336
    iget-object v0, p0, Lio/casper/android/i/p$8;->this$0:Lio/casper/android/i/p;

    invoke-virtual {v0, v1}, Lio/casper/android/i/p;->a(Z)V

    .line 337
    iget-object v0, p0, Lio/casper/android/i/p$8;->this$0:Lio/casper/android/i/p;

    invoke-static {v0, v1}, Lio/casper/android/i/p;->a(Lio/casper/android/i/p;Z)Z

    .line 339
    return-void
.end method
