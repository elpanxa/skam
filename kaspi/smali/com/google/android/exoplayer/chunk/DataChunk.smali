.class public abstract Lcom/google/android/exoplayer/chunk/DataChunk;
.super Lcom/google/android/exoplayer/chunk/Chunk;
.source "DataChunk.java"


# static fields
.field private static final READ_GRANULARITY:I = 0x4000


# instance fields
.field private data:[B

.field private limit:I

.field private volatile loadCanceled:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;IILcom/google/android/exoplayer/chunk/Format;[B)V
    .locals 0

    .prologue
    .line 50
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer/chunk/Chunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;IILcom/google/android/exoplayer/chunk/Format;)V

    .line 51
    iput-object p6, p0, Lcom/google/android/exoplayer/chunk/DataChunk;->data:[B

    .line 52
    return-void
.end method

.method private maybeExpandData()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/DataChunk;->data:[B

    if-nez v0, :cond_1

    .line 115
    const/16 v0, 0x4000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/DataChunk;->data:[B

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/DataChunk;->data:[B

    array-length v0, v0

    iget v1, p0, Lcom/google/android/exoplayer/chunk/DataChunk;->limit:I

    add-int/lit16 v1, v1, 0x4000

    if-ge v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/DataChunk;->data:[B

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/DataChunk;->data:[B

    array-length v1, v1

    add-int/lit16 v1, v1, 0x4000

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/DataChunk;->data:[B

    goto :goto_0
.end method


# virtual methods
.method public bytesLoaded()J
    .locals 2

    .prologue
    .line 67
    iget v0, p0, Lcom/google/android/exoplayer/chunk/DataChunk;->limit:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final cancelLoad()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/chunk/DataChunk;->loadCanceled:Z

    .line 75
    return-void
.end method

.method protected abstract consume([BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getDataHolder()[B
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/DataChunk;->data:[B

    return-object v0
.end method

.method public final isLoadCanceled()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/google/android/exoplayer/chunk/DataChunk;->loadCanceled:Z

    return v0
.end method

.method public final load()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/DataChunk;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/DataChunk;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer/upstream/DataSource;->open(Lcom/google/android/exoplayer/upstream/DataSpec;)J

    .line 86
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/exoplayer/chunk/DataChunk;->limit:I

    .line 88
    :cond_0
    :goto_0
    if-eq v0, v4, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer/chunk/DataChunk;->loadCanceled:Z

    if-nez v0, :cond_1

    .line 89
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/DataChunk;->maybeExpandData()V

    .line 90
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/DataChunk;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/DataChunk;->data:[B

    iget v2, p0, Lcom/google/android/exoplayer/chunk/DataChunk;->limit:I

    const/16 v3, 0x4000

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer/upstream/DataSource;->read([BII)I

    move-result v0

    .line 91
    if-eq v0, v4, :cond_0

    .line 92
    iget v1, p0, Lcom/google/android/exoplayer/chunk/DataChunk;->limit:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer/chunk/DataChunk;->limit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/DataChunk;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-interface {v1}, Lcom/google/android/exoplayer/upstream/DataSource;->close()V

    throw v0

    .line 95
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer/chunk/DataChunk;->loadCanceled:Z

    if-nez v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/DataChunk;->data:[B

    iget v1, p0, Lcom/google/android/exoplayer/chunk/DataChunk;->limit:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer/chunk/DataChunk;->consume([BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/DataChunk;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/DataSource;->close()V

    .line 101
    return-void
.end method
