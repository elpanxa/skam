.class public Lio/casper/android/c/c/g/a;
.super Ljava/lang/Object;
.source "SynchronousResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mParsedResponse:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mResponse:Lcom/squareup/okhttp/Response;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/Response;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/okhttp/Response;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lio/casper/android/c/c/g/a;->mResponse:Lcom/squareup/okhttp/Response;

    .line 12
    iput-object p2, p0, Lio/casper/android/c/c/g/a;->mParsedResponse:Ljava/lang/Object;

    .line 13
    return-void
.end method


# virtual methods
.method public a()Lcom/squareup/okhttp/Response;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lio/casper/android/c/c/g/a;->mResponse:Lcom/squareup/okhttp/Response;

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lio/casper/android/c/c/g/a;->mParsedResponse:Ljava/lang/Object;

    return-object v0
.end method
