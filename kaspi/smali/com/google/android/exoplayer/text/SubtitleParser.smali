.class public interface abstract Lcom/google/android/exoplayer/text/SubtitleParser;
.super Ljava/lang/Object;
.source "SubtitleParser.java"


# virtual methods
.method public abstract canParse(Ljava/lang/String;)Z
.end method

.method public abstract parse(Ljava/io/InputStream;Ljava/lang/String;J)Lcom/google/android/exoplayer/text/Subtitle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
