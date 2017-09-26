.class public Lcom/avocarrot/androidsdk/DynamicConfiguration;
.super Ljava/lang/Object;
.source "DynamicConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;
    }
.end annotation


# static fields
.field public static final GENERAL:Ljava/lang/String; = "general"

.field public static final PLACEMENTS:Ljava/lang/String; = "placements"

.field private static final PREFS_NAME:Ljava/lang/String; = "AvoConf"

.field private static final VERSION:Ljava/lang/String; = "version"

.field protected static mCachedValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avocarrot/androidsdk/DynamicConfiguration;->mCachedValues:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    return-void
.end method

.method public static getDefaultInt(Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 154
    :try_start_0
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->value()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 156
    :goto_0
    return-object v0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDefaultString(Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->value()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInt(Ljava/lang/String;Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 121
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    sget-object v1, Lcom/avocarrot/androidsdk/DynamicConfiguration;->mCachedValues:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    sget-object v1, Lcom/avocarrot/androidsdk/DynamicConfiguration;->mCachedValues:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInt(Ljava/lang/String;Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 130
    invoke-static {p0, p1}, Lcom/avocarrot/androidsdk/DynamicConfiguration;->getInt(Ljava/lang/String;Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;)Ljava/lang/Integer;

    move-result-object v0

    .line 131
    if-nez v0, :cond_1

    .line 132
    if-nez p2, :cond_0

    .line 133
    invoke-static {p1}, Lcom/avocarrot/androidsdk/DynamicConfiguration;->getDefaultInt(Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;)Ljava/lang/Integer;

    move-result-object p2

    .line 137
    :cond_0
    :goto_0
    return-object p2

    :cond_1
    move-object p2, v0

    goto :goto_0
.end method

.method public static getIntFallbackToDefault(Ljava/lang/String;Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 143
    invoke-static {p0, p1}, Lcom/avocarrot/androidsdk/DynamicConfiguration;->getInt(Ljava/lang/String;Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;)Ljava/lang/Integer;

    move-result-object v0

    .line 144
    if-nez v0, :cond_0

    .line 145
    invoke-static {p1}, Lcom/avocarrot/androidsdk/DynamicConfiguration;->getDefaultInt(Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;)Ljava/lang/Integer;

    move-result-object v0

    .line 146
    :cond_0
    return-object v0
.end method

.method public static getString(Ljava/lang/String;Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    sget-object v1, Lcom/avocarrot/androidsdk/DynamicConfiguration;->mCachedValues:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    sget-object v1, Lcom/avocarrot/androidsdk/DynamicConfiguration;->mCachedValues:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-object v0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    sget-object v0, Lcom/avocarrot/androidsdk/DynamicConfiguration;->mCachedValues:Ljava/util/HashMap;

    if-nez v0, :cond_1

    const-string v0, ""

    .line 105
    :cond_0
    :goto_0
    return-object v0

    .line 101
    :cond_1
    sget-object v0, Lcom/avocarrot/androidsdk/DynamicConfiguration;->mCachedValues:Ljava/util/HashMap;

    const-string v1, "version"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    if-nez v0, :cond_0

    .line 103
    const-string v0, ""

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/avocarrot/androidsdk/DynamicConfiguration;->mPrefs:Landroid/content/SharedPreferences;

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "AvoConf"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/avocarrot/androidsdk/DynamicConfiguration;->mPrefs:Landroid/content/SharedPreferences;

    .line 38
    sget-object v0, Lcom/avocarrot/androidsdk/DynamicConfiguration;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 39
    sget-object v0, Lcom/avocarrot/androidsdk/DynamicConfiguration;->mCachedValues:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/avocarrot/androidsdk/DynamicConfiguration;->mCachedValues:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 40
    :cond_0
    invoke-static {}, Lcom/avocarrot/androidsdk/DynamicConfiguration;->loadCachedInMemory()V

    .line 41
    :cond_1
    return-void
.end method

.method protected static loadCachedInMemory()V
    .locals 8

    .prologue
    .line 44
    sget-object v0, Lcom/avocarrot/androidsdk/DynamicConfiguration;->mCachedValues:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lcom/avocarrot/androidsdk/DynamicConfiguration;->mCachedValues:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/avocarrot/androidsdk/DynamicConfiguration;->mCachedValues:Ljava/util/HashMap;

    .line 48
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avocarrot/androidsdk/DynamicConfiguration;->mCachedValues:Ljava/util/HashMap;

    .line 50
    :try_start_0
    sget-object v0, Lcom/avocarrot/androidsdk/DynamicConfiguration;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 51
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 52
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 53
    const-string v3, "version"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 54
    sget-object v1, Lcom/avocarrot/androidsdk/DynamicConfiguration;->mCachedValues:Ljava/util/HashMap;

    const-string v3, "version"

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    :cond_2
    return-void

    .line 57
    :cond_3
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 59
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 61
    const-string v5, "id"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 62
    sget-object v5, Lcom/avocarrot/androidsdk/DynamicConfiguration;->mCachedValues:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 64
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static update(Lorg/json/JSONObject;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 72
    if-eqz p0, :cond_3

    .line 73
    const-string v1, "version"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-static {}, Lcom/avocarrot/androidsdk/DynamicConfiguration;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 75
    sget-object v2, Lcom/avocarrot/androidsdk/DynamicConfiguration;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 76
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 77
    const-string v3, "version"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 78
    const-string v1, "general"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 79
    if-eqz v1, :cond_0

    .line 80
    const-string v3, "general"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 81
    :cond_0
    const-string v1, "placements"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 82
    if-eqz v1, :cond_2

    .line 83
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 84
    :goto_0
    if-ge v0, v3, :cond_2

    .line 85
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 86
    if-eqz v4, :cond_1

    .line 87
    const-string v5, "id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 84
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_2
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 92
    invoke-static {}, Lcom/avocarrot/androidsdk/DynamicConfiguration;->loadCachedInMemory()V

    .line 93
    const/4 v0, 0x1

    .line 96
    :cond_3
    return v0
.end method
