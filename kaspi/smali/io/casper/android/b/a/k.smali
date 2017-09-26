.class public Lio/casper/android/b/a/k;
.super Lio/casper/android/b/a/a/a;
.source "SnapchatLoginEvent.java"


# static fields
.field public static final RESULT_AUTH_TOKEN_INVALID:Ljava/lang/String; = "Auth Token Invalid"

.field public static final RESULT_ROOT_ACCESS_UNAVAILABLE:Ljava/lang/String; = "No Root Access"

.field public static final RESULT_ROOT_SESSION_UNAVAILABLE:Ljava/lang/String; = "Root: No Snapchat Session"

.field public static final RESULT_SUCCESS:Ljava/lang/String; = "Success"

.field public static final TYPE_AUTH_TOKEN:Ljava/lang/String; = "Auth Token"

.field public static final TYPE_CREDENTIALS:Ljava/lang/String; = "Credentials"

.field public static final TYPE_HTTP_CODE:Ljava/lang/String; = "HTTP Code"

.field public static final TYPE_ROOT_ACCESS:Ljava/lang/String; = "Root Access"

.field public static final TYPE_SNAPCHAT_STATUS_CODE:Ljava/lang/String; = "Snapchat Status Code"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lio/casper/android/b/a/a/a;-><init>(Landroid/content/Context;)V

    .line 10
    const-string v0, "Snapchat Login"

    invoke-super {p0, v0}, Lio/casper/android/b/a/a/a;->d(Ljava/lang/String;)Lio/casper/android/b/a/a/a;

    .line 11
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lio/casper/android/b/a/k;
    .locals 0

    .prologue
    .line 14
    invoke-super {p0, p1}, Lio/casper/android/b/a/a/a;->c(Ljava/lang/String;)Lio/casper/android/b/a/a/a;

    .line 15
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lio/casper/android/b/a/k;
    .locals 0

    .prologue
    .line 19
    invoke-super {p0, p1}, Lio/casper/android/b/a/a/a;->e(Ljava/lang/String;)Lio/casper/android/b/a/a/a;

    .line 20
    return-object p0
.end method
