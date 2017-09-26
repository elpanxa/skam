.class public final Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;
.super Ljava/lang/Object;
.source "Mp4Extractor.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/Extractor;
.implements Lcom/google/android/exoplayer/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;
    }
.end annotation


# static fields
.field private static final RELOAD_MINIMUM_SEEK_DISTANCE:J = 0x40000L

.field private static final STATE_AFTER_SEEK:I = 0x0

.field private static final STATE_READING_ATOM_HEADER:I = 0x1

.field private static final STATE_READING_ATOM_PAYLOAD:I = 0x2

.field private static final STATE_READING_SAMPLE:I = 0x3


# instance fields
.field private atomData:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private atomHeaderBytesRead:I

.field private atomSize:J

.field private atomType:I

.field private final containerAtoms:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;",
            ">;"
        }
    .end annotation
.end field

.field private extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

.field private final nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final nalStartCode:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private parserState:I

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private sampleSize:I

.field private tracks:[Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 74
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    .line 75
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    sget-object v1, Lcom/google/android/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->nalStartCode:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 76
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 77
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    .line 78
    return-void
.end method

.method private enterReadingAtomHeaderState()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->parserState:I

    .line 157
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 158
    return-void
.end method

.method private getTrackIndexOfEarliestCurrentSample()I
    .locals 7

    .prologue
    .line 361
    const/4 v1, -0x1

    .line 362
    const-wide v2, 0x7fffffffffffffffL

    .line 363
    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 364
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v4, v4, v0

    .line 365
    iget v5, v4, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 366
    iget-object v6, v4, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    iget v6, v6, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-ne v5, v6, :cond_1

    .line 363
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 370
    :cond_1
    iget-object v4, v4, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    iget-object v4, v4, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v4, v4, v5

    .line 371
    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    move-wide v2, v4

    move v1, v0

    .line 373
    goto :goto_1

    .line 377
    :cond_2
    return v1
.end method

.method private processMoovAtom(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 244
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 245
    const-wide v0, 0x7fffffffffffffffL

    move-wide v4, v0

    move v1, v2

    .line 246
    :goto_0
    iget-object v0, p1, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 247
    iget-object v0, p1, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    .line 248
    iget v6, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->type:I

    sget v7, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_trak:I

    if-eq v6, v7, :cond_1

    .line 246
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 252
    :cond_1
    sget v6, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mvhd:I

    invoke-virtual {p1, v6}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseTrak(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;)Lcom/google/android/exoplayer/extractor/mp4/Track;

    move-result-object v6

    .line 253
    if-eqz v6, :cond_0

    .line 257
    sget v7, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mdia:I

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v0

    sget v7, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_minf:I

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v0

    sget v7, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stbl:I

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v0

    .line 259
    invoke-static {v6, v0}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseStbl(Lcom/google/android/exoplayer/extractor/mp4/Track;Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    move-result-object v0

    .line 260
    iget v7, v0, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-eqz v7, :cond_0

    .line 264
    new-instance v7, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v8, v1}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v8

    invoke-direct {v7, v6, v0, v8}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;-><init>(Lcom/google/android/exoplayer/extractor/mp4/Track;Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    .line 265
    iget-object v8, v7, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-object v6, v6, Lcom/google/android/exoplayer/extractor/mp4/Track;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    invoke-interface {v8, v6}, Lcom/google/android/exoplayer/extractor/TrackOutput;->format(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 266
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v6, v0, v2

    .line 269
    cmp-long v0, v6, v4

    if-gez v0, :cond_0

    move-wide v4, v6

    .line 270
    goto :goto_1

    .line 273
    :cond_2
    new-array v0, v2, [Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 274
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v0}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->endTracks()V

    .line 275
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer/extractor/SeekMap;)V

    .line 276
    return-void
.end method

.method private readAtomHeader(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v1, 0x1

    const/16 v8, 0x8

    const/4 v2, 0x0

    .line 161
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    if-nez v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v0, v2, v8, v1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    :goto_0
    return v2

    .line 166
    :cond_0
    iput v8, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 167
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 168
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomSize:J

    .line 169
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomType:I

    .line 172
    :cond_1
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v0, v8, v8}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 176
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 177
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomSize:J

    .line 180
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->shouldParseContainerAtom(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 181
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomSize:J

    add-long/2addr v2, v4

    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v4, v0

    sub-long/2addr v2, v4

    .line 182
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    new-instance v4, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    iget v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-direct {v4, v5, v2, v3}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;-><init>(IJ)V

    invoke-virtual {v0, v4}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    :goto_1
    move v2, v1

    .line 197
    goto :goto_0

    .line 184
    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomType:I

    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->shouldParseLeafAtom(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 187
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    if-ne v0, v8, :cond_4

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 188
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomSize:J

    const-wide/32 v6, 0x7fffffff

    cmp-long v0, v4, v6

    if-gtz v0, :cond_5

    move v0, v1

    :goto_3
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 189
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomSize:J

    long-to-int v3, v4

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 190
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v3, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-static {v0, v2, v3, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    iput v9, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_1

    :cond_4
    move v0, v2

    .line 187
    goto :goto_2

    :cond_5
    move v0, v2

    .line 188
    goto :goto_3

    .line 193
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 194
    iput v9, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_1
.end method

.method private readAtomPayload(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 207
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomSize:J

    iget v2, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    int-to-long v4, v2

    sub-long/2addr v0, v4

    .line 208
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    add-long/2addr v4, v0

    .line 210
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    if-eqz v2, :cond_1

    .line 211
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    iget v6, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    long-to-int v0, v0

    invoke-interface {p1, v2, v6, v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 212
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 213
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    new-instance v1, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    iget v2, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomType:I

    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v1, v2, v6}, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;-><init>(ILcom/google/android/exoplayer/util/ParsableByteArray;)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->add(Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;)V

    move v2, v3

    .line 225
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    iget-wide v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    .line 226
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    .line 227
    iget v1, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->type:I

    sget v6, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_moov:I

    if-ne v1, v6, :cond_3

    .line 229
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->processMoovAtom(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)V

    .line 230
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 231
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->parserState:I

    .line 239
    :goto_1
    return v3

    .line 217
    :cond_1
    const-wide/32 v6, 0x40000

    cmp-long v2, v0, v6

    if-gez v2, :cond_2

    .line 218
    long-to-int v0, v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    move v2, v3

    goto :goto_0

    .line 220
    :cond_2
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    add-long/2addr v0, v6

    iput-wide v0, p2, Lcom/google/android/exoplayer/extractor/PositionHolder;->position:J

    .line 221
    const/4 v0, 0x1

    move v2, v0

    goto :goto_0

    .line 233
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->add(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    .line 238
    :cond_4
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    move v3, v2

    .line 239
    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_0
.end method

.method private readSample(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->getTrackIndexOfEarliestCurrentSample()I

    move-result v0

    .line 297
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 298
    const/4 v0, -0x1

    .line 353
    :goto_0
    return v0

    .line 300
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v0, v1, v0

    .line 301
    iget-object v1, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    .line 302
    iget v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 303
    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    iget-object v2, v2, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v2, v2, v4

    .line 304
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    sub-long v6, v2, v6

    iget v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    int-to-long v8, v5

    add-long/2addr v6, v8

    .line 305
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_1

    const-wide/32 v8, 0x40000

    cmp-long v5, v6, v8

    if-ltz v5, :cond_2

    .line 306
    :cond_1
    iput-wide v2, p2, Lcom/google/android/exoplayer/extractor/PositionHolder;->position:J

    .line 307
    const/4 v0, 0x1

    goto :goto_0

    .line 309
    :cond_2
    long-to-int v2, v6

    invoke-interface {p1, v2}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    .line 310
    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    iget-object v2, v2, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->sizes:[I

    aget v2, v2, v4

    iput v2, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleSize:I

    .line 311
    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lcom/google/android/exoplayer/extractor/mp4/Track;

    iget v2, v2, Lcom/google/android/exoplayer/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 314
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    .line 315
    const/4 v3, 0x0

    const/4 v5, 0x0

    aput-byte v5, v2, v3

    .line 316
    const/4 v3, 0x1

    const/4 v5, 0x0

    aput-byte v5, v2, v3

    .line 317
    const/4 v3, 0x2

    const/4 v5, 0x0

    aput-byte v5, v2, v3

    .line 318
    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lcom/google/android/exoplayer/extractor/mp4/Track;

    iget v2, v2, Lcom/google/android/exoplayer/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    .line 319
    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lcom/google/android/exoplayer/extractor/mp4/Track;

    iget v3, v3, Lcom/google/android/exoplayer/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    rsub-int/lit8 v3, v3, 0x4

    .line 323
    :goto_1
    iget v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    iget v6, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleSize:I

    if-ge v5, v6, :cond_5

    .line 324
    iget v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    if-nez v5, :cond_3

    .line 326
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v5, v5, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v5, v3, v2}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 327
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 328
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    iput v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 330
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->nalStartCode:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 331
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->nalStartCode:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v6, 0x4

    invoke-interface {v1, v5, v6}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 332
    iget v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 333
    iget v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleSize:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleSize:I

    goto :goto_1

    .line 336
    :cond_3
    iget v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    const/4 v6, 0x0

    invoke-interface {v1, p1, v5, v6}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/extractor/ExtractorInput;IZ)I

    move-result v5

    .line 337
    iget v6, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 338
    iget v6, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int v5, v6, v5

    iput v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_1

    .line 342
    :cond_4
    :goto_2
    iget v2, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    iget v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleSize:I

    if-ge v2, v3, :cond_5

    .line 343
    iget v2, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleSize:I

    iget v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/extractor/ExtractorInput;IZ)I

    move-result v2

    .line 344
    iget v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 345
    iget v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int v2, v3, v2

    iput v2, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_2

    .line 348
    :cond_5
    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    iget-object v2, v2, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v2, v2, v4

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    iget-object v5, v5, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->flags:[I

    aget v4, v5, v4

    iget v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleSize:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 350
    iget v1, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 351
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 352
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 353
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private static shouldParseContainerAtom(I)Z
    .locals 1

    .prologue
    .line 393
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_moov:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_trak:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mdia:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_minf:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stbl:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static shouldParseLeafAtom(I)Z
    .locals 1

    .prologue
    .line 382
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mdhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mvhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_hdlr:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_vmhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_smhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stsd:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_avc1:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_avcC:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mp4a:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_esds:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stts:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stss:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_ctts:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stsc:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stsz:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stco:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_co64:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_tkhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_s263:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getPosition(J)J
    .locals 7

    .prologue
    .line 136
    const-wide v2, 0x7fffffffffffffffL

    .line 137
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 138
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v1, v1, v0

    iget-object v4, v1, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    .line 139
    invoke-virtual {v4, p1, p2}, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->getIndexOfEarlierOrEqualSynchronizationSample(J)I

    move-result v1

    .line 140
    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    .line 141
    invoke-virtual {v4, p1, p2}, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v1

    .line 143
    :cond_0
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v5, v5, v0

    iput v1, v5, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    .line 145
    iget-object v1, v4, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->offsets:[J

    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->tracks:[Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->sampleIndex:I

    aget-wide v4, v1, v4

    .line 146
    cmp-long v1, v4, v2

    if-gez v1, :cond_1

    move-wide v2, v4

    .line 137
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_2
    return-wide v2
.end method

.method public init(Lcom/google/android/exoplayer/extractor/ExtractorOutput;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .line 88
    return-void
.end method

.method public isSeekable()Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method public read(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 103
    :cond_0
    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->parserState:I

    packed-switch v0, :pswitch_data_0

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->readSample(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I

    move-result v0

    :goto_1
    return v0

    .line 105
    :pswitch_0
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 106
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_0

    .line 108
    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->parserState:I

    goto :goto_0

    .line 112
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->readAtomHeader(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    const/4 v0, -0x1

    goto :goto_1

    .line 117
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->readAtomPayload(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x1

    goto :goto_1

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public seek()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 93
    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->atomHeaderBytesRead:I

    .line 94
    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleBytesWritten:I

    .line 95
    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 96
    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->parserState:I

    .line 97
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-static {p1}, Lcom/google/android/exoplayer/extractor/mp4/Sniffer;->sniffUnfragmented(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z

    move-result v0

    return v0
.end method
