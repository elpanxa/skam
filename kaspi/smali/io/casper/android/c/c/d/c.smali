.class public Lio/casper/android/c/c/d/c;
.super Ljava/lang/Object;
.source "NoResponseParser.java"

# interfaces
.implements Lio/casper/android/c/c/d/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/casper/android/c/c/d/d",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method


# virtual methods
.method public a(Lcom/squareup/okhttp/ResponseBody;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 13
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic b(Lcom/squareup/okhttp/ResponseBody;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Lio/casper/android/c/c/d/c;->a(Lcom/squareup/okhttp/ResponseBody;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
