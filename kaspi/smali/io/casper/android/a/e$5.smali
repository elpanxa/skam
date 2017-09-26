.class Lio/casper/android/a/e$5;
.super Ljava/lang/Object;
.source "FriendStoriesListAdapter.java"

# interfaces
.implements Lio/casper/android/c/c/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/e;->a(Lio/casper/android/n/a/c/b/x;)V
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
        "Lio/casper/android/n/a/a/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/a/e;

.field final synthetic val$story:Lio/casper/android/n/a/c/b/x;


# direct methods
.method constructor <init>(Lio/casper/android/a/e;Lio/casper/android/n/a/c/b/x;)V
    .locals 0

    .prologue
    .line 506
    iput-object p1, p0, Lio/casper/android/a/e$5;->this$0:Lio/casper/android/a/e;

    iput-object p2, p0, Lio/casper/android/a/e$5;->val$story:Lio/casper/android/n/a/c/b/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/squareup/okhttp/Response;Lio/casper/android/n/a/a/a/b;)V
    .locals 3

    .prologue
    .line 511
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->code()I

    move-result v0

    .line 512
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_1

    .line 514
    iget-object v0, p0, Lio/casper/android/a/e$5;->this$0:Lio/casper/android/a/e;

    invoke-static {v0}, Lio/casper/android/a/e;->g(Lio/casper/android/a/e;)Lio/casper/android/o/a/a;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/a/e$5;->val$story:Lio/casper/android/n/a/c/b/x;

    sget-object v2, Lio/casper/android/o/a/a$a;->DOWNLOADED:Lio/casper/android/o/a/a$a;

    invoke-virtual {v0, v1, v2}, Lio/casper/android/o/a/a;->a(Ljava/lang/Object;Lio/casper/android/o/a/a$a;)V

    .line 516
    iget-object v0, p0, Lio/casper/android/a/e$5;->this$0:Lio/casper/android/a/e;

    invoke-static {v0}, Lio/casper/android/a/e;->d(Lio/casper/android/a/e;)Lio/casper/android/l/r;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/l/r;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lio/casper/android/a/e$5;->this$0:Lio/casper/android/a/e;

    invoke-static {v0}, Lio/casper/android/a/e;->h(Lio/casper/android/a/e;)Lio/casper/android/l/q;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/a/e$5;->val$story:Lio/casper/android/n/a/c/b/x;

    invoke-virtual {v0, v1}, Lio/casper/android/l/q;->h(Lio/casper/android/n/a/c/b/x;)V

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    const/16 v1, 0x194

    if-eq v0, v1, :cond_2

    const/16 v1, 0x19a

    if-ne v0, v1, :cond_3

    .line 521
    :cond_2
    iget-object v0, p0, Lio/casper/android/a/e$5;->this$0:Lio/casper/android/a/e;

    invoke-static {v0}, Lio/casper/android/a/e;->g(Lio/casper/android/a/e;)Lio/casper/android/o/a/a;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/a/e$5;->val$story:Lio/casper/android/n/a/c/b/x;

    sget-object v2, Lio/casper/android/o/a/a$a;->DELETED:Lio/casper/android/o/a/a$a;

    invoke-virtual {v0, v1, v2}, Lio/casper/android/o/a/a;->a(Ljava/lang/Object;Lio/casper/android/o/a/a$a;)V

    goto :goto_0

    .line 523
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/casper/android/a/e$5;->a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/squareup/okhttp/Response;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 506
    check-cast p2, Lio/casper/android/n/a/a/a/b;

    invoke-virtual {p0, p1, p2}, Lio/casper/android/a/e$5;->a(Lcom/squareup/okhttp/Response;Lio/casper/android/n/a/a/a/b;)V

    return-void
.end method

.method public a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 530
    iget-object v0, p0, Lio/casper/android/a/e$5;->this$0:Lio/casper/android/a/e;

    invoke-static {v0}, Lio/casper/android/a/e;->g(Lio/casper/android/a/e;)Lio/casper/android/o/a/a;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/a/e$5;->val$story:Lio/casper/android/n/a/c/b/x;

    sget-object v2, Lio/casper/android/o/a/a$a;->FAILED:Lio/casper/android/o/a/a$a;

    invoke-virtual {v0, v1, v2}, Lio/casper/android/o/a/a;->a(Ljava/lang/Object;Lio/casper/android/o/a/a$a;)V

    .line 531
    return-void
.end method
