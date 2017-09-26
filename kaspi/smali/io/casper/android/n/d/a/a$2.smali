.class Lio/casper/android/n/d/a/a$2;
.super Ljava/lang/Object;
.source "SnapchatGetRequest.java"

# interfaces
.implements Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/n/d/a/a;->setCallback(Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/n/d/a/a;

.field final synthetic val$responseCallback:Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback;


# direct methods
.method constructor <init>(Lio/casper/android/n/d/a/a;Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lio/casper/android/n/d/a/a$2;->this$0:Lio/casper/android/n/d/a/a;

    iput-object p2, p0, Lio/casper/android/n/d/a/a$2;->val$responseCallback:Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;)V
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p1}, Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;->getCode()I

    move-result v0

    .line 117
    const/16 v1, 0x191

    if-eq v0, v1, :cond_0

    const/16 v1, 0x193

    if-ne v0, v1, :cond_2

    .line 118
    :cond_0
    iget-object v0, p0, Lio/casper/android/n/d/a/a$2;->this$0:Lio/casper/android/n/d/a/a;

    invoke-static {v0}, Lio/casper/android/n/d/a/a;->c(Lio/casper/android/n/d/a/a;)Lio/casper/android/l/s;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/l/s;->l()V

    .line 125
    :cond_1
    :goto_0
    return-void

    .line 120
    :cond_2
    iget-object v0, p0, Lio/casper/android/n/d/a/a$2;->val$responseCallback:Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lio/casper/android/n/d/a/a$2;->val$responseCallback:Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback;

    invoke-interface {v0, p1}, Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback;->onFailure(Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;)V

    goto :goto_0
.end method

.method public onSuccess(Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p1}, Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;->getCode()I

    move-result v0

    .line 103
    const/16 v1, 0x191

    if-eq v0, v1, :cond_0

    const/16 v1, 0x193

    if-ne v0, v1, :cond_2

    .line 104
    :cond_0
    iget-object v0, p0, Lio/casper/android/n/d/a/a$2;->this$0:Lio/casper/android/n/d/a/a;

    invoke-static {v0}, Lio/casper/android/n/d/a/a;->c(Lio/casper/android/n/d/a/a;)Lio/casper/android/l/s;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/l/s;->l()V

    .line 111
    :cond_1
    :goto_0
    return-void

    .line 106
    :cond_2
    iget-object v0, p0, Lio/casper/android/n/d/a/a$2;->val$responseCallback:Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lio/casper/android/n/d/a/a$2;->val$responseCallback:Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback;

    invoke-interface {v0, p1, p2}, Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback;->onSuccess(Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;Ljava/lang/Object;)V

    goto :goto_0
.end method
