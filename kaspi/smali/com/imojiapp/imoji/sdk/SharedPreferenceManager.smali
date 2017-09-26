.class Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;
.super Ljava/lang/Object;
.source "SharedPreferenceManager.java"


# static fields
.field static final PREF_FILE:Ljava/lang/String; = "imoji-store"

.field private static sPrefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;->sPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static getInt(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;->sPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static getLong(Ljava/lang/String;J)J
    .locals 3

    .prologue
    .line 45
    sget-object v0, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;->sPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;->sPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    sget-object v0, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;->sPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static init(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 19
    sget-object v0, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;->sPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 20
    const-class v1, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v0, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;->sPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 22
    const-string v0, "imoji-store"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;->sPrefs:Landroid/content/SharedPreferences;

    .line 24
    :cond_0
    monitor-exit v1

    .line 26
    :cond_1
    return-void

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static putBoolean(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;->sPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static putInt(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;->sPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 36
    return-void
.end method

.method static putLong(Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;->sPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;->sPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 30
    return-void
.end method

.method static putStringSet(Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    sget-object v0, Lcom/imojiapp/imoji/sdk/SharedPreferenceManager;->sPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
