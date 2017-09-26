.class public Lcom/revmob/internal/RevMobBeacon;
.super Landroid/content/BroadcastReceiver;
.source "RevMobBeacon.java"


# static fields
.field public static config:Lorg/json/JSONObject;

.field public static context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static getMainContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/revmob/internal/RevMobBeacon;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 23
    sput-object p0, Lcom/revmob/internal/RevMobBeacon;->context:Landroid/content/Context;

    .line 24
    sput-object p1, Lcom/revmob/internal/RevMobBeacon;->config:Lorg/json/JSONObject;

    .line 25
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 26
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 27
    const-string v1, "beaconConfiguration"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 28
    const-string v1, "revmobJSON"

    invoke-static {}, Lcom/revmob/android/RevMobContext;->revmobJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 29
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 30
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/revmob/internal/RevMobBeacon;->context:Landroid/content/Context;

    const-class v2, Lcom/revmob/internal/RevMobBeaconManager;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 31
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 35
    const-string v0, "BroadcastReceiver received!!"

    invoke-static {v0}, Lcom/revmob/internal/RMLog;->i(Ljava/lang/String;)V

    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/revmob/internal/RevMobBeaconManager;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 37
    return-void
.end method
