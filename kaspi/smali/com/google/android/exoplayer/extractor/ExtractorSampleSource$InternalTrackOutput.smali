.class Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;
.super Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;
.source "ExtractorSampleSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalTrackOutput"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;Lcom/google/android/exoplayer/upstream/Allocator;)V
    .locals 0

    .prologue
    .line 675
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->this$0:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;

    .line 676
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;-><init>(Lcom/google/android/exoplayer/upstream/Allocator;)V

    .line 677
    return-void
.end method


# virtual methods
.method public sampleMetadata(JIII[B)V
    .locals 1

    .prologue
    .line 681
    invoke-super/range {p0 .. p6}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->sampleMetadata(JIII[B)V

    .line 682
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->this$0:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;

    # operator++ for: Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->extractedSampleCount:I
    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->access$008(Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;)I

    .line 683
    return-void
.end method
