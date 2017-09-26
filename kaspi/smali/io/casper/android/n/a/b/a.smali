.class public Lio/casper/android/n/a/b/a;
.super Lio/casper/android/n/a/b/a/a;
.source "AllUpdatesRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/casper/android/n/a/b/a/a",
        "<",
        "Lio/casper/android/n/a/c/a;",
        ">;"
    }
.end annotation


# instance fields
.field private mAuthTokenLogin:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/casper/android/e/b/b;)V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lio/casper/android/n/a/b/a/a;-><init>(Landroid/content/Context;)V

    .line 25
    if-eqz p2, :cond_0

    .line 26
    iput-object p2, p0, Lio/casper/android/n/a/b/a;->mSnapchatAccount:Lio/casper/android/e/b/b;

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/casper/android/n/a/b/a;->mAuthTokenLogin:Z

    .line 30
    :cond_0
    const-string v0, "checksums_dict"

    const-string v1, "{}"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v0, "features_map"

    const-string v1, "{}"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v0, "friends_request"

    const-string v1, "{\"friends_sync_token\":\"0\"}"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v0, "width"

    sget-object v1, Lio/casper/android/n/a;->PARAM_WIDTH:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v0, "height"

    sget-object v1, Lio/casper/android/n/a;->PARAM_HEIGHT:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v0, "max_video_width"

    sget-object v1, Lio/casper/android/n/a;->PARAM_MAX_VIDEO_WIDTH:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v0, "max_video_height"

    sget-object v1, Lio/casper/android/n/a;->PARAM_MAX_VIDEO_HEIGHT:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v0, "screen_width_in"

    sget-object v1, Lio/casper/android/n/a;->PARAM_SCREEN_WIDTH_IN:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v0, "screen_height_in"

    sget-object v1, Lio/casper/android/n/a;->PARAM_SCREEN_HEIGHT_IN:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v0, "screen_width_px"

    sget-object v1, Lio/casper/android/n/a;->PARAM_SCREEN_WIDTH_PX:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v0, "screen_height_px"

    sget-object v1, Lio/casper/android/n/a;->PARAM_SCREEN_HEIGHT_PX:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "/loq/all_updates"

    return-object v0
.end method

.method public a(Lcom/squareup/okhttp/Response;)Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lio/casper/android/n/a/b/a;->mAuthTokenLogin:Z

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 73
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lio/casper/android/n/a/b/a/a;->a(Lcom/squareup/okhttp/Response;)Z

    move-result v0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public c()Lio/casper/android/c/c/f/b;
    .locals 1

    .prologue
    .line 60
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
            "Lio/casper/android/n/a/c/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Lio/casper/android/c/c/d/b;

    iget-object v1, p0, Lio/casper/android/n/a/b/a;->mContext:Landroid/content/Context;

    const-class v2, Lio/casper/android/n/a/c/a;

    invoke-direct {v0, v1, v2}, Lio/casper/android/c/c/d/b;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method
