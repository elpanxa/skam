.class public Lio/casper/android/c/c/b/a;
.super Ljava/lang/Exception;
.source "SynchronousException.java"


# instance fields
.field private mResponse:Lcom/squareup/okhttp/Response;

.field private mThrowable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lio/casper/android/c/c/b/a;->mResponse:Lcom/squareup/okhttp/Response;

    .line 13
    iput-object p2, p0, Lio/casper/android/c/c/b/a;->mThrowable:Ljava/lang/Throwable;

    .line 14
    return-void
.end method


# virtual methods
.method public a()Lcom/squareup/okhttp/Response;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lio/casper/android/c/c/b/a;->mResponse:Lcom/squareup/okhttp/Response;

    return-object v0
.end method

.method public b()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lio/casper/android/c/c/b/a;->mThrowable:Ljava/lang/Throwable;

    return-object v0
.end method
