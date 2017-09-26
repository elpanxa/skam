.class Lio/casper/android/n/a/b/a/a$2;
.super Ljava/lang/Object;
.source "SnapchatRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/n/a/b/a/a;->b(Lio/casper/android/c/c/a/a;)V
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
    .line 177
    iput-object p1, p0, Lio/casper/android/n/a/b/a/a$2;->this$0:Lio/casper/android/n/a/b/a/a;

    iput-object p2, p0, Lio/casper/android/n/a/b/a/a$2;->val$httpCallback:Lio/casper/android/c/c/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lio/casper/android/n/a/b/a/a$2;->this$0:Lio/casper/android/n/a/b/a/a;

    sget-object v1, Lio/casper/android/n/a;->KEY_PARAM_REQ_TOKEN:Ljava/lang/String;

    iget-object v2, p0, Lio/casper/android/n/a/b/a/a$2;->this$0:Lio/casper/android/n/a/b/a/a;

    invoke-virtual {v2}, Lio/casper/android/n/a/b/a/a;->a_()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/n/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :try_start_0
    iget-object v0, p0, Lio/casper/android/n/a/b/a/a$2;->this$0:Lio/casper/android/n/a/b/a/a;

    invoke-virtual {v0}, Lio/casper/android/n/a/b/a/a;->l()V

    .line 185
    iget-object v0, p0, Lio/casper/android/n/a/b/a/a$2;->this$0:Lio/casper/android/n/a/b/a/a;

    iget-object v1, p0, Lio/casper/android/n/a/b/a/a$2;->val$httpCallback:Lio/casper/android/c/c/a/a;

    invoke-static {v0, v1}, Lio/casper/android/n/a/b/a/a;->b(Lio/casper/android/n/a/b/a/a;Lio/casper/android/c/c/a/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    iget-object v1, p0, Lio/casper/android/n/a/b/a/a$2;->val$httpCallback:Lio/casper/android/c/c/a/a;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lio/casper/android/n/a/b/a/a$2;->this$0:Lio/casper/android/n/a/b/a/a;

    iget-object v1, v1, Lio/casper/android/n/a/b/a/a;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lio/casper/android/n/a/b/a/a$2$1;

    invoke-direct {v2, p0, v0}, Lio/casper/android/n/a/b/a/a$2$1;-><init>(Lio/casper/android/n/a/b/a/a$2;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
