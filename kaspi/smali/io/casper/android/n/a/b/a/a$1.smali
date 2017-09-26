.class Lio/casper/android/n/a/b/a/a$1;
.super Ljava/lang/Object;
.source "SnapchatRequest.java"

# interfaces
.implements Lio/casper/android/o/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/n/a/b/a/a;->a(Lio/casper/android/c/c/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/n/a/b/a/a;

.field final synthetic val$httpCallback:Lio/casper/android/c/c/a/a;


# direct methods
.method constructor <init>(Lio/casper/android/n/a/b/a/a;Lio/casper/android/c/c/a/a;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lio/casper/android/n/a/b/a/a$1;->this$0:Lio/casper/android/n/a/b/a/a;

    iput-object p2, p0, Lio/casper/android/n/a/b/a/a$1;->val$httpCallback:Lio/casper/android/c/c/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 127
    instance-of v0, p1, Lio/casper/android/c/c/b/a;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 128
    check-cast v0, Lio/casper/android/c/c/b/a;

    invoke-virtual {v0}, Lio/casper/android/c/c/b/a;->b()Ljava/lang/Throwable;

    move-result-object v0

    .line 129
    instance-of v1, v0, Lio/casper/android/c/d/a/a;

    if-eqz v1, :cond_0

    .line 130
    check-cast v0, Lio/casper/android/c/d/a/a;

    move-object p1, v0

    .line 134
    :cond_0
    instance-of v0, p1, Lio/casper/android/c/d/a/a;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lio/casper/android/n/a/b/a/a$1;->this$0:Lio/casper/android/n/a/b/a/a;

    invoke-static {v0}, Lio/casper/android/n/a/b/a/a;->a(Lio/casper/android/n/a/b/a/a;)Lio/casper/android/l/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/casper/android/l/i;->b(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lio/casper/android/n/a/b/a/a$1;->this$0:Lio/casper/android/n/a/b/a/a;

    iget-object v0, v0, Lio/casper/android/n/a/b/a/a;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v0}, Lio/casper/android/l/s;->n()V

    .line 137
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lio/casper/android/n/a/b/a/a$1$1;

    invoke-direct {v1, p0}, Lio/casper/android/n/a/b/a/a$1$1;-><init>(Lio/casper/android/n/a/b/a/a$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 149
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v0, p0, Lio/casper/android/n/a/b/a/a$1;->this$0:Lio/casper/android/n/a/b/a/a;

    const-string v1, "X-Snapchat-Client-Auth-Token"

    const-string v2, "ae"

    invoke-static {v2}, Lio/casper/android/util/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/n/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lio/casper/android/n/a/b/a/a$1;->this$0:Lio/casper/android/n/a/b/a/a;

    iget-object v1, p0, Lio/casper/android/n/a/b/a/a$1;->val$httpCallback:Lio/casper/android/c/c/a/a;

    invoke-static {v0, v1}, Lio/casper/android/n/a/b/a/a;->a(Lio/casper/android/n/a/b/a/a;Lio/casper/android/c/c/a/a;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lio/casper/android/n/a/b/a/a$1;->this$0:Lio/casper/android/n/a/b/a/a;

    const-string v1, "X-Snapchat-Client-Auth-Token"

    invoke-static {p1}, Lio/casper/android/util/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/n/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lio/casper/android/n/a/b/a/a$1;->this$0:Lio/casper/android/n/a/b/a/a;

    iget-object v1, p0, Lio/casper/android/n/a/b/a/a$1;->val$httpCallback:Lio/casper/android/c/c/a/a;

    invoke-static {v0, v1}, Lio/casper/android/n/a/b/a/a;->a(Lio/casper/android/n/a/b/a/a;Lio/casper/android/c/c/a/a;)V

    .line 122
    return-void
.end method
