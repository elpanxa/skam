.class public final Lcom/google/android/exoplayer/text/tx3g/Tx3gParser;
.super Ljava/lang/Object;
.source "Tx3gParser.java"

# interfaces
.implements Lcom/google/android/exoplayer/text/SubtitleParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canParse(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 44
    const-string v0, "application/x-quicktime-tx3g"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public parse(Ljava/io/InputStream;Ljava/lang/String;J)Lcom/google/android/exoplayer/text/Subtitle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 38
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 39
    new-instance v1, Lcom/google/android/exoplayer/text/tx3g/Tx3gSubtitle;

    new-instance v2, Lcom/google/android/exoplayer/text/Cue;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer/text/Cue;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v1, p3, p4, v2}, Lcom/google/android/exoplayer/text/tx3g/Tx3gSubtitle;-><init>(JLcom/google/android/exoplayer/text/Cue;)V

    return-object v1
.end method
