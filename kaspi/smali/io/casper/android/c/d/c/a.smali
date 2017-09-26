.class public Lio/casper/android/c/d/c/a;
.super Lio/casper/android/c/c/f/c;
.source "OAuthTokenRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/casper/android/c/c/f/c",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGoogleAuthManager:Lio/casper/android/l/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 18
    invoke-direct {p0}, Lio/casper/android/c/c/f/c;-><init>()V

    .line 20
    iput-object p1, p0, Lio/casper/android/c/d/c/a;->mContext:Landroid/content/Context;

    .line 21
    new-instance v0, Lio/casper/android/l/i;

    iget-object v1, p0, Lio/casper/android/c/d/c/a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/l/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/casper/android/c/d/c/a;->mGoogleAuthManager:Lio/casper/android/l/i;

    .line 23
    const-string v0, "device"

    iget-object v1, p0, Lio/casper/android/c/d/c/a;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lio/casper/android/util/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/c/d/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string v0, "app"

    const-string v1, "com.snapchat.android"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/c/d/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v0, "User-Agent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GoogleAuth/1.4 ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/c/d/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v0, "device_country"

    invoke-static {}, Lio/casper/android/n/e/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/c/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v0, "operator_country"

    invoke-static {}, Lio/casper/android/n/e/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/c/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v0, "lang"

    invoke-static {}, Lio/casper/android/n/e/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/c/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v0, "sdk_version"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/c/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v0, "google_play_services_version"

    const-string v1, "7099038"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/c/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v0, "accountType"

    const-string v1, "HOSTED_OR_GOOGLE"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/c/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v0, "Email"

    invoke-virtual {p0, v0, p2}, Lio/casper/android/c/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v0, "service"

    const-string v1, "audience:server:client_id:694893979329-l59f3phl42et9clpoo296d8raqoljl6p.apps.googleusercontent.com"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/c/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v0, "source"

    const-string v1, "android"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/c/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v0, "androidId"

    invoke-static {p1}, Lio/casper/android/util/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/c/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v0, "app"

    const-string v1, "com.snapchat.android"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/c/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v0, "client_sig"

    iget-object v1, p0, Lio/casper/android/c/d/c/a;->mGoogleAuthManager:Lio/casper/android/l/i;

    invoke-virtual {v1}, Lio/casper/android/l/i;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/c/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v0, "callerPkg"

    const-string v1, "com.snapchat.android"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/c/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v0, "callerSig"

    iget-object v1, p0, Lio/casper/android/c/d/c/a;->mGoogleAuthManager:Lio/casper/android/l/i;

    invoke-virtual {v1}, Lio/casper/android/l/i;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/c/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v0, "EncryptedPasswd"

    invoke-static {p2, p3}, Lio/casper/android/util/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/c/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method public c()Lio/casper/android/c/c/f/b;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lio/casper/android/c/c/f/b;->POST:Lio/casper/android/c/c/f/b;

    return-object v0
.end method

.method public d()Lio/casper/android/c/c/d/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/casper/android/c/c/d/d",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lio/casper/android/c/d/b/a;

    invoke-direct {v0}, Lio/casper/android/c/d/b/a;-><init>()V

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "https://android.clients.google.com/auth"

    return-object v0
.end method
