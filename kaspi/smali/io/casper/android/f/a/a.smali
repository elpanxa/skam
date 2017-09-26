.class public Lio/casper/android/f/a/a;
.super Lio/casper/android/f/a/b;
.source "FileLogger.java"


# direct methods
.method public static a(Ljava/lang/String;Ljava/io/File;)V
    .locals 4

    .prologue
    .line 8
    const-string v0, "Failed to delete File: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lio/casper/android/f/a/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    return-void
.end method
