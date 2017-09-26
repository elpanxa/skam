.class public Lio/casper/android/e/b/a;
.super Lio/casper/android/e/a/d;
.source "BackgroundUpload.java"


# static fields
.field public static final STATE_SENDING:I = 0x3

.field public static final STATE_SENDING_FAILED:I = 0x4

.field public static final STATE_UPLOADING:I = 0x1

.field public static final STATE_UPLOADING_FAILED:I = 0x2

.field public static final STATE_WAITING:I


# instance fields
.field private mGson:Lcom/google/gson/Gson;

.field private sendMediaPayload:Ljava/lang/String;

.field private state:I

.field private timestamp:J

.field private uploadMediaPayload:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lio/casper/android/e/a/d;-><init>()V

    .line 10
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lio/casper/android/e/b/a;->mGson:Lcom/google/gson/Gson;

    .line 19
    return-void
.end method

.method public constructor <init>(Lio/casper/android/n/a/b/b/d;Lio/casper/android/n/a/b/b/a;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lio/casper/android/e/a/d;-><init>()V

    .line 10
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lio/casper/android/e/b/a;->mGson:Lcom/google/gson/Gson;

    .line 23
    iget-object v0, p0, Lio/casper/android/e/b/a;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/e/b/a;->uploadMediaPayload:Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lio/casper/android/e/b/a;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/e/b/a;->sendMediaPayload:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lio/casper/android/e/b/a;->state:I

    .line 27
    return-void
.end method


# virtual methods
.method public a()Lio/casper/android/n/a/b/b/d;
    .locals 3

    .prologue
    .line 30
    iget-object v0, p0, Lio/casper/android/e/b/a;->mGson:Lcom/google/gson/Gson;

    iget-object v1, p0, Lio/casper/android/e/b/a;->uploadMediaPayload:Ljava/lang/String;

    const-class v2, Lio/casper/android/n/a/b/b/d;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/b/b/d;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lio/casper/android/e/b/a;->state:I

    .line 59
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 42
    iput-wide p1, p0, Lio/casper/android/e/b/a;->timestamp:J

    .line 43
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lio/casper/android/e/b/a;->uploadMediaPayload:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public b()Lio/casper/android/n/a/b/b/a;
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lio/casper/android/e/b/a;->mGson:Lcom/google/gson/Gson;

    iget-object v1, p0, Lio/casper/android/e/b/a;->sendMediaPayload:Ljava/lang/String;

    const-class v2, Lio/casper/android/n/a/b/b/a;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/b/b/a;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lio/casper/android/e/b/a;->sendMediaPayload:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public c()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lio/casper/android/e/b/a;->timestamp:J

    return-wide v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lio/casper/android/e/b/a;->state:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 69
    if-ne p0, p1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v0

    .line 70
    :cond_1
    instance-of v2, p1, Lio/casper/android/e/b/a;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 71
    :cond_2
    invoke-super {p0, p1}, Lio/casper/android/e/a/d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 73
    :cond_3
    check-cast p1, Lio/casper/android/e/b/a;

    .line 75
    invoke-virtual {p0}, Lio/casper/android/e/b/a;->g()J

    move-result-wide v2

    invoke-virtual {p1}, Lio/casper/android/e/b/a;->g()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 81
    invoke-super {p0}, Lio/casper/android/e/a/d;->hashCode()I

    move-result v0

    .line 82
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lio/casper/android/e/b/a;->g()J

    move-result-wide v2

    invoke-virtual {p0}, Lio/casper/android/e/b/a;->g()J

    move-result-wide v4

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 83
    return v0
.end method
