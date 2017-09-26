.class public Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler;
.super Ljava/lang/Object;
.source "UIResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mResponseCallback:Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler;->mResponseCallback:Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback;

    .line 14
    return-void
.end method

.method static synthetic access$000(Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler;)Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler;->mResponseCallback:Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback;

    return-object v0
.end method


# virtual methods
.method public onFailure(Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;)V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler;->mResponseCallback:Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback;

    if-eqz v0, :cond_0

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler$2;

    invoke-direct {v1, p0, p1}, Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler$2;-><init>(Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler;Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler;->mResponseCallback:Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback;

    if-eqz v0, :cond_0

    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler$1;-><init>(Lcom/liamcottle/lib/okhttpwrapper/handler/UIResponseHandler;Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    :cond_0
    return-void
.end method
