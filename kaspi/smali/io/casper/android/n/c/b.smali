.class public abstract Lio/casper/android/n/c/b;
.super Lio/casper/android/e/a/e;
.source "SnapchatDatabaseTable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/casper/android/e/a/d;",
        ">",
        "Lio/casper/android/e/a/e",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SnapchatDatabaseTable"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lio/casper/android/e/a/e;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public a()Lio/casper/android/e/a/c;
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lio/casper/android/n/c/a;

    invoke-static {}, Lio/casper/android/CasperApplication;->a()Lio/casper/android/CasperApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/casper/android/n/c/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
