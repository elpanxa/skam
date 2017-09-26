.class Lio/casper/android/a/e$2;
.super Ljava/lang/Object;
.source "FriendStoriesListAdapter.java"

# interfaces
.implements Lio/casper/android/c/c/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/e;->a(Lio/casper/android/a/e$a;I)V
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
        "Ljava/lang/Boolean;",
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
    .line 373
    iput-object p1, p0, Lio/casper/android/a/e$2;->this$0:Lio/casper/android/a/e;

    iput-object p2, p0, Lio/casper/android/a/e$2;->val$story:Lio/casper/android/n/a/c/b/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/squareup/okhttp/Response;Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 376
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lio/casper/android/a/e$2;->this$0:Lio/casper/android/a/e;

    invoke-static {v0}, Lio/casper/android/a/e;->e(Lio/casper/android/a/e;)Lio/casper/android/o/a/a;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/a/e$2;->val$story:Lio/casper/android/n/a/c/b/x;

    sget-object v2, Lio/casper/android/o/a/a$a;->DOWNLOADED:Lio/casper/android/o/a/a$a;

    invoke-virtual {v0, v1, v2}, Lio/casper/android/o/a/a;->a(Ljava/lang/Object;Lio/casper/android/o/a/a$a;)V

    .line 381
    :goto_0
    return-void

    .line 379
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/casper/android/a/e$2;->a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/squareup/okhttp/Response;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 373
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lio/casper/android/a/e$2;->a(Lcom/squareup/okhttp/Response;Ljava/lang/Boolean;)V

    return-void
.end method

.method public a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 385
    iget-object v0, p0, Lio/casper/android/a/e$2;->this$0:Lio/casper/android/a/e;

    invoke-static {v0}, Lio/casper/android/a/e;->e(Lio/casper/android/a/e;)Lio/casper/android/o/a/a;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/a/e$2;->val$story:Lio/casper/android/n/a/c/b/x;

    sget-object v2, Lio/casper/android/o/a/a$a;->FAILED:Lio/casper/android/o/a/a$a;

    invoke-virtual {v0, v1, v2}, Lio/casper/android/o/a/a;->a(Ljava/lang/Object;Lio/casper/android/o/a/a$a;)V

    .line 386
    return-void
.end method
