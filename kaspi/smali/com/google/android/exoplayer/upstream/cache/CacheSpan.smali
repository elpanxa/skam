.class public final Lcom/google/android/exoplayer/upstream/cache/CacheSpan;
.super Ljava/lang/Object;
.source "CacheSpan.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/exoplayer/upstream/cache/CacheSpan;",
        ">;"
    }
.end annotation


# static fields
.field private static final SUFFIX:Ljava/lang/String; = ".v1.exo"

.field private static final SUFFIX_ESCAPED:Ljava/lang/String; = "\\.v1\\.exo"

.field private static final cacheFilePattern:Ljava/util/regex/Pattern;


# instance fields
.field public final file:Ljava/io/File;

.field public final isCached:Z

.field public final key:Ljava/lang/String;

.field public final lastAccessTimestamp:J

.field public final length:J

.field public final position:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "^(.+)\\.(\\d+)\\.(\\d+)(\\.v1\\.exo)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;->cacheFilePattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;JJZJLjava/io/File;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    .line 99
    iput-wide p2, p0, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;->position:J

    .line 100
    iput-wide p4, p0, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;->length:J

    .line 101
    iput-boolean p6, p0, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;->isCached:Z

    .line 102
    iput-object p9, p0, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;->file:Ljava/io/File;

    .line 103
    iput-wide p7, p0, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;->lastAccessTimestamp:J

    .line 104
    return-void
.end method

.method public static createCacheEntry(Ljava/io/File;)Lcom/google/android/exoplayer/upstream/cache/CacheSpan;
    .locals 7

    .prologue
    .line 82
    sget-object v0, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;->cacheFilePattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 86
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;->createCacheEntry(Ljava/lang/String;JJLjava/io/File;)Lcom/google/android/exoplayer/upstream/cache/CacheSpan;

    move-result-object v0

    goto :goto_0
.end method

.method private static createCacheEntry(Ljava/lang/String;JJLjava/io/File;)Lcom/google/android/exoplayer/upstream/cache/CacheSpan;
    .locals 11

    .prologue
    .line 92
    new-instance v0, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;

    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->length()J

    move-result-wide v4

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-wide v7, p3

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;-><init>(Ljava/lang/String;JJZJLjava/io/File;)V

    return-object v0
.end method

.method public static createClosedHole(Ljava/lang/String;JJ)Lcom/google/android/exoplayer/upstream/cache/CacheSpan;
    .locals 11

    .prologue
    .line 72
    new-instance v0, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;-><init>(Ljava/lang/String;JJZJLjava/io/File;)V

    return-object v0
.end method

.method public static createLookup(Ljava/lang/String;J)Lcom/google/android/exoplayer/upstream/cache/CacheSpan;
    .locals 11

    .prologue
    const-wide/16 v4, -0x1

    .line 64
    new-instance v0, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v7, v4

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;-><init>(Ljava/lang/String;JJZJLjava/io/File;)V

    return-object v0
.end method

.method public static createOpenHole(Ljava/lang/String;J)Lcom/google/android/exoplayer/upstream/cache/CacheSpan;
    .locals 11

    .prologue
    const-wide/16 v4, -0x1

    .line 68
    new-instance v0, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v7, v4

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;-><init>(Ljava/lang/String;JJZJLjava/io/File;)V

    return-object v0
.end method

.method public static getCacheFileName(Ljava/io/File;Ljava/lang/String;JJ)Ljava/io/File;
    .locals 4

    .prologue
    .line 60
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".v1.exo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/google/android/exoplayer/upstream/cache/CacheSpan;)I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 127
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 131
    :goto_0
    return v0

    .line 130
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;->position:J

    iget-wide v2, p1, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;->position:J

    sub-long/2addr v0, v2

    .line 131
    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 26
    check-cast p1, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;->compareTo(Lcom/google/android/exoplayer/upstream/cache/CacheSpan;)I

    move-result v0

    return v0
.end method

.method public isOpenEnded()Z
    .locals 4

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;->length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public touch()Lcom/google/android/exoplayer/upstream/cache/CacheSpan;
    .locals 7

    .prologue
    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 120
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;->position:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;->getCacheFileName(Ljava/io/File;Ljava/lang/String;JJ)Ljava/io/File;

    move-result-object v6

    .line 121
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;->file:Ljava/io/File;

    invoke-virtual {v0, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 122
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;->position:J

    invoke-static/range {v1 .. v6}, Lcom/google/android/exoplayer/upstream/cache/CacheSpan;->createCacheEntry(Ljava/lang/String;JJLjava/io/File;)Lcom/google/android/exoplayer/upstream/cache/CacheSpan;

    move-result-object v0

    return-object v0
.end method
