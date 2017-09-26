.class Lio/casper/android/n/b/a$5;
.super Ljava/lang/Object;
.source "ChatSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/n/b/a;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/n/b/a;


# direct methods
.method constructor <init>(Lio/casper/android/n/b/a;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lio/casper/android/n/b/a$5;->this$0:Lio/casper/android/n/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 304
    const/4 v0, 0x1

    move v1, v0

    .line 305
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 309
    :try_start_0
    iget-object v0, p0, Lio/casper/android/n/b/a$5;->this$0:Lio/casper/android/n/b/a;

    invoke-static {v0}, Lio/casper/android/n/b/a;->h(Lio/casper/android/n/b/a;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/b/d/n;

    .line 310
    iget-object v2, p0, Lio/casper/android/n/b/a$5;->this$0:Lio/casper/android/n/b/a;

    invoke-static {v2}, Lio/casper/android/n/b/a;->l(Lio/casper/android/n/b/a;)Lio/casper/android/n/b/b/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lio/casper/android/n/b/b/b;->a(Lio/casper/android/n/b/d/n;)V

    .line 312
    iget-object v2, p0, Lio/casper/android/n/b/a$5;->this$0:Lio/casper/android/n/b/a;

    invoke-static {v2}, Lio/casper/android/n/b/a;->m(Lio/casper/android/n/b/a;)Lio/casper/android/n/b/a/b;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 313
    iget-object v2, p0, Lio/casper/android/n/b/a$5;->this$0:Lio/casper/android/n/b/a;

    invoke-static {v2}, Lio/casper/android/n/b/a;->m(Lio/casper/android/n/b/a;)Lio/casper/android/n/b/a/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lio/casper/android/n/b/a/b;->b(Lio/casper/android/n/b/d/n;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    const/4 v0, 0x0

    .line 318
    iget-object v1, p0, Lio/casper/android/n/b/a$5;->this$0:Lio/casper/android/n/b/a;

    invoke-virtual {v1}, Lio/casper/android/n/b/a;->b()V

    move v1, v0

    .line 319
    goto :goto_0

    .line 323
    :cond_1
    return-void
.end method
