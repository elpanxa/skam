.class public Lio/fabric/sdk/android/SilentLogger;
.super Ljava/lang/Object;
.source "SilentLogger.java"

# interfaces
.implements Lio/fabric/sdk/android/Logger;


# instance fields
.field private logLevel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x7

    iput v0, p0, Lio/fabric/sdk/android/SilentLogger;->logLevel:I

    .line 13
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public getLogLevel()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lio/fabric/sdk/android/SilentLogger;->logLevel:I

    return v0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public isLoggable(Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public setLogLevel(I)V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 38
    return-void
.end method
