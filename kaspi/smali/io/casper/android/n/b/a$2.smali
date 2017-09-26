.class Lio/casper/android/n/b/a$2;
.super Ljava/lang/Object;
.source "ChatSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/n/b/a;->f()V
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
    .line 138
    iput-object p1, p0, Lio/casper/android/n/b/a$2;->this$0:Lio/casper/android/n/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lio/casper/android/n/b/a$2;->this$0:Lio/casper/android/n/b/a;

    invoke-static {v0}, Lio/casper/android/n/b/a;->g(Lio/casper/android/n/b/a;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 143
    iget-object v0, p0, Lio/casper/android/n/b/a$2;->this$0:Lio/casper/android/n/b/a;

    invoke-static {v0}, Lio/casper/android/n/b/a;->h(Lio/casper/android/n/b/a;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 146
    :try_start_0
    iget-object v0, p0, Lio/casper/android/n/b/a$2;->this$0:Lio/casper/android/n/b/a;

    invoke-static {v0}, Lio/casper/android/n/b/a;->i(Lio/casper/android/n/b/a;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    :try_start_1
    iget-object v0, p0, Lio/casper/android/n/b/a$2;->this$0:Lio/casper/android/n/b/a;

    invoke-static {v0}, Lio/casper/android/n/b/a;->j(Lio/casper/android/n/b/a;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 158
    :goto_1
    :try_start_2
    iget-object v0, p0, Lio/casper/android/n/b/a$2;->this$0:Lio/casper/android/n/b/a;

    invoke-static {v0}, Lio/casper/android/n/b/a;->c(Lio/casper/android/n/b/a;)Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 163
    :goto_2
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 153
    :catch_1
    move-exception v0

    .line 154
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 159
    :catch_2
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
