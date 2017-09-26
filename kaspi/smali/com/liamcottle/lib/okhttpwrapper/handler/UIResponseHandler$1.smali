.class Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler$1;
.super Ljava/lang/Object;
.source "UIResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler;->onSuccess(Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler;

.field final synthetic val$responseData:Ljava/lang/Object;

.field final synthetic val$responseStatus:Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;


# direct methods
.method constructor <init>(Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler;Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler$1;->this$0:Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler;

    iput-object p2, p0, Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler$1;->val$responseStatus:Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;

    iput-object p3, p0, Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler$1;->val$responseData:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 22
    iget-object v0, p0, Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler$1;->this$0:Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler;

    # getter for: Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler;->mResponseCallback:Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback;
    invoke-static {v0}, Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler;->access$000(Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler;)Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler$1;->val$responseStatus:Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;

    iget-object v2, p0, Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler$1;->val$responseData:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback;->onSuccess(Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;Ljava/lang/Object;)V

    .line 23
    return-void
.end method
