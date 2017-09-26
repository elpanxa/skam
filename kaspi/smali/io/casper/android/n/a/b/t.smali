.class public Lio/casper/android/n/a/b/t;
.super Lio/casper/android/n/a/b/a/a;
.source "StoriesRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/casper/android/n/a/b/a/a",
        "<",
        "Lio/casper/android/n/a/c/j;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lio/casper/android/n/a/b/a/a;-><init>(Landroid/content/Context;)V

    .line 17
    const-string v0, "screen_width_in"

    sget-object v1, Lio/casper/android/n/a;->PARAM_SCREEN_WIDTH_IN:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    const-string v0, "screen_height_in"

    sget-object v1, Lio/casper/android/n/a;->PARAM_SCREEN_HEIGHT_IN:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const-string v0, "screen_width_px"

    sget-object v1, Lio/casper/android/n/a;->PARAM_SCREEN_WIDTH_PX:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string v0, "screen_height_px"

    sget-object v1, Lio/casper/android/n/a;->PARAM_SCREEN_HEIGHT_PX:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "/bq/stories"

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method public c()Lio/casper/android/c/c/f/b;
    .locals 1

    .prologue
    .line 37
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
            "Lio/casper/android/n/a/c/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lio/casper/android/c/c/d/b;

    iget-object v1, p0, Lio/casper/android/n/a/b/t;->mContext:Landroid/content/Context;

    const-class v2, Lio/casper/android/n/a/c/j;

    invoke-direct {v0, v1, v2}, Lio/casper/android/c/c/d/b;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method
