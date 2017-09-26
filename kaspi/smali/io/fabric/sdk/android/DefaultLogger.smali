.class public Lio/fabric/sdk/android/DefaultLogger;
.super Ljava/lang/Object;
.source "DefaultLogger.java"

# interfaces
.implements Lio/fabric/sdk/android/Logger;


# instance fields
.field private logLevel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x4

    iput v0, p0, Lio/fabric/sdk/android/DefaultLogger;->logLevel:I

    .line 17
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lio/fabric/sdk/android/DefaultLogger;->logLevel:I

    .line 13
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lio/fabric/sdk/android/DefaultLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lio/fabric/sdk/android/DefaultLogger;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-static {p1, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lio/fabric/sdk/android/DefaultLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Lio/fabric/sdk/android/DefaultLogger;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    :cond_0
    return-void
.end method

.method public getLogLevel()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lio/fabric/sdk/android/DefaultLogger;->logLevel:I

    return v0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lio/fabric/sdk/android/DefaultLogger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lio/fabric/sdk/android/DefaultLogger;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-static {p1, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    :cond_0
    return-void
.end method

.method public isLoggable(Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lio/fabric/sdk/android/DefaultLogger;->logLevel:I

    if-gt v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/fabric/sdk/android/DefaultLogger;->log(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 97
    return-void
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 101
    if-nez p4, :cond_0

    invoke-virtual {p0, p2, p1}, Lio/fabric/sdk/android/DefaultLogger;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_1
    return-void
.end method

.method public setLogLevel(I)V
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lio/fabric/sdk/android/DefaultLogger;->logLevel:I

    .line 32
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lio/fabric/sdk/android/DefaultLogger;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lio/fabric/sdk/android/DefaultLogger;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-static {p1, p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    :cond_0
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lio/fabric/sdk/android/DefaultLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lio/fabric/sdk/android/DefaultLogger;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    :cond_0
    return-void
.end method
