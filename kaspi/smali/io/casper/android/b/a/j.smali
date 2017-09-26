.class public Lio/casper/android/b/a/j;
.super Lio/casper/android/b/a/a/a;
.source "SendSnapEvent.java"


# static fields
.field public static final RESULT_LOGGED_OUT:Ljava/lang/String; = "Logged Out"

.field public static final RESULT_SIZE_LIMIT_EXCEEDED:Ljava/lang/String; = "Size Limit Exceeded"

.field public static final RESULT_SUCCESS:Ljava/lang/String; = "Success"

.field public static final RESULT_UNKNOWN:Ljava/lang/String; = "Unknown Error"

.field public static final TYPE_PHOTO:Ljava/lang/String; = "Photo"

.field public static final TYPE_VIDEO:Ljava/lang/String; = "Video"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lio/casper/android/b/a/a/a;-><init>(Landroid/content/Context;)V

    .line 10
    const-string v0, "Send Snap"

    invoke-super {p0, v0}, Lio/casper/android/b/a/a/a;->d(Ljava/lang/String;)Lio/casper/android/b/a/a/a;

    .line 11
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lio/casper/android/b/a/j;
    .locals 0

    .prologue
    .line 14
    invoke-super {p0, p1}, Lio/casper/android/b/a/a/a;->c(Ljava/lang/String;)Lio/casper/android/b/a/a/a;

    .line 15
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lio/casper/android/b/a/j;
    .locals 0

    .prologue
    .line 19
    invoke-super {p0, p1}, Lio/casper/android/b/a/a/a;->e(Ljava/lang/String;)Lio/casper/android/b/a/a/a;

    .line 20
    return-object p0
.end method
