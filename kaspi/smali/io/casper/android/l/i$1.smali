.class Lio/casper/android/l/i$1;
.super Ljava/lang/Object;
.source "GoogleAuthManager.java"

# interfaces
.implements Lio/casper/android/c/c/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/l/i;->a(Ljava/lang/String;Ljava/lang/String;Lio/casper/android/l/i$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/casper/android/c/c/a/a",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/l/i;


# direct methods
.method constructor <init>(Lio/casper/android/l/i;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lio/casper/android/l/i$1;->this$0:Lio/casper/android/l/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/squareup/okhttp/Response;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 145
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lio/casper/android/l/i$1;->a(Lcom/squareup/okhttp/Response;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/squareup/okhttp/Response;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 155
    return-void
.end method
