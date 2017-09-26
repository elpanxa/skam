.class public final Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/Extractor;


# static fields
.field private static final PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

.field private static final STATE_READING_ATOM_HEADER:I = 0x0

.field private static final STATE_READING_ATOM_PAYLOAD:I = 0x1

.field private static final STATE_READING_ENCRYPTION_DATA:I = 0x2

.field private static final STATE_READING_SAMPLE_CONTINUE:I = 0x4

.field private static final STATE_READING_SAMPLE_START:I = 0x3

.field public static final WORKAROUND_EVERY_VIDEO_FRAME_IS_SYNC_FRAME:I = 0x1


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

.field private final encryptionSignalByte:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final extendedTypeScratch:[B

.field private extendsDefaults:Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;

.field private extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

.field private final fragmentRun:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

.field private haveOutputSeekMap:Z

.field private final nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final nalStartCode:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private parserState:I

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private sampleIndex:I

.field private sampleSize:I

.field private track:Lcom/google/android/exoplayer/extractor/mp4/Track;

.field private trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

.field private final workaroundFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

    return-void

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;-><init>(I)V

    .line 103
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput p1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->workaroundFlags:I

    .line 111
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 112
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    sget-object v1, Lcom/google/android/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 113
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 114
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->encryptionSignalByte:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 115
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extendedTypeScratch:[B

    .line 116
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    .line 117
    new-instance v0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    invoke-direct {v0}, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    .line 118
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 119
    return-void
.end method

.method private appendSampleEncryptionData(Lcom/google/android/exoplayer/util/ParsableByteArray;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 691
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->track:Lcom/google/android/exoplayer/extractor/mp4/Track;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iget v2, v2, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleDescriptionIndex:I

    aget-object v0, v0, v2

    .line 693
    iget v2, v0, Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;->initializationVectorSize:I

    .line 694
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    iget v3, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleIndex:I

    aget-boolean v3, v0, v3

    .line 697
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->encryptionSignalByte:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v4, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    if-eqz v3, :cond_0

    const/16 v0, 0x80

    :goto_0
    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, v4, v1

    .line 698
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->encryptionSignalByte:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 699
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->encryptionSignalByte:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v4, 0x1

    invoke-interface {v0, v1, v4}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 701
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    invoke-interface {v0, p1, v2}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 703
    if-nez v3, :cond_1

    .line 704
    add-int/lit8 v0, v2, 0x1

    .line 711
    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 697
    goto :goto_0

    .line 707
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    .line 708
    const/4 v1, -0x2

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 709
    mul-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, 0x2

    .line 710
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 711
    add-int/lit8 v1, v2, 0x1

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method private enterReadingAtomHeaderState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 178
    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 179
    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    .line 180
    return-void
.end method

.method private onContainerAtomRead(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)V
    .locals 2

    .prologue
    .line 265
    iget v0, p1, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->type:I

    sget v1, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_moov:I

    if-ne v0, v1, :cond_1

    .line 266
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->onMoovContainerAtomRead(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)V

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    iget v0, p1, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->type:I

    sget v1, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_moof:I

    if-ne v0, v1, :cond_2

    .line 268
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->onMoofContainerAtomRead(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->add(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0
.end method

.method private onLeafAtomRead(Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;J)V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->add(Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;)V

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iget v0, p1, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->type:I

    sget v1, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_sidx:I

    if-ne v0, v1, :cond_0

    .line 258
    iget-object v0, p1, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v0, p2, p3}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseSidx(Lcom/google/android/exoplayer/util/ParsableByteArray;J)Lcom/google/android/exoplayer/extractor/ChunkIndex;

    move-result-object v0

    .line 259
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer/extractor/SeekMap;)V

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    goto :goto_0
.end method

.method private onMoofContainerAtomRead(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)V
    .locals 6

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->reset()V

    .line 303
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->track:Lcom/google/android/exoplayer/extractor/mp4/Track;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extendsDefaults:Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iget v4, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->workaroundFlags:I

    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extendedTypeScratch:[B

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseMoof(Lcom/google/android/exoplayer/extractor/mp4/Track;Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;I[B)V

    .line 304
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleIndex:I

    .line 305
    return-void
.end method

.method private onMoovContainerAtomRead(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 275
    iget-object v4, p1, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    .line 276
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 278
    const/4 v1, 0x0

    move v3, v2

    .line 279
    :goto_0
    if-ge v3, v5, :cond_2

    .line 280
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    .line 281
    iget v6, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->type:I

    sget v7, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_pssh:I

    if-ne v6, v7, :cond_1

    .line 282
    if-nez v1, :cond_0

    .line 283
    new-instance v1, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;

    const-string v6, "video/mp4"

    invoke-direct {v1, v6}, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;-><init>(Ljava/lang/String;)V

    .line 285
    :cond_0
    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    .line 286
    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/mp4/PsshAtomUtil;->parseUuid([B)Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v1, v6, v0}, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;->put(Ljava/util/UUID;[B)V

    .line 279
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 289
    :cond_2
    if-eqz v1, :cond_3

    .line 290
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->drmInitData(Lcom/google/android/exoplayer/drm/DrmInitData;)V

    .line 293
    :cond_3
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mvex:I

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v0

    .line 294
    sget v1, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_trex:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseTrex(Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extendsDefaults:Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;

    .line 295
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_trak:I

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v0

    sget v1, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mvhd:I

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseTrak(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;)Lcom/google/android/exoplayer/extractor/mp4/Track;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->track:Lcom/google/android/exoplayer/extractor/mp4/Track;

    .line 297
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->track:Lcom/google/android/exoplayer/extractor/mp4/Track;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 298
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->track:Lcom/google/android/exoplayer/extractor/mp4/Track;

    iget-object v1, v1, Lcom/google/android/exoplayer/extractor/mp4/Track;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/extractor/TrackOutput;->format(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 299
    return-void

    :cond_4
    move v0, v2

    .line 297
    goto :goto_1
.end method

.method private static parseMoof(Lcom/google/android/exoplayer/extractor/mp4/Track;Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;I[B)V
    .locals 6

    .prologue
    .line 322
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_traf:I

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseTraf(Lcom/google/android/exoplayer/extractor/mp4/Track;Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;I[B)V

    .line 324
    return-void
.end method

.method private static parseSaiz(Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;)V
    .locals 9

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 364
    iget v5, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;->initializationVectorSize:I

    .line 365
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 366
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 367
    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v0

    .line 368
    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 369
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 371
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 373
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    .line 374
    iget v3, p2, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->length:I

    if-eq v6, v3, :cond_1

    .line 375
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length mismatch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_1
    if-nez v0, :cond_3

    .line 380
    iget-object v7, p2, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    move v3, v2

    move v0, v2

    .line 381
    :goto_0
    if-ge v3, v6, :cond_4

    .line 382
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 383
    add-int v4, v0, v8

    .line 384
    if-le v8, v5, :cond_2

    move v0, v1

    :goto_1
    aput-boolean v0, v7, v3

    .line 381
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v2

    .line 384
    goto :goto_1

    .line 387
    :cond_3
    if-le v0, v5, :cond_5

    .line 388
    :goto_2
    mul-int/2addr v0, v6

    add-int/2addr v0, v2

    .line 389
    iget-object v3, p2, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    invoke-static {v3, v2, v6, v1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 391
    :cond_4
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->initEncryptionData(I)V

    .line 392
    return-void

    :cond_5
    move v1, v2

    .line 387
    goto :goto_2
.end method

.method private static parseSenc(Lcom/google/android/exoplayer/util/ParsableByteArray;ILcom/google/android/exoplayer/extractor/mp4/TrackFragment;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 527
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 528
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 529
    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v0

    .line 531
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    .line 533
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Overriding TrackEncryptionBox parameters is unsupported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 536
    :cond_0
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 537
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    .line 538
    iget v3, p2, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->length:I

    if-eq v2, v3, :cond_2

    .line 539
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Length mismatch: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v1

    .line 536
    goto :goto_0

    .line 542
    :cond_2
    iget-object v3, p2, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    invoke-static {v3, v1, v2, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 543
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->initEncryptionData(I)V

    .line 544
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->fillEncryptionData(Lcom/google/android/exoplayer/util/ParsableByteArray;)V

    .line 545
    return-void
.end method

.method private static parseSenc(Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;)V
    .locals 1

    .prologue
    .line 523
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Lcom/google/android/exoplayer/util/ParsableByteArray;ILcom/google/android/exoplayer/extractor/mp4/TrackFragment;)V

    .line 524
    return-void
.end method

.method private static parseSidx(Lcom/google/android/exoplayer/util/ParsableByteArray;J)Lcom/google/android/exoplayer/extractor/ChunkIndex;
    .locals 23

    .prologue
    .line 551
    const/16 v4, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 552
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 553
    invoke-static {v4}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v4

    .line 555
    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 556
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    .line 559
    if-nez v4, :cond_0

    .line 560
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    .line 561
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    add-long v4, v4, p1

    move-wide v10, v4

    move-wide v4, v6

    .line 567
    :goto_0
    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 569
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v16

    .line 570
    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 571
    move/from16 v0, v16

    new-array v0, v0, [J

    move-object/from16 v18, v0

    .line 572
    move/from16 v0, v16

    new-array v0, v0, [J

    move-object/from16 v19, v0

    .line 573
    move/from16 v0, v16

    new-array v0, v0, [J

    move-object/from16 v20, v0

    .line 576
    const-wide/32 v6, 0xf4240

    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v12

    .line 577
    const/4 v6, 0x0

    move-wide v14, v10

    move v10, v6

    move-wide v6, v4

    move-wide v4, v12

    :goto_1
    move/from16 v0, v16

    if-ge v10, v0, :cond_2

    .line 578
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v11

    .line 580
    const/high16 v12, -0x80000000

    and-int/2addr v12, v11

    .line 581
    if-eqz v12, :cond_1

    .line 582
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unhandled indirect reference"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 563
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    .line 564
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v4

    add-long v4, v4, p1

    move-wide v10, v4

    move-wide v4, v6

    goto :goto_0

    .line 584
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v12

    .line 586
    const v21, 0x7fffffff

    and-int v11, v11, v21

    aput v11, v17, v10

    .line 587
    aput-wide v14, v18, v10

    .line 591
    aput-wide v4, v20, v10

    .line 592
    add-long v4, v6, v12

    .line 593
    const-wide/32 v6, 0xf4240

    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v12

    .line 594
    aget-wide v6, v20, v10

    sub-long v6, v12, v6

    aput-wide v6, v19, v10

    .line 596
    const/4 v6, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 597
    aget v6, v17, v10

    int-to-long v6, v6

    add-long/2addr v14, v6

    .line 577
    add-int/lit8 v6, v10, 0x1

    move v10, v6

    move-wide v6, v4

    move-wide v4, v12

    goto :goto_1

    .line 600
    :cond_2
    new-instance v4, Lcom/google/android/exoplayer/extractor/ChunkIndex;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/exoplayer/extractor/ChunkIndex;-><init>([I[J[J[J)V

    return-object v4
.end method

.method private static parseTfdt(Lcom/google/android/exoplayer/util/ParsableByteArray;)J
    .locals 2

    .prologue
    .line 431
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 432
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 433
    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v0

    .line 434
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    goto :goto_0
.end method

.method private static parseTfhd(Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;
    .locals 5

    .prologue
    const/16 v1, 0x8

    .line 402
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 403
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 404
    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v4

    .line 406
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 407
    and-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 411
    :cond_0
    and-int/lit8 v0, v4, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    .line 414
    :goto_0
    and-int/lit8 v0, v4, 0x8

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    move v2, v0

    .line 416
    :goto_1
    and-int/lit8 v0, v4, 0x10

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    move v1, v0

    .line 418
    :goto_2
    and-int/lit8 v0, v4, 0x20

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 420
    :goto_3
    new-instance v4, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;

    invoke-direct {v4, v3, v2, v1, v0}, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    return-object v4

    .line 411
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    move v3, v0

    goto :goto_0

    .line 414
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;->duration:I

    move v2, v0

    goto :goto_1

    .line 416
    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;->size:I

    move v1, v0

    goto :goto_2

    .line 418
    :cond_4
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;->flags:I

    goto :goto_3
.end method

.method private static parseTraf(Lcom/google/android/exoplayer/extractor/mp4/Track;Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;I[B)V
    .locals 7

    .prologue
    .line 331
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_tfdt:I

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    .line 332
    if-nez v0, :cond_3

    const-wide/16 v2, 0x0

    .line 334
    :goto_0
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_tfhd:I

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    .line 335
    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseTfhd(Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;

    move-result-object v1

    .line 336
    iget v0, v1, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    iput v0, p3, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleDescriptionIndex:I

    .line 338
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_trun:I

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    .line 339
    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object v0, p0

    move v4, p4

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseTrun(Lcom/google/android/exoplayer/extractor/mp4/Track;Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;JILcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;)V

    .line 341
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_saiz:I

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    .line 342
    if-eqz v0, :cond_0

    .line 343
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    iget v1, v1, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    aget-object v1, v2, v1

    .line 345
    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v1, v0, p3}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseSaiz(Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;)V

    .line 348
    :cond_0
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_senc:I

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    .line 349
    if-eqz v0, :cond_1

    .line 350
    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v0, p3}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;)V

    .line 353
    :cond_1
    iget-object v0, p2, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 354
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_4

    .line 355
    iget-object v0, p2, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    .line 356
    iget v3, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->type:I

    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_uuid:I

    if-ne v3, v4, :cond_2

    .line 357
    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v0, p3, p5}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseUuid(Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;[B)V

    .line 354
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 332
    :cond_3
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_tfdt:I

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseTfdt(Lcom/google/android/exoplayer/util/ParsableByteArray;)J

    move-result-wide v2

    goto :goto_0

    .line 360
    :cond_4
    return-void
.end method

.method private static parseTrex(Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;
    .locals 5

    .prologue
    .line 311
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 312
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 313
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 314
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    .line 315
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 316
    new-instance v4, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    return-object v4
.end method

.method private static parseTrun(Lcom/google/android/exoplayer/extractor/mp4/Track;Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;JILcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;)V
    .locals 22

    .prologue
    .line 448
    const/16 v2, 0x8

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 449
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 450
    invoke-static {v2}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v4

    .line 452
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v13

    .line 453
    and-int/lit8 v2, v4, 0x1

    if-eqz v2, :cond_0

    .line 454
    const/4 v2, 0x4

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 457
    :cond_0
    and-int/lit8 v2, v4, 0x4

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    .line 458
    :goto_0
    move-object/from16 v0, p1

    iget v6, v0, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;->flags:I

    .line 459
    if-eqz v2, :cond_1

    .line 460
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    .line 463
    :cond_1
    and-int/lit16 v3, v4, 0x100

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    move v12, v3

    .line 464
    :goto_1
    and-int/lit16 v3, v4, 0x200

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    move v11, v3

    .line 465
    :goto_2
    and-int/lit16 v3, v4, 0x400

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    move v10, v3

    .line 466
    :goto_3
    and-int/lit16 v3, v4, 0x800

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    .line 469
    :goto_4
    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->initTables(I)V

    .line 470
    move-object/from16 v0, p6

    iget-object v14, v0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    .line 471
    move-object/from16 v0, p6

    iget-object v15, v0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleCompositionTimeOffsetTable:[I

    .line 472
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleDecodingTimeTable:[J

    move-object/from16 v16, v0

    .line 473
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    move-object/from16 v17, v0

    .line 475
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->timescale:J

    move-wide/from16 v18, v0

    .line 477
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->type:I

    sget v5, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_VIDEO:I

    if-ne v4, v5, :cond_8

    and-int/lit8 v4, p4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    const/4 v4, 0x1

    .line 480
    :goto_5
    const/4 v5, 0x0

    move v9, v5

    :goto_6
    if-ge v9, v13, :cond_f

    .line 482
    if-eqz v12, :cond_9

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    move v8, v5

    .line 484
    :goto_7
    if-eqz v11, :cond_a

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    move v7, v5

    .line 485
    :goto_8
    if-nez v9, :cond_b

    if-eqz v2, :cond_b

    move v5, v6

    .line 487
    :goto_9
    if-eqz v3, :cond_d

    .line 493
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v20

    .line 494
    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    div-long v20, v20, v18

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    aput v20, v15, v9

    .line 498
    :goto_a
    const-wide/16 v20, 0x3e8

    mul-long v20, v20, p2

    div-long v20, v20, v18

    aput-wide v20, v16, v9

    .line 499
    aput v7, v14, v9

    .line 500
    shr-int/lit8 v5, v5, 0x10

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_e

    if-eqz v4, :cond_2

    if-nez v9, :cond_e

    :cond_2
    const/4 v5, 0x1

    :goto_b
    aput-boolean v5, v17, v9

    .line 502
    int-to-long v0, v8

    move-wide/from16 v20, v0

    add-long p2, p2, v20

    .line 480
    add-int/lit8 v5, v9, 0x1

    move v9, v5

    goto :goto_6

    .line 457
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 463
    :cond_4
    const/4 v3, 0x0

    move v12, v3

    goto/16 :goto_1

    .line 464
    :cond_5
    const/4 v3, 0x0

    move v11, v3

    goto/16 :goto_2

    .line 465
    :cond_6
    const/4 v3, 0x0

    move v10, v3

    goto/16 :goto_3

    .line 466
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 477
    :cond_8
    const/4 v4, 0x0

    goto :goto_5

    .line 482
    :cond_9
    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;->duration:I

    move v8, v5

    goto :goto_7

    .line 484
    :cond_a
    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;->size:I

    move v7, v5

    goto :goto_8

    .line 485
    :cond_b
    if-eqz v10, :cond_c

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v5

    goto :goto_9

    :cond_c
    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;->flags:I

    goto :goto_9

    .line 496
    :cond_d
    const/16 v20, 0x0

    aput v20, v15, v9

    goto :goto_a

    .line 500
    :cond_e
    const/4 v5, 0x0

    goto :goto_b

    .line 504
    :cond_f
    return-void
.end method

.method private static parseUuid(Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;[B)V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 508
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 509
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 512
    sget-object v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    :goto_0
    return-void

    .line 519
    :cond_0
    invoke-static {p0, v1, p1}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Lcom/google/android/exoplayer/util/ParsableByteArray;ILcom/google/android/exoplayer/extractor/mp4/TrackFragment;)V

    goto :goto_0
.end method

.method private readAtomHeader(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/32 v10, 0x7fffffff

    const/16 v8, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 183
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    if-nez v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v0, v2, v8, v1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    .line 236
    :goto_0
    return v1

    .line 188
    :cond_0
    iput v8, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    .line 189
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 190
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    .line 191
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    .line 194
    :cond_1
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v0, v8, v8}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 198
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    .line 199
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    .line 202
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mdat:I

    if-ne v0, v3, :cond_5

    .line 203
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    if-nez v0, :cond_3

    .line 204
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    sget-object v2, Lcom/google/android/exoplayer/extractor/SeekMap;->UNSEEKABLE:Lcom/google/android/exoplayer/extractor/SeekMap;

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer/extractor/SeekMap;)V

    .line 205
    iput-boolean v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    .line 207
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iget-boolean v0, v0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    if-eqz v0, :cond_4

    .line 208
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    goto :goto_0

    .line 210
    :cond_4
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    goto :goto_0

    .line 215
    :cond_5
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->shouldParseAtom(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 216
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->shouldParseContainerAtom(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 217
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    add-long/2addr v2, v4

    const-wide/16 v4, 0x8

    sub-long/2addr v2, v4

    .line 218
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    new-instance v4, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    iget v5, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-direct {v4, v5, v2, v3}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;-><init>(IJ)V

    invoke-virtual {v0, v4}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_0

    .line 223
    :cond_6
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    if-ne v0, v8, :cond_7

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 224
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    cmp-long v0, v4, v10

    if-gtz v0, :cond_8

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 225
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    long-to-int v3, v4

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 226
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v3, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-static {v0, v2, v3, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 223
    goto :goto_1

    :cond_8
    move v0, v2

    .line 224
    goto :goto_2

    .line 231
    :cond_9
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    cmp-long v0, v4, v10

    if-gtz v0, :cond_a

    move v2, v1

    :cond_a
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 233
    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    goto/16 :goto_0
.end method

.method private readAtomPayload(Lcom/google/android/exoplayer/extractor/ExtractorInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 240
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    long-to-int v0, v0

    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    sub-int/2addr v0, v1

    .line 241
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/16 v2, 0x8

    invoke-interface {p1, v1, v2, v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 243
    new-instance v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;-><init>(ILcom/google/android/exoplayer/util/ParsableByteArray;)V

    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->onLeafAtomRead(Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;J)V

    .line 247
    :goto_0
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    .line 248
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    iget-wide v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->onContainerAtomRead(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_1

    .line 245
    :cond_0
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_0

    .line 251
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 252
    return-void
.end method

.method private readEncryptionData(Lcom/google/android/exoplayer/extractor/ExtractorInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 604
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->fillEncryptionData(Lcom/google/android/exoplayer/extractor/ExtractorInput;)V

    .line 605
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 606
    return-void
.end method

.method private readSample(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v9, 0x3

    const/4 v0, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 623
    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleIndex:I

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iget v2, v2, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->length:I

    if-lt v1, v2, :cond_0

    .line 625
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 687
    :goto_0
    return v6

    .line 629
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    if-ne v1, v9, :cond_1

    .line 630
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iget-object v1, v1, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    iget v2, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleIndex:I

    aget v1, v1, v2

    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 631
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iget-boolean v1, v1, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    if-eqz v1, :cond_2

    .line 632
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iget-object v1, v1, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleEncryptionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->appendSampleEncryptionData(Lcom/google/android/exoplayer/util/ParsableByteArray;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 633
    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    iget v2, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 637
    :goto_1
    iput v6, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 638
    iput v5, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 641
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->track:Lcom/google/android/exoplayer/extractor/mp4/Track;

    iget v1, v1, Lcom/google/android/exoplayer/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 644
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    .line 645
    aput-byte v6, v1, v6

    .line 646
    aput-byte v6, v1, v8

    .line 647
    aput-byte v6, v1, v0

    .line 648
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->track:Lcom/google/android/exoplayer/extractor/mp4/Track;

    iget v1, v1, Lcom/google/android/exoplayer/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    .line 649
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->track:Lcom/google/android/exoplayer/extractor/mp4/Track;

    iget v2, v2, Lcom/google/android/exoplayer/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    rsub-int/lit8 v2, v2, 0x4

    .line 653
    :goto_2
    iget v3, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    iget v4, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    if-ge v3, v4, :cond_5

    .line 654
    iget v3, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    if-nez v3, :cond_3

    .line 656
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v3, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v3, v2, v1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 657
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 658
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 660
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 661
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-interface {v3, v4, v5}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 662
    iget v3, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 663
    iget v3, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    goto :goto_2

    .line 635
    :cond_2
    iput v6, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    goto :goto_1

    .line 666
    :cond_3
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget v4, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    invoke-interface {v3, p1, v4, v6}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/extractor/ExtractorInput;IZ)I

    move-result v3

    .line 667
    iget v4, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 668
    iget v4, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int v3, v4, v3

    iput v3, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_2

    .line 672
    :cond_4
    :goto_3
    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    iget v2, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    if-ge v1, v2, :cond_5

    .line 673
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget v2, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    iget v3, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    sub-int/2addr v2, v3

    invoke-interface {v1, p1, v2, v6}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/extractor/ExtractorInput;IZ)I

    move-result v1

    .line 674
    iget v2, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    goto :goto_3

    .line 678
    :cond_5
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iget v2, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleIndex:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->getSamplePresentationTime(I)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 679
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iget-boolean v1, v1, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    if-eqz v1, :cond_6

    :goto_4
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iget-object v1, v1, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    iget v4, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleIndex:I

    aget-boolean v1, v1, v4

    if-eqz v1, :cond_7

    move v1, v8

    :goto_5
    or-int v4, v0, v1

    .line 681
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iget-boolean v0, v0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->track:Lcom/google/android/exoplayer/extractor/mp4/Track;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->fragmentRun:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iget v1, v1, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleDescriptionIndex:I

    aget-object v0, v0, v1

    iget-object v7, v0, Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;->keyId:[B

    .line 683
    :goto_6
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget v5, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 685
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleIndex:I

    .line 686
    iput v9, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    move v6, v8

    .line 687
    goto/16 :goto_0

    :cond_6
    move v0, v6

    .line 679
    goto :goto_4

    :cond_7
    move v1, v6

    goto :goto_5

    .line 681
    :cond_8
    const/4 v7, 0x0

    goto :goto_6
.end method

.method private static shouldParseAtom(I)Z
    .locals 1

    .prologue
    .line 716
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_avc1:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_avc3:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_esds:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_hdlr:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mdat:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mdhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_moof:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_moov:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mp4a:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mvhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_sidx:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stsd:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_tfdt:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_tfhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_tkhd:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_traf:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_trak:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_trex:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_trun:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mvex:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mdia:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_minf:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stbl:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_pssh:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_saiz:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_uuid:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_senc:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_pasp:I

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

.method private static shouldParseContainerAtom(I)Z
    .locals 1

    .prologue
    .line 730
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_moov:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_trak:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mdia:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_minf:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stbl:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_avcC:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_moof:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_traf:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mvex:I

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
.method public init(Lcom/google/android/exoplayer/extractor/ExtractorOutput;)V
    .locals 1

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .line 143
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    .line 144
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v0}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->endTracks()V

    .line 145
    return-void
.end method

.method public read(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 157
    :cond_0
    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    packed-switch v0, :pswitch_data_0

    .line 170
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->readSample(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 159
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->readAtomHeader(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    const/4 v0, -0x1

    goto :goto_1

    .line 164
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->readAtomPayload(Lcom/google/android/exoplayer/extractor/ExtractorInput;)V

    goto :goto_0

    .line 167
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->readEncryptionData(Lcom/google/android/exoplayer/extractor/ExtractorInput;)V

    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public seek()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 150
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 151
    return-void
.end method

.method public setTrack(Lcom/google/android/exoplayer/extractor/mp4/Track;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 136
    new-instance v0, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extendsDefaults:Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;

    .line 137
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->track:Lcom/google/android/exoplayer/extractor/mp4/Track;

    .line 138
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
    .line 123
    invoke-static {p1}, Lcom/google/android/exoplayer/extractor/mp4/Sniffer;->sniffFragmented(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z

    move-result v0

    return v0
.end method
