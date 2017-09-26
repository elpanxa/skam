.class public final Lcom/adsdk/sdk/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static LOGGING_ENABLED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adsdk/sdk/Log;->LOGGING_ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 27
    const-string v0, "ADSDK"

    invoke-static {v0, p0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const-string v0, "ADSDK"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 47
    const-string v0, "ADSDK"

    invoke-static {v0, p0}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const-string v0, "ADSDK"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 66
    const-string v0, "ADSDK"

    invoke-static {v0, p0}, Lcom/adsdk/sdk/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const-string v0, "ADSDK"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    :cond_0
    return-void
.end method

.method private static isLoggingEnabled()Z
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lcom/adsdk/sdk/Log;->LOGGING_ENABLED:Z

    return v0
.end method

.method public static isLoggingEnabled(Landroid/content/Context;)Z
    .locals 4

    .prologue
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "adsdk_debug_enabled"

    const-string v2, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 14
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 18
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 85
    const-string v0, "ADSDK"

    invoke-static {v0, p0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "ADSDK"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 104
    const-string v0, "ADSDK"

    invoke-static {v0, p0}, Lcom/adsdk/sdk/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 108
    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 113
    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 118
    invoke-static {}, Lcom/adsdk/sdk/Log;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const-string v0, "ADSDK"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    :cond_0
    return-void
.end method
