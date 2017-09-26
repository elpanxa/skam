.class public Lio/casper/android/f/a;
.super Ljava/lang/Object;
.source "DebugSettingsJSONObject.java"


# instance fields
.field private mJSONObject:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lio/casper/android/f/a;->mJSONObject:Lorg/json/JSONObject;

    .line 12
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 16
    :try_start_0
    iget-object v0, p0, Lio/casper/android/f/a;->mJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 18
    :goto_0
    return v0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    :try_start_0
    iget-object v0, p0, Lio/casper/android/f/a;->mJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 26
    :goto_0
    return-object v0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    const-string v0, ""

    goto :goto_0
.end method
