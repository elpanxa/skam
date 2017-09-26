.class Lio/casper/android/c/c/f/c$1$3;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/c/c/f/c$1;->onFailure(Lcom/squareup/okhttp/Request;Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/c/c/f/c$1;

.field final synthetic val$finalException:Ljava/io/IOException;

.field final synthetic val$request:Lcom/squareup/okhttp/Request;


# direct methods
.method constructor <init>(Lio/casper/android/c/c/f/c$1;Lcom/squareup/okhttp/Request;Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lio/casper/android/c/c/f/c$1$3;->this$1:Lio/casper/android/c/c/f/c$1;

    iput-object p2, p0, Lio/casper/android/c/c/f/c$1$3;->val$request:Lcom/squareup/okhttp/Request;

    iput-object p3, p0, Lio/casper/android/c/c/f/c$1$3;->val$finalException:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 326
    iget-object v0, p0, Lio/casper/android/c/c/f/c$1$3;->this$1:Lio/casper/android/c/c/f/c$1;

    iget-object v0, v0, Lio/casper/android/c/c/f/c$1;->this$0:Lio/casper/android/c/c/f/c;

    invoke-static {v0}, Lio/casper/android/c/c/f/c;->a(Lio/casper/android/c/c/f/c;)Lio/casper/android/c/c/a/a;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/c/c/f/c$1$3;->val$request:Lcom/squareup/okhttp/Request;

    iget-object v2, p0, Lio/casper/android/c/c/f/c$1$3;->val$finalException:Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/casper/android/c/c/f/c;->a(Lcom/squareup/okhttp/Request;Ljava/lang/String;)Lcom/squareup/okhttp/Response;

    move-result-object v1

    iget-object v2, p0, Lio/casper/android/c/c/f/c$1$3;->val$finalException:Ljava/io/IOException;

    invoke-interface {v0, v1, v2}, Lio/casper/android/c/c/a/a;->a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V

    .line 327
    return-void
.end method
