.class public final Lcom/google/android/exoplayer/text/SubtitleParserHelper;
.super Ljava/lang/Object;
.source "SubtitleParserHelper.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private error:Ljava/io/IOException;

.field private final handler:Landroid/os/Handler;

.field private final parser:Lcom/google/android/exoplayer/text/SubtitleParser;

.field private parsing:Z

.field private result:Lcom/google/android/exoplayer/text/Subtitle;

.field private sampleHolder:Lcom/google/android/exoplayer/SampleHolder;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/google/android/exoplayer/text/SubtitleParser;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->handler:Landroid/os/Handler;

    .line 50
    iput-object p2, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->parser:Lcom/google/android/exoplayer/text/SubtitleParser;

    .line 51
    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->flush()V

    .line 52
    return-void
.end method


# virtual methods
.method public declared-synchronized flush()V
    .locals 2

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/exoplayer/SampleHolder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/SampleHolder;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->parsing:Z

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->result:Lcom/google/android/exoplayer/text/Subtitle;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->error:Ljava/io/IOException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAndClearResult()Lcom/google/android/exoplayer/text/Subtitle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->error:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->error:Ljava/io/IOException;

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->error:Ljava/io/IOException;

    .line 117
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->result:Lcom/google/android/exoplayer/text/Subtitle;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 111
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 114
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->result:Lcom/google/android/exoplayer/text/Subtitle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->error:Ljava/io/IOException;

    .line 117
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->result:Lcom/google/android/exoplayer/text/Subtitle;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getSampleHolder()Lcom/google/android/exoplayer/SampleHolder;
    .locals 1

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 125
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer/SampleHolder;

    .line 127
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, v0, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    iget v5, v0, Lcom/google/android/exoplayer/SampleHolder;->size:I

    invoke-direct {v2, v3, v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 128
    iget-object v3, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->parser:Lcom/google/android/exoplayer/text/SubtitleParser;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-wide v6, v5, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    invoke-interface {v3, v2, v4, v6, v7}, Lcom/google/android/exoplayer/text/SubtitleParser;->parse(Ljava/io/InputStream;Ljava/lang/String;J)Lcom/google/android/exoplayer/text/Subtitle;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 134
    :goto_0
    monitor-enter p0

    .line 135
    :try_start_1
    iget-object v3, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    if-eq v3, v0, :cond_0

    .line 142
    :goto_1
    monitor-exit p0

    .line 143
    const/4 v0, 0x1

    return v0

    .line 130
    :catch_0
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    .line 132
    goto :goto_0

    .line 138
    :cond_0
    iput-object v2, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->result:Lcom/google/android/exoplayer/text/Subtitle;

    .line 139
    iput-object v1, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->error:Ljava/io/IOException;

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->parsing:Z

    goto :goto_1

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized isParsing()Z
    .locals 1

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->parsing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startParseOperation()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 93
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->parsing:Z

    if-nez v2, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->parsing:Z

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->result:Lcom/google/android/exoplayer/text/Subtitle;

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->error:Ljava/io/IOException;

    .line 97
    iget-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    :cond_0
    move v0, v1

    .line 93
    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
