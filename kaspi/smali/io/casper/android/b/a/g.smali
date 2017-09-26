.class public Lio/casper/android/b/a/g;
.super Lio/casper/android/b/a/a/a;
.source "MultipleAccountsEvent.java"


# static fields
.field public static final ACTION_ADD:Ljava/lang/String; = "Add"

.field public static final ACTION_REMOVE_ALL:Ljava/lang/String; = "Remove All"

.field public static final ACTION_SWITCH:Ljava/lang/String; = "Switch"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lio/casper/android/b/a/a/a;-><init>(Landroid/content/Context;)V

    .line 10
    const-string v0, "Multiple Accounts"

    invoke-super {p0, v0}, Lio/casper/android/b/a/a/a;->d(Ljava/lang/String;)Lio/casper/android/b/a/a/a;

    .line 11
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lio/casper/android/b/a/g;
    .locals 0

    .prologue
    .line 14
    invoke-super {p0, p1}, Lio/casper/android/b/a/a/a;->c(Ljava/lang/String;)Lio/casper/android/b/a/a/a;

    .line 15
    return-object p0
.end method

.method public synthetic c(Ljava/lang/String;)Lio/casper/android/b/a/a/a;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lio/casper/android/b/a/g;->a(Ljava/lang/String;)Lio/casper/android/b/a/g;

    move-result-object v0

    return-object v0
.end method
