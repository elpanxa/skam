.class public Lio/casper/android/n/d/a;
.super Lio/casper/android/n/d/a/a;
.source "ChatMediaRequest.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/casper/android/n/b/d/a;)V
    .locals 3

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lio/casper/android/n/d/a/a;-><init>(Landroid/content/Context;)V

    .line 16
    sget-object v0, Lio/casper/android/n/a;->ENDPOINT_CHAT_MEDIA:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lio/casper/android/n/d/a;->a(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lio/casper/android/n/d/a;->a()V

    .line 20
    invoke-virtual {p2}, Lio/casper/android/n/b/d/a;->c()Lio/casper/android/n/b/d/d$a;

    move-result-object v0

    .line 21
    sget-object v1, Lio/casper/android/n/a;->KEY_PARAM_ID:Ljava/lang/String;

    invoke-virtual {p2}, Lio/casper/android/n/b/d/a;->a()Lio/casper/android/n/b/d/a$a;

    move-result-object v2

    invoke-virtual {v2}, Lio/casper/android/n/b/d/a$a;->a()Lio/casper/android/n/b/d/a$a$a;

    move-result-object v2

    invoke-virtual {v2}, Lio/casper/android/n/b/d/a$a$a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lio/casper/android/n/d/a;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    sget-object v1, Lio/casper/android/n/a;->KEY_PARAM_CONVERSATION_ID:Ljava/lang/String;

    invoke-virtual {v0}, Lio/casper/android/n/b/d/d$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lio/casper/android/n/d/a;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lio/casper/android/k/a/a;

    iget-object v1, p0, Lio/casper/android/n/d/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lio/casper/android/k/a/a;-><init>(Landroid/content/Context;Lio/casper/android/n/b/d/a;)V

    invoke-virtual {p0, v0}, Lio/casper/android/n/d/a;->setResponseParser(Lcom/liamcottle/lib/okhttpwrapper/response/parser/ResponseParser;)V

    .line 26
    return-void
.end method
