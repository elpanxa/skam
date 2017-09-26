.class public Lio/casper/android/b/a/d;
.super Lio/casper/android/b/a/a/a;
.source "GoogleLoginEvent.java"


# static fields
.field public static final RESULT_BAD_AUTHENTICATION:Ljava/lang/String; = "BAD_AUTHENTICATION"

.field public static final RESULT_SUCCESS:Ljava/lang/String; = "Success"

.field public static final RESULT_UNKNOWN:Ljava/lang/String; = "Unknown"

.field public static final RESULT_WEB_LOGIN_REQUIRED:Ljava/lang/String; = "WEB_LOGIN_REQUIRED"

.field public static final TYPE_CREDENTIALS:Ljava/lang/String; = "Credentials"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lio/casper/android/b/a/a/a;-><init>(Landroid/content/Context;)V

    .line 10
    const-string v0, "Google Login"

    invoke-super {p0, v0}, Lio/casper/android/b/a/a/a;->d(Ljava/lang/String;)Lio/casper/android/b/a/a/a;

    .line 11
    const-string v0, "Credentials"

    invoke-super {p0, v0}, Lio/casper/android/b/a/a/a;->c(Ljava/lang/String;)Lio/casper/android/b/a/a/a;

    .line 12
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lio/casper/android/b/a/d;
    .locals 0

    .prologue
    .line 15
    invoke-super {p0, p1}, Lio/casper/android/b/a/a/a;->e(Ljava/lang/String;)Lio/casper/android/b/a/a/a;

    .line 16
    return-object p0
.end method
