.class public Lio/casper/android/b/a/c;
.super Lio/casper/android/b/a/a/a;
.source "FontsEvent.java"


# static fields
.field public static final ACTION_DOWNLOAD:Ljava/lang/String; = "Download"

.field public static final ACTION_SELECT:Ljava/lang/String; = "Select"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lio/casper/android/b/a/a/a;-><init>(Landroid/content/Context;)V

    .line 10
    const-string v0, "Fonts"

    invoke-virtual {p0, v0}, Lio/casper/android/b/a/c;->d(Ljava/lang/String;)Lio/casper/android/b/a/a/a;

    .line 11
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lio/casper/android/b/a/c;
    .locals 0

    .prologue
    .line 14
    invoke-super {p0, p1}, Lio/casper/android/b/a/a/a;->c(Ljava/lang/String;)Lio/casper/android/b/a/a/a;

    .line 15
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lio/casper/android/b/a/c;
    .locals 0

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lio/casper/android/b/a/c;->e(Ljava/lang/String;)Lio/casper/android/b/a/a/a;

    .line 20
    return-object p0
.end method

.method public synthetic c(Ljava/lang/String;)Lio/casper/android/b/a/a/a;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lio/casper/android/b/a/c;->b(Ljava/lang/String;)Lio/casper/android/b/a/c;

    move-result-object v0

    return-object v0
.end method
