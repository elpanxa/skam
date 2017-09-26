.class public Lio/casper/android/util/f;
.super Ljava/lang/Object;
.source "MemoryUtil.java"


# static fields
.field private static DIVIDE:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    const-wide/32 v0, 0x100000

    sput-wide v0, Lio/casper/android/util/f;->DIVIDE:J

    return-void
.end method

.method public static a()D
    .locals 4

    .prologue
    .line 25
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    sget-wide v2, Lio/casper/android/util/f;->DIVIDE:J

    div-long/2addr v0, v2

    long-to-double v0, v0

    return-wide v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 38
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    .line 39
    invoke-virtual {v0, v6}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 40
    invoke-virtual {v0, v6}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 42
    const-string v1, "%s Memory: Allocated %sMB of %sMB (%sMB Free)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lio/casper/android/util/f;->a()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {}, Lio/casper/android/util/f;->b()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x3

    invoke-static {}, Lio/casper/android/util/f;->c()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public static b()D
    .locals 4

    .prologue
    .line 29
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    sget-wide v2, Lio/casper/android/util/f;->DIVIDE:J

    div-long/2addr v0, v2

    long-to-double v0, v0

    return-wide v0
.end method

.method public static c()D
    .locals 4

    .prologue
    .line 33
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    sget-wide v2, Lio/casper/android/util/f;->DIVIDE:J

    div-long/2addr v0, v2

    long-to-double v0, v0

    return-wide v0
.end method
