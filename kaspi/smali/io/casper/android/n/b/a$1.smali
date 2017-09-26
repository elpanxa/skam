.class Lio/casper/android/n/b/a$1;
.super Ljava/lang/Object;
.source "ChatSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/n/b/a;->a()V
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
    .line 99
    iput-object p1, p0, Lio/casper/android/n/b/a$1;->this$0:Lio/casper/android/n/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 105
    :try_start_0
    iget-object v0, p0, Lio/casper/android/n/b/a$1;->this$0:Lio/casper/android/n/b/a;

    invoke-static {v0}, Lio/casper/android/n/b/a;->c(Lio/casper/android/n/b/a;)Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lio/casper/android/n/b/a$1;->this$0:Lio/casper/android/n/b/a;

    invoke-static {v2}, Lio/casper/android/n/b/a;->a(Lio/casper/android/n/b/a;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/casper/android/n/b/a$1;->this$0:Lio/casper/android/n/b/a;

    invoke-static {v3}, Lio/casper/android/n/b/a;->b(Lio/casper/android/n/b/a;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    .line 106
    iget-object v0, p0, Lio/casper/android/n/b/a$1;->this$0:Lio/casper/android/n/b/a;

    invoke-static {v0}, Lio/casper/android/n/b/a;->c(Lio/casper/android/n/b/a;)Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 108
    iget-object v0, p0, Lio/casper/android/n/b/a$1;->this$0:Lio/casper/android/n/b/a;

    new-instance v1, Lio/casper/android/n/b/b/a;

    iget-object v2, p0, Lio/casper/android/n/b/a$1;->this$0:Lio/casper/android/n/b/a;

    invoke-static {v2}, Lio/casper/android/n/b/a;->c(Lio/casper/android/n/b/a;)Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/casper/android/n/b/b/a;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, v1}, Lio/casper/android/n/b/a;->a(Lio/casper/android/n/b/a;Lio/casper/android/n/b/b/a;)Lio/casper/android/n/b/b/a;

    .line 109
    iget-object v0, p0, Lio/casper/android/n/b/a$1;->this$0:Lio/casper/android/n/b/a;

    new-instance v1, Lio/casper/android/n/b/b/b;

    iget-object v2, p0, Lio/casper/android/n/b/a$1;->this$0:Lio/casper/android/n/b/a;

    invoke-static {v2}, Lio/casper/android/n/b/a;->c(Lio/casper/android/n/b/a;)Ljavax/net/ssl/SSLSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/casper/android/n/b/b/b;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v0, v1}, Lio/casper/android/n/b/a;->a(Lio/casper/android/n/b/a;Lio/casper/android/n/b/b/b;)Lio/casper/android/n/b/b/b;

    .line 111
    iget-object v0, p0, Lio/casper/android/n/b/a$1;->this$0:Lio/casper/android/n/b/a;

    invoke-virtual {v0}, Lio/casper/android/n/b/a;->d()V

    .line 112
    iget-object v0, p0, Lio/casper/android/n/b/a$1;->this$0:Lio/casper/android/n/b/a;

    invoke-virtual {v0}, Lio/casper/android/n/b/a;->e()V

    .line 114
    new-instance v0, Lio/casper/android/n/b/d/b;

    iget-object v1, p0, Lio/casper/android/n/b/a$1;->this$0:Lio/casper/android/n/b/a;

    invoke-static {v1}, Lio/casper/android/n/b/a;->d(Lio/casper/android/n/b/a;)Lio/casper/android/e/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lio/casper/android/e/b/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/casper/android/n/b/a$1;->this$0:Lio/casper/android/n/b/a;

    invoke-static {v2}, Lio/casper/android/n/b/a;->e(Lio/casper/android/n/b/a;)Lio/casper/android/n/a/c/b/s;

    move-result-object v2

    invoke-virtual {v2}, Lio/casper/android/n/a/c/b/s;->a()Lio/casper/android/n/a/c/b/l;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/casper/android/n/b/d/b;-><init>(Ljava/lang/String;Lio/casper/android/n/a/c/b/l;)V

    .line 115
    iget-object v1, p0, Lio/casper/android/n/b/a$1;->this$0:Lio/casper/android/n/b/a;

    invoke-static {v1}, Lio/casper/android/n/b/a;->f(Lio/casper/android/n/b/a;)Lio/casper/android/l/t;

    move-result-object v1

    invoke-virtual {v1}, Lio/casper/android/l/t;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/casper/android/n/b/d/b;->c(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lio/casper/android/n/b/a$1;->this$0:Lio/casper/android/n/b/a;

    invoke-static {v1}, Lio/casper/android/n/b/a;->f(Lio/casper/android/n/b/a;)Lio/casper/android/l/t;

    move-result-object v1

    invoke-virtual {v1}, Lio/casper/android/l/t;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/casper/android/n/b/d/b;->a(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lio/casper/android/n/b/a$1;->this$0:Lio/casper/android/n/b/a;

    invoke-static {v1}, Lio/casper/android/n/b/a;->f(Lio/casper/android/n/b/a;)Lio/casper/android/l/t;

    move-result-object v1

    invoke-virtual {v1}, Lio/casper/android/l/t;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/casper/android/n/b/d/b;->b(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lio/casper/android/n/b/a$1;->this$0:Lio/casper/android/n/b/a;

    invoke-virtual {v1, v0}, Lio/casper/android/n/b/a;->a(Lio/casper/android/n/b/d/n;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    iget-object v0, p0, Lio/casper/android/n/b/a$1;->this$0:Lio/casper/android/n/b/a;

    sget-object v1, Lio/casper/android/n/b/a$a;->DISCONNECTED:Lio/casper/android/n/b/a$a;

    invoke-virtual {v0, v1}, Lio/casper/android/n/b/a;->a(Lio/casper/android/n/b/a$a;)V

    goto :goto_0
.end method
