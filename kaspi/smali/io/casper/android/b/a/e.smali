.class public Lio/casper/android/b/a/e;
.super Lio/casper/android/b/a/a/a;
.source "ImojiEvent.java"


# static fields
.field public static final ACTION_ADD:Ljava/lang/String; = "Add"

.field public static final TYPE_BLANK:Ljava/lang/String; = "Blank"

.field public static final TYPE_PHOTO:Ljava/lang/String; = "Photo"

.field public static final TYPE_VIDEO:Ljava/lang/String; = "Video"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lio/casper/android/b/a/a/a;-><init>(Landroid/content/Context;)V

    .line 10
    const-string v0, "Imoji"

    invoke-virtual {p0, v0}, Lio/casper/android/b/a/e;->d(Ljava/lang/String;)Lio/casper/android/b/a/a/a;

    .line 11
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lio/casper/android/b/a/e;
    .locals 0

    .prologue
    .line 14
    invoke-super {p0, p1}, Lio/casper/android/b/a/a/a;->c(Ljava/lang/String;)Lio/casper/android/b/a/a/a;

    .line 15
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lio/casper/android/b/a/e;
    .locals 0

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lio/casper/android/b/a/e;->e(Ljava/lang/String;)Lio/casper/android/b/a/a/a;

    .line 20
    return-object p0
.end method

.method public synthetic c(Ljava/lang/String;)Lio/casper/android/b/a/a/a;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lio/casper/android/b/a/e;->b(Ljava/lang/String;)Lio/casper/android/b/a/e;

    move-result-object v0

    return-object v0
.end method
