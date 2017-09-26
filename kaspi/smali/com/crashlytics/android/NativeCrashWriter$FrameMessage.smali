.class final Lcom/crashlytics/android/NativeCrashWriter$FrameMessage;
.super Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/NativeCrashWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FrameMessage"
.end annotation


# static fields
.field private static final PROTOBUF_TAG:I = 0x3


# instance fields
.field private final address:J

.field private final file:Ljava/lang/String;

.field private final importance:I

.field private final offset:J

.field private final symbol:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/internal/models/ThreadData$FrameData;)V
    .locals 2

    .prologue
    .line 310
    const/4 v0, 0x3

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;-><init>(I[Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;)V

    .line 311
    iget-wide v0, p1, Lcom/crashlytics/android/internal/models/ThreadData$FrameData;->address:J

    iput-wide v0, p0, Lcom/crashlytics/android/NativeCrashWriter$FrameMessage;->address:J

    .line 312
    iget-object v0, p1, Lcom/crashlytics/android/internal/models/ThreadData$FrameData;->symbol:Ljava/lang/String;

    iput-object v0, p0, Lcom/crashlytics/android/NativeCrashWriter$FrameMessage;->symbol:Ljava/lang/String;

    .line 313
    iget-object v0, p1, Lcom/crashlytics/android/internal/models/ThreadData$FrameData;->file:Ljava/lang/String;

    iput-object v0, p0, Lcom/crashlytics/android/NativeCrashWriter$FrameMessage;->file:Ljava/lang/String;

    .line 314
    iget-wide v0, p1, Lcom/crashlytics/android/internal/models/ThreadData$FrameData;->offset:J

    iput-wide v0, p0, Lcom/crashlytics/android/NativeCrashWriter$FrameMessage;->offset:J

    .line 315
    iget v0, p1, Lcom/crashlytics/android/internal/models/ThreadData$FrameData;->importance:I

    iput v0, p0, Lcom/crashlytics/android/NativeCrashWriter$FrameMessage;->importance:I

    .line 316
    return-void
.end method


# virtual methods
.method public getPropertiesSize()I
    .locals 4

    .prologue
    .line 320
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/crashlytics/android/NativeCrashWriter$FrameMessage;->address:J

    invoke-static {v0, v2, v3}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v0

    .line 321
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/crashlytics/android/NativeCrashWriter$FrameMessage;->symbol:Ljava/lang/String;

    invoke-static {v2}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 322
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/crashlytics/android/NativeCrashWriter$FrameMessage;->file:Ljava/lang/String;

    invoke-static {v2}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 323
    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/crashlytics/android/NativeCrashWriter$FrameMessage;->offset:J

    invoke-static {v1, v2, v3}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 324
    const/4 v1, 0x5

    iget v2, p0, Lcom/crashlytics/android/NativeCrashWriter$FrameMessage;->importance:I

    invoke-static {v1, v2}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 325
    return v0
.end method

.method public writeProperties(Lcom/crashlytics/android/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/crashlytics/android/NativeCrashWriter$FrameMessage;->address:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt64(IJ)V

    .line 331
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/crashlytics/android/NativeCrashWriter$FrameMessage;->symbol:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 332
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/crashlytics/android/NativeCrashWriter$FrameMessage;->file:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 333
    const/4 v0, 0x4

    iget-wide v2, p0, Lcom/crashlytics/android/NativeCrashWriter$FrameMessage;->offset:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt64(IJ)V

    .line 334
    const/4 v0, 0x5

    iget v1, p0, Lcom/crashlytics/android/NativeCrashWriter$FrameMessage;->importance:I

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt32(II)V

    .line 335
    return-void
.end method
