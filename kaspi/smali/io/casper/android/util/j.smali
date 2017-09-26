.class public final Lio/casper/android/util/j;
.super Ljava/lang/Object;
.source "StringUtil.java"


# static fields
.field private static final ALLOWED_CHARACTERS:Ljava/lang/String; = "0123456789qwertyuiopasdfghjklzxcvbnm"


# direct methods
.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
