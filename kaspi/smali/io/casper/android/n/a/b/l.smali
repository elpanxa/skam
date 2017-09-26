.class public Lio/casper/android/n/a/b/l;
.super Lio/casper/android/n/a/b/a/a;
.source "LoginRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/casper/android/n/a/b/a/a",
        "<",
        "Lio/casper/android/n/a/c/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final ENDPOINT:Ljava/lang/String; = "/loq/login"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lio/casper/android/n/a/b/a/a;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-static {p4}, Lio/casper/android/n/e/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 30
    const-string v0, "username"

    invoke-virtual {p0, v0, p2}, Lio/casper/android/n/a/b/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v0, "password"

    invoke-virtual {p0, v0, p3}, Lio/casper/android/n/a/b/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v0, "req_token"

    invoke-virtual {p0, v0, v4}, Lio/casper/android/n/a/b/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v0, "timestamp"

    invoke-virtual {p0, v0, p4}, Lio/casper/android/n/a/b/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    const-string v0, "pre_auth_token"

    invoke-virtual {p0, v0, p5}, Lio/casper/android/n/a/b/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_0
    iget-object v0, p0, Lio/casper/android/n/a/b/l;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v0}, Lio/casper/android/l/s;->b()Ljava/lang/String;

    move-result-object v5

    .line 40
    iget-object v0, p0, Lio/casper/android/n/a/b/l;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v0}, Lio/casper/android/l/s;->e()Ljava/lang/String;

    move-result-object v6

    .line 42
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    new-instance v0, Lio/casper/android/n/e/a;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v6}, Lio/casper/android/n/e/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v1, "dtoken1i"

    invoke-virtual {v0}, Lio/casper/android/n/e/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lio/casper/android/n/a/b/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v1, "dsig"

    invoke-virtual {v0}, Lio/casper/android/n/e/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lio/casper/android/n/a/b/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :goto_0
    const-string v0, "width"

    sget-object v1, Lio/casper/android/n/a;->PARAM_WIDTH:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v0, "height"

    sget-object v1, Lio/casper/android/n/a;->PARAM_HEIGHT:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v0, "max_video_width"

    sget-object v1, Lio/casper/android/n/a;->PARAM_MAX_VIDEO_WIDTH:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v0, "max_video_height"

    sget-object v1, Lio/casper/android/n/a;->PARAM_MAX_VIDEO_HEIGHT:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v0, "screen_width_in"

    sget-object v1, Lio/casper/android/n/a;->PARAM_SCREEN_WIDTH_IN:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v0, "screen_height_in"

    sget-object v1, Lio/casper/android/n/a;->PARAM_SCREEN_HEIGHT_IN:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v0, "screen_width_px"

    sget-object v1, Lio/casper/android/n/a;->PARAM_SCREEN_WIDTH_PX:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v0, "screen_height_px"

    sget-object v1, Lio/casper/android/n/a;->PARAM_SCREEN_HEIGHT_PX:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v0, "sflag"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v0, "application_id"

    const-string v1, "com.snapchat.android"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void

    .line 47
    :cond_1
    const-string v0, "nt"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string v0, "/loq/login"

    return-object v0
.end method

.method public a(Lcom/squareup/okhttp/Response;)Z
    .locals 2

    .prologue
    .line 99
    if-eqz p1, :cond_0

    .line 100
    new-instance v0, Lio/casper/android/b/a/i;

    iget-object v1, p0, Lio/casper/android/n/a/b/l;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/b/a/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lio/casper/android/n/a/b/l;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/casper/android/b/a/i;->a(Ljava/lang/String;)Lio/casper/android/b/a/i;

    move-result-object v0

    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/casper/android/b/a/i;->a(I)Lio/casper/android/b/a/i;

    move-result-object v0

    invoke-static {v0}, Lio/casper/android/l/c;->a(Lio/casper/android/b/a/a/a;)V

    .line 101
    new-instance v0, Lio/casper/android/b/a/k;

    iget-object v1, p0, Lio/casper/android/n/a/b/l;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/casper/android/b/a/k;-><init>(Landroid/content/Context;)V

    const-string v1, "HTTP Code"

    invoke-virtual {v0, v1}, Lio/casper/android/b/a/k;->a(Ljava/lang/String;)Lio/casper/android/b/a/k;

    move-result-object v0

    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->code()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/casper/android/b/a/k;->b(Ljava/lang/String;)Lio/casper/android/b/a/k;

    move-result-object v0

    invoke-static {v0}, Lio/casper/android/l/c;->a(Lio/casper/android/b/a/a/a;)V

    .line 104
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public a_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lio/casper/android/n/a/b/l;->mTimestamp:Ljava/lang/String;

    invoke-static {v0}, Lio/casper/android/n/e/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public c()Lio/casper/android/c/c/f/b;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lio/casper/android/c/c/f/b;->POST:Lio/casper/android/c/c/f/b;

    return-object v0
.end method

.method public d()Lio/casper/android/c/c/d/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/casper/android/c/c/d/d",
            "<",
            "Lio/casper/android/n/a/c/i;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Lio/casper/android/c/c/d/b;

    iget-object v1, p0, Lio/casper/android/n/a/b/l;->mContext:Landroid/content/Context;

    const-class v2, Lio/casper/android/n/a/c/i;

    invoke-direct {v0, v1, v2}, Lio/casper/android/c/c/d/b;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    invoke-virtual {v0, p0}, Lio/casper/android/c/c/d/b;->a(Lio/casper/android/c/c/f/c;)V

    .line 92
    return-object v0
.end method
