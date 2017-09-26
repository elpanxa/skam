.class Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler$2;
.super Ljava/lang/Object;
.source "UIResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler;->onFailure(Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler;

.field final synthetic val$responseStatus:Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;


# direct methods
.method constructor <init>(Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler;Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler$2;->this$0:Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler;

    iput-object p2, p0, Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler$2;->val$responseStatus:Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler$2;->this$0:Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler;

    # getter for: Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler;->mResponseCallback:Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback;
    invoke-static {v0}, Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler;->access$000(Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler;)Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler$2;->val$responseStatus:Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;

    invoke-interface {v0, v1}, Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback;->onFailure(Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;)V

    .line 36
    return-void
.end method
