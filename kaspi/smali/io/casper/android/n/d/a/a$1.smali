.class Lio/casper/android/n/d/a/a$1;
.super Ljava/lang/Object;
.source "SnapchatGetRequest.java"

# interfaces
.implements Lio/casper/android/l/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/n/d/a/a;->executeAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/n/d/a/a;


# direct methods
.method constructor <init>(Lio/casper/android/n/d/a/a;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lio/casper/android/n/d/a/a$1;->this$0:Lio/casper/android/n/d/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lio/casper/android/n/d/a/a$1;->this$0:Lio/casper/android/n/d/a/a;

    iget-object v0, v0, Lio/casper/android/n/d/a/a;->mResponseCallback:Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback;

    invoke-interface {v0, p1}, Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback;->onFailure(Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;)V

    .line 85
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lio/casper/android/n/d/a/a$1;->this$0:Lio/casper/android/n/d/a/a;

    sget-object v1, Lio/casper/android/n/a;->KEY_HEADER_SNAPCHAT_CLIENT_AUTH_TOKEN:Ljava/lang/String;

    invoke-static {p1}, Lio/casper/android/util/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/n/d/a/a;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lio/casper/android/n/d/a/a$1;->this$0:Lio/casper/android/n/d/a/a;

    invoke-static {v0}, Lio/casper/android/n/d/a/a;->a(Lio/casper/android/n/d/a/a;)V

    .line 80
    return-void
.end method
