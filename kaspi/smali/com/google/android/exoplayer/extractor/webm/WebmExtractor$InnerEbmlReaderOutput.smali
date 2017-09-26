.class final Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;
.super Ljava/lang/Object;
.source "WebmExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InnerEbmlReaderOutput"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;)V
    .locals 0

    .prologue
    .line 998
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;->this$0:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$1;)V
    .locals 0

    .prologue
    .line 998
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;-><init>(Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;)V

    return-void
.end method


# virtual methods
.method public binaryElement(IILcom/google/android/exoplayer/extractor/ExtractorInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;->this$0:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->binaryElement(IILcom/google/android/exoplayer/extractor/ExtractorInput;)V

    .line 1035
    return-void
.end method

.method public endMasterElement(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;->this$0:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->endMasterElement(I)V

    .line 1014
    return-void
.end method

.method public floatElement(ID)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;->this$0:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->floatElement(ID)V

    .line 1024
    return-void
.end method

.method public getElementType(I)I
    .locals 1

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;->this$0:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->getElementType(I)I

    move-result v0

    return v0
.end method

.method public integerElement(IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;->this$0:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->integerElement(IJ)V

    .line 1019
    return-void
.end method

.method public startMasterElement(IJJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;->this$0:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->startMasterElement(IJJ)V

    .line 1009
    return-void
.end method

.method public stringElement(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;->this$0:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->stringElement(ILjava/lang/String;)V

    .line 1029
    return-void
.end method
