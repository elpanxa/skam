.class public Lio/casper/android/l/f;
.super Lio/casper/android/l/a/a;
.source "DebugSettingsManager.java"


# static fields
.field public static final PREFERENCE_DEBUG_SETTINGS:Ljava/lang/String; = "pref_debug_settings_map"

.field private static final TAG:Ljava/lang/String; = "DebugSettingsManager"

.field public static final reportAllJsonParserExceptions:Ljava/lang/String; = "reportAllJsonParserExceptions"

.field public static final reportJsonParserExceptionsForSnapchatLogin:Ljava/lang/String; = "reportJsonParserExceptionsForSnapchatLogin"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lio/casper/android/l/a/a;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lio/casper/android/f/a;
    .locals 6

    .prologue
    .line 47
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 49
    invoke-virtual {p0}, Lio/casper/android/l/f;->a()Ljava/util/Map;

    move-result-object v0

    .line 50
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 53
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 59
    :goto_0
    new-instance v1, Lio/casper/android/f/a;

    invoke-direct {v1, v0}, Lio/casper/android/f/a;-><init>(Lorg/json/JSONObject;)V

    return-object v1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    const-string v1, "DebugSettingsManager"

    const-string v3, "Failed to decode JSON for DebugSetting Key: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v1, v3, v0, v4}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    move-object v0, v2

    goto :goto_0
.end method

.method public a()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    const-string v0, "pref_debug_settings_map"

    const-string v1, "{}"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lio/casper/android/l/f;->mJsonSerializer:Lio/casper/android/util/e;

    new-instance v2, Lio/casper/android/l/f$1;

    invoke-direct {v2, p0}, Lio/casper/android/l/f$1;-><init>(Lio/casper/android/l/f;)V

    invoke-virtual {v2}, Lio/casper/android/l/f$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lio/casper/android/util/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 37
    if-nez v0, :cond_0

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 41
    :cond_0
    return-object v0
.end method

.method public a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    if-eqz p1, :cond_0

    .line 28
    const-string v0, "pref_debug_settings_map"

    iget-object v1, p0, Lio/casper/android/l/f;->mJsonSerializer:Lio/casper/android/util/e;

    invoke-virtual {v1, p1}, Lio/casper/android/util/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/l/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_0
    return-void
.end method
