.class public Lcom/supersonicads/sdk/utils/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static enableLogging:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 124
    sget-boolean v0, Lcom/supersonicads/sdk/utils/Logger;->enableLogging:Z

    if-eqz v0, :cond_0

    .line 125
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 140
    sget-boolean v0, Lcom/supersonicads/sdk/utils/Logger;->enableLogging:Z

    if-eqz v0, :cond_0

    .line 141
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 64
    sget-boolean v0, Lcom/supersonicads/sdk/utils/Logger;->enableLogging:Z

    if-eqz v0, :cond_0

    .line 65
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Lcom/supersonicads/sdk/utils/Logger;->enableLogging:Z

    if-eqz v0, :cond_0

    .line 81
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    :cond_0
    return-void
.end method

.method public static enableLogging(I)V
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/supersonicads/sdk/data/SSAEnums$DebugMode;->MODE_0:Lcom/supersonicads/sdk/data/SSAEnums$DebugMode;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/data/SSAEnums$DebugMode;->getValue()I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/supersonicads/sdk/utils/Logger;->enableLogging:Z

    .line 23
    :goto_0
    return-void

    .line 21
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/supersonicads/sdk/utils/Logger;->enableLogging:Z

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/supersonicads/sdk/utils/Logger;->enableLogging:Z

    if-eqz v0, :cond_0

    .line 35
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/supersonicads/sdk/utils/Logger;->enableLogging:Z

    if-eqz v0, :cond_0

    .line 51
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 154
    sget-boolean v0, Lcom/supersonicads/sdk/utils/Logger;->enableLogging:Z

    if-eqz v0, :cond_0

    .line 155
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 170
    sget-boolean v0, Lcom/supersonicads/sdk/utils/Logger;->enableLogging:Z

    if-eqz v0, :cond_0

    .line 171
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 94
    sget-boolean v0, Lcom/supersonicads/sdk/utils/Logger;->enableLogging:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 110
    sget-boolean v0, Lcom/supersonicads/sdk/utils/Logger;->enableLogging:Z

    if-eqz v0, :cond_0

    .line 111
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    :cond_0
    return-void
.end method
