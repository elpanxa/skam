.class Lio/casper/android/c/c/f/c$1$1;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/c/c/f/c$1;->onResponse(Lcom/squareup/okhttp/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/c/c/f/c$1;

.field final synthetic val$parsedResponse:Ljava/lang/Object;

.field final synthetic val$response:Lcom/squareup/okhttp/Response;


# direct methods
.method constructor <init>(Lio/casper/android/c/c/f/c$1;Lcom/squareup/okhttp/Response;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lio/casper/android/c/c/f/c$1$1;->this$1:Lio/casper/android/c/c/f/c$1;

    iput-object p2, p0, Lio/casper/android/c/c/f/c$1$1;->val$response:Lcom/squareup/okhttp/Response;

    iput-object p3, p0, Lio/casper/android/c/c/f/c$1$1;->val$parsedResponse:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 289
    iget-object v0, p0, Lio/casper/android/c/c/f/c$1$1;->this$1:Lio/casper/android/c/c/f/c$1;

    iget-object v0, v0, Lio/casper/android/c/c/f/c$1;->this$0:Lio/casper/android/c/c/f/c;

    invoke-static {v0}, Lio/casper/android/c/c/f/c;->a(Lio/casper/android/c/c/f/c;)Lio/casper/android/c/c/a/a;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/c/c/f/c$1$1;->val$response:Lcom/squareup/okhttp/Response;

    iget-object v2, p0, Lio/casper/android/c/c/f/c$1$1;->val$parsedResponse:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lio/casper/android/c/c/a/a;->a(Lcom/squareup/okhttp/Response;Ljava/lang/Object;)V

    .line 290
    return-void
.end method
