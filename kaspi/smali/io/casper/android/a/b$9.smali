.class Lio/casper/android/a/b$9;
.super Ljava/lang/Object;
.source "ConversationSnapsListAdapter.java"

# interfaces
.implements Lio/casper/android/c/c/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/b;->b(Lio/casper/android/n/a/c/b/w;)V
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
        "Lio/casper/android/n/a/a/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/a/b;

.field final synthetic val$snap:Lio/casper/android/n/a/c/b/w;


# direct methods
.method constructor <init>(Lio/casper/android/a/b;Lio/casper/android/n/a/c/b/w;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lio/casper/android/a/b$9;->this$0:Lio/casper/android/a/b;

    iput-object p2, p0, Lio/casper/android/a/b$9;->val$snap:Lio/casper/android/n/a/c/b/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/squareup/okhttp/Response;Lio/casper/android/n/a/a/a/a;)V
    .locals 3

    .prologue
    .line 304
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->code()I

    move-result v0

    .line 305
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 307
    iget-object v0, p0, Lio/casper/android/a/b$9;->this$0:Lio/casper/android/a/b;

    invoke-static {v0}, Lio/casper/android/a/b;->d(Lio/casper/android/a/b;)Lio/casper/android/o/a/a;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/a/b$9;->val$snap:Lio/casper/android/n/a/c/b/w;

    sget-object v2, Lio/casper/android/o/a/a$a;->DOWNLOADED:Lio/casper/android/o/a/a$a;

    invoke-virtual {v0, v1, v2}, Lio/casper/android/o/a/a;->a(Ljava/lang/Object;Lio/casper/android/o/a/a$a;)V

    .line 309
    iget-object v0, p0, Lio/casper/android/a/b$9;->this$0:Lio/casper/android/a/b;

    invoke-static {v0}, Lio/casper/android/a/b;->e(Lio/casper/android/a/b;)Lio/casper/android/l/r;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/l/r;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lio/casper/android/a/b$9;->this$0:Lio/casper/android/a/b;

    invoke-static {v0}, Lio/casper/android/a/b;->f(Lio/casper/android/a/b;)Lio/casper/android/l/q;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/a/b$9;->val$snap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v0, v1}, Lio/casper/android/l/q;->f(Lio/casper/android/n/a/c/b/w;)V

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    const/16 v1, 0x191

    if-ne v0, v1, :cond_2

    .line 314
    iget-object v0, p0, Lio/casper/android/a/b$9;->this$0:Lio/casper/android/a/b;

    invoke-static {v0}, Lio/casper/android/a/b;->c(Lio/casper/android/a/b;)Lio/casper/android/l/s;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/l/s;->l()V

    goto :goto_0

    .line 315
    :cond_2
    const/16 v1, 0x194

    if-eq v0, v1, :cond_3

    const/16 v1, 0x19a

    if-ne v0, v1, :cond_4

    .line 316
    :cond_3
    iget-object v0, p0, Lio/casper/android/a/b$9;->this$0:Lio/casper/android/a/b;

    invoke-static {v0}, Lio/casper/android/a/b;->d(Lio/casper/android/a/b;)Lio/casper/android/o/a/a;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/a/b$9;->val$snap:Lio/casper/android/n/a/c/b/w;

    sget-object v2, Lio/casper/android/o/a/a$a;->DELETED:Lio/casper/android/o/a/a$a;

    invoke-virtual {v0, v1, v2}, Lio/casper/android/o/a/a;->a(Ljava/lang/Object;Lio/casper/android/o/a/a$a;)V

    goto :goto_0

    .line 318
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/casper/android/a/b$9;->a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/squareup/okhttp/Response;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 299
    check-cast p2, Lio/casper/android/n/a/a/a/a;

    invoke-virtual {p0, p1, p2}, Lio/casper/android/a/b$9;->a(Lcom/squareup/okhttp/Response;Lio/casper/android/n/a/a/a/a;)V

    return-void
.end method

.method public a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 325
    iget-object v0, p0, Lio/casper/android/a/b$9;->this$0:Lio/casper/android/a/b;

    invoke-static {v0}, Lio/casper/android/a/b;->d(Lio/casper/android/a/b;)Lio/casper/android/o/a/a;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/a/b$9;->val$snap:Lio/casper/android/n/a/c/b/w;

    sget-object v2, Lio/casper/android/o/a/a$a;->FAILED:Lio/casper/android/o/a/a$a;

    invoke-virtual {v0, v1, v2}, Lio/casper/android/o/a/a;->a(Ljava/lang/Object;Lio/casper/android/o/a/a$a;)V

    .line 326
    return-void
.end method
