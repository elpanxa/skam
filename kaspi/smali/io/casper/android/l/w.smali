.class public Lio/casper/android/l/w;
.super Lio/casper/android/l/a/a;
.source "SuperSonicManager.java"


# static fields
.field public static final PREFERENCE_SUPERSONIC_APP_KEY:Ljava/lang/String; = "pref_supersonic_app_key"

.field public static final PREFERENCE_SUPERSONIC_CREDITS:Ljava/lang/String; = "pref_supersonic_credits"

.field public static final PREFERENCE_SUPERSONIC_ENABLED:Ljava/lang/String; = "pref_supersonic_enabled"

.field public static final PREFERENCE_SUPERSONIC_FREE_ADDONS:Ljava/lang/String; = "pref_supersonic_free_addons"

.field private static final TAG:Ljava/lang/String; = "SuperSonicManager"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lio/casper/android/l/a/a;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .prologue
    .line 38
    const-string v0, "pref_supersonic_credits"

    invoke-virtual {p0, v0, p1, p2}, Lio/casper/android/l/w;->b(Ljava/lang/String;J)V

    .line 39
    return-void
.end method

.method public a(Lio/casper/android/c/b/b/a/a/i/b;)V
    .locals 3

    .prologue
    .line 82
    if-eqz p1, :cond_1

    .line 84
    invoke-virtual {p1}, Lio/casper/android/c/b/b/a/a/i/b;->a()Z

    move-result v0

    .line 85
    invoke-virtual {p1}, Lio/casper/android/c/b/b/a/a/i/b;->b()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-virtual {p1}, Lio/casper/android/c/b/b/a/a/i/b;->c()Ljava/util/List;

    move-result-object v2

    .line 88
    invoke-virtual {p0, v0}, Lio/casper/android/l/w;->a(Z)V

    .line 90
    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {p0, v1}, Lio/casper/android/l/w;->a(Ljava/lang/String;)V

    .line 94
    :cond_0
    if-eqz v2, :cond_1

    .line 95
    invoke-virtual {p0, v2}, Lio/casper/android/l/w;->a(Ljava/util/List;)V

    .line 100
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    const-string v0, "pref_supersonic_app_key"

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/casper/android/c/b/b/a/a/i/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    :try_start_0
    const-string v0, "pref_supersonic_free_addons"

    iget-object v1, p0, Lio/casper/android/l/w;->mJsonSerializer:Lio/casper/android/util/e;

    invoke-virtual {v1, p1}, Lio/casper/android/util/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/w;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    const-string v1, "SuperSonicManager"

    const-string v2, "Serializing Free Addons failed with Exception"

    invoke-static {v1, v2, v0}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 30
    const-string v0, "pref_supersonic_enabled"

    invoke-virtual {p0, v0, p1}, Lio/casper/android/l/w;->c(Ljava/lang/String;Z)V

    .line 31
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 50
    const-string v0, "pref_supersonic_enabled"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/w;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    const-string v0, "pref_supersonic_app_key"

    const-string v1, "437b1b35"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/w;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()J
    .locals 4

    .prologue
    .line 58
    const-string v0, "pref_supersonic_credits"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lio/casper/android/l/w;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/casper/android/c/b/b/a/a/i/a;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x32

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    new-instance v1, Lio/casper/android/c/b/b/a/a/i/a;

    const-string v2, "Remove Ads"

    const-wide/16 v4, 0x64

    const-string v3, "ads"

    invoke-direct {v1, v2, v4, v5, v3}, Lio/casper/android/c/b/b/a/a/i/a;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v1, Lio/casper/android/c/b/b/a/a/i/a;

    const-string v2, "Multiple Accounts"

    const-string v3, "multiple_accounts"

    invoke-direct {v1, v2, v6, v7, v3}, Lio/casper/android/c/b/b/a/a/i/a;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v1, Lio/casper/android/c/b/b/a/a/i/a;

    const-string v2, "Slide Filters"

    const-string v3, "slide_filters"

    invoke-direct {v1, v2, v6, v7, v3}, Lio/casper/android/c/b/b/a/a/i/a;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    const-string v1, "pref_supersonic_free_addons"

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lio/casper/android/l/w;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lio/casper/android/l/w;->mJsonSerializer:Lio/casper/android/util/e;

    new-instance v2, Lio/casper/android/l/w$1;

    invoke-direct {v2, p0}, Lio/casper/android/l/w$1;-><init>(Lio/casper/android/l/w;)V

    invoke-virtual {v2}, Lio/casper/android/l/w$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lio/casper/android/util/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 72
    if-nez v0, :cond_0

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    :cond_0
    return-object v0
.end method
