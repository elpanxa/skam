.class public Lio/casper/android/j/a/a;
.super Lcom/liamcottle/lib/okhttpwrapper/request/PostRequest;
.source "OAuthTokenRequest.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/liamcottle/lib/okhttpwrapper/request/PostRequest;-><init>()V

    .line 15
    new-instance v0, Lio/casper/android/l/i;

    invoke-direct {v0, p1}, Lio/casper/android/l/i;-><init>(Landroid/content/Context;)V

    .line 19
    const-string v1, "https://android.clients.google.com/auth"

    invoke-virtual {p0, v1}, Lio/casper/android/j/a/a;->setRequestUrl(Ljava/lang/String;)V

    .line 21
    const-string v1, "device"

    invoke-static {p1}, Lio/casper/android/util/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lio/casper/android/j/a/a;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string v1, "app"

    const-string v2, "com.snapchat.android"

    invoke-virtual {p0, v1, v2}, Lio/casper/android/j/a/a;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v1, "User-Agent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GoogleAuth/1.4 ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lio/casper/android/j/a/a;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v1, "device_country"

    invoke-static {}, Lio/casper/android/n/e/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lio/casper/android/j/a/a;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string v1, "operator_country"

    invoke-static {}, Lio/casper/android/n/e/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lio/casper/android/j/a/a;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v1, "lang"

    invoke-static {}, Lio/casper/android/n/e/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lio/casper/android/j/a/a;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v1, "sdk_version"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lio/casper/android/j/a/a;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v1, "google_play_services_version"

    const-string v2, "7099038"

    invoke-virtual {p0, v1, v2}, Lio/casper/android/j/a/a;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v1, "accountType"

    const-string v2, "HOSTED_OR_GOOGLE"

    invoke-virtual {p0, v1, v2}, Lio/casper/android/j/a/a;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v1, "Email"

    invoke-virtual {p0, v1, p2}, Lio/casper/android/j/a/a;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v1, "service"

    const-string v2, "audience:server:client_id:694893979329-l59f3phl42et9clpoo296d8raqoljl6p.apps.googleusercontent.com"

    invoke-virtual {p0, v1, v2}, Lio/casper/android/j/a/a;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v1, "source"

    const-string v2, "android"

    invoke-virtual {p0, v1, v2}, Lio/casper/android/j/a/a;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v1, "androidId"

    invoke-static {p1}, Lio/casper/android/util/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lio/casper/android/j/a/a;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v1, "app"

    const-string v2, "com.snapchat.android"

    invoke-virtual {p0, v1, v2}, Lio/casper/android/j/a/a;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v1, "client_sig"

    invoke-virtual {v0}, Lio/casper/android/l/i;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lio/casper/android/j/a/a;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v1, "callerPkg"

    const-string v2, "com.snapchat.android"

    invoke-virtual {p0, v1, v2}, Lio/casper/android/j/a/a;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v1, "callerSig"

    invoke-virtual {v0}, Lio/casper/android/l/i;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lio/casper/android/j/a/a;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v0, "EncryptedPasswd"

    invoke-static {p2, p3}, Lio/casper/android/util/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/j/a/a;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lio/casper/android/k/a/b;

    invoke-direct {v0}, Lio/casper/android/k/a/b;-><init>()V

    invoke-virtual {p0, v0}, Lio/casper/android/j/a/a;->setResponseParser(Lcom/liamcottle/lib/okhttpwrapper/response/parser/ResponseParser;)V

    .line 44
    return-void
.end method
