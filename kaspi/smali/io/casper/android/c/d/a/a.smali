.class public Lio/casper/android/c/d/a/a;
.super Ljava/lang/Exception;
.source "OAuthTokenException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/c/d/a/a$a;
    }
.end annotation


# instance fields
.field private mErrorType:Lio/casper/android/c/d/a/a$a;


# direct methods
.method public constructor <init>(Lio/casper/android/c/d/a/a$a;)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 8
    iput-object p1, p0, Lio/casper/android/c/d/a/a;->mErrorType:Lio/casper/android/c/d/a/a$a;

    .line 9
    return-void
.end method


# virtual methods
.method public a()Lio/casper/android/c/d/a/a$a;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lio/casper/android/c/d/a/a;->mErrorType:Lio/casper/android/c/d/a/a$a;

    return-object v0
.end method
