.class abstract Lorg/altbeacon/beacon/logging/AbstractAndroidLogger;
.super Ljava/lang/Object;
.source "AbstractAndroidLogger.java"

# interfaces
.implements Lorg/altbeacon/beacon/logging/Logger;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 6
    array-length v0, p2

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
