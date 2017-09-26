.class public Lio/casper/android/n/a/b/n;
.super Lio/casper/android/n/a/b/a;
.source "NotificationsAllUpdatesRequest.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/casper/android/e/b/b;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lio/casper/android/n/a/b/a;-><init>(Landroid/content/Context;Lio/casper/android/e/b/b;)V

    .line 15
    return-void
.end method


# virtual methods
.method public a(Lcom/squareup/okhttp/Response;)Z
    .locals 4

    .prologue
    .line 20
    if-eqz p1, :cond_1

    .line 21
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->code()I

    move-result v0

    .line 22
    const/16 v1, 0x191

    if-eq v0, v1, :cond_0

    const/16 v1, 0x193

    if-ne v0, v1, :cond_1

    .line 23
    :cond_0
    iget-object v0, p0, Lio/casper/android/n/a/b/n;->mSnapchatAccountManager:Lio/casper/android/l/s;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lio/casper/android/l/s;->a(J)V

    .line 24
    const/4 v0, 0x1

    .line 28
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lio/casper/android/n/a/b/a;->a(Lcom/squareup/okhttp/Response;)Z

    move-result v0

    goto :goto_0
.end method
