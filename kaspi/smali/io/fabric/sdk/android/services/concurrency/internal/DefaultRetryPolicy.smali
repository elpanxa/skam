.class public Lio/fabric/sdk/android/services/concurrency/internal/DefaultRetryPolicy;
.super Ljava/lang/Object;
.source "DefaultRetryPolicy.java"

# interfaces
.implements Lio/fabric/sdk/android/services/concurrency/internal/RetryPolicy;


# instance fields
.field private final maxRetries:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/concurrency/internal/DefaultRetryPolicy;-><init>(I)V

    .line 9
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lio/fabric/sdk/android/services/concurrency/internal/DefaultRetryPolicy;->maxRetries:I

    .line 13
    return-void
.end method


# virtual methods
.method public shouldRetry(ILjava/lang/Throwable;)Z
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lio/fabric/sdk/android/services/concurrency/internal/DefaultRetryPolicy;->maxRetries:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
