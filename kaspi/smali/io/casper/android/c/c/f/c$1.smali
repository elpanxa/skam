.class Lio/casper/android/c/c/f/c$1;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Lcom/squareup/okhttp/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/c/c/f/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/c/c/f/c;


# direct methods
.method constructor <init>(Lio/casper/android/c/c/f/c;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lio/casper/android/c/c/f/c$1;->this$0:Lio/casper/android/c/c/f/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/squareup/okhttp/Request;Ljava/io/IOException;)V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lio/casper/android/c/c/f/c$1;->this$0:Lio/casper/android/c/c/f/c;

    invoke-static {v0}, Lio/casper/android/c/c/f/c;->a(Lio/casper/android/c/c/f/c;)Lio/casper/android/c/c/a/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 318
    instance-of v0, p2, Ljava/net/UnknownHostException;

    if-nez v0, :cond_0

    instance-of v0, p2, Ljava/net/SocketTimeoutException;

    if-nez v0, :cond_0

    instance-of v0, p2, Ljava/net/ConnectException;

    if-eqz v0, :cond_1

    .line 319
    :cond_0
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Server connection failed. Please check your Internet connection."

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 323
    :cond_1
    iget-object v0, p0, Lio/casper/android/c/c/f/c$1;->this$0:Lio/casper/android/c/c/f/c;

    iget-object v0, v0, Lio/casper/android/c/c/f/c;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lio/casper/android/c/c/f/c$1$3;

    invoke-direct {v1, p0, p1, p2}, Lio/casper/android/c/c/f/c$1$3;-><init>(Lio/casper/android/c/c/f/c$1;Lcom/squareup/okhttp/Request;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 331
    :cond_2
    return-void
.end method

.method public onResponse(Lcom/squareup/okhttp/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lio/casper/android/c/c/f/c$1;->this$0:Lio/casper/android/c/c/f/c;

    invoke-virtual {v0, p1}, Lio/casper/android/c/c/f/c;->a(Lcom/squareup/okhttp/Response;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    :try_start_0
    iget-object v0, p0, Lio/casper/android/c/c/f/c$1;->this$0:Lio/casper/android/c/c/f/c;

    invoke-virtual {v0}, Lio/casper/android/c/c/f/c;->d()Lio/casper/android/c/c/d/d;

    move-result-object v0

    .line 282
    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/casper/android/c/c/d/d;->b(Lcom/squareup/okhttp/ResponseBody;)Ljava/lang/Object;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lio/casper/android/c/c/f/c$1;->this$0:Lio/casper/android/c/c/f/c;

    invoke-static {v1}, Lio/casper/android/c/c/f/c;->a(Lio/casper/android/c/c/f/c;)Lio/casper/android/c/c/a/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 286
    iget-object v1, p0, Lio/casper/android/c/c/f/c$1;->this$0:Lio/casper/android/c/c/f/c;

    iget-object v1, v1, Lio/casper/android/c/c/f/c;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lio/casper/android/c/c/f/c$1$1;

    invoke-direct {v2, p0, p1, v0}, Lio/casper/android/c/c/f/c$1$1;-><init>(Lio/casper/android/c/c/f/c$1;Lcom/squareup/okhttp/Response;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    .line 298
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 300
    iget-object v1, p0, Lio/casper/android/c/c/f/c$1;->this$0:Lio/casper/android/c/c/f/c;

    invoke-static {v1}, Lio/casper/android/c/c/f/c;->a(Lio/casper/android/c/c/f/c;)Lio/casper/android/c/c/a/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Lio/casper/android/c/c/f/c$1;->this$0:Lio/casper/android/c/c/f/c;

    iget-object v1, v1, Lio/casper/android/c/c/f/c;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lio/casper/android/c/c/f/c$1$2;

    invoke-direct {v2, p0, p1, v0}, Lio/casper/android/c/c/f/c$1$2;-><init>(Lio/casper/android/c/c/f/c$1;Lcom/squareup/okhttp/Response;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
