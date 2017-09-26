.class public Lio/casper/android/b/a/b;
.super Lio/casper/android/b/a/a/a;
.source "FiltersEvent.java"


# static fields
.field public static final ACTION_SELECT:Ljava/lang/String; = "Select"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lio/casper/android/b/a/a/a;-><init>(Landroid/content/Context;)V

    .line 10
    const-string v0, "Filters"

    invoke-super {p0, v0}, Lio/casper/android/b/a/a/a;->d(Ljava/lang/String;)Lio/casper/android/b/a/a/a;

    .line 11
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lio/casper/android/b/a/b;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0, p1}, Lio/casper/android/b/a/a/a;->c(Ljava/lang/String;)Lio/casper/android/b/a/a/a;

    .line 15
    const-string v0, "Select"

    invoke-super {p0, v0}, Lio/casper/android/b/a/a/a;->e(Ljava/lang/String;)Lio/casper/android/b/a/a/a;

    .line 16
    return-object p0
.end method
