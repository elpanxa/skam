.class final Lcom/crashlytics/android/NativeCrashWriter$BinaryImageMessage;
.super Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/NativeCrashWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BinaryImageMessage"
.end annotation


# static fields
.field private static final PROTOBUF_TAG:I = 0x4


# instance fields
.field private final baseAddr:J

.field private final filePath:Ljava/lang/String;

.field private final imageSize:J

.field private final uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/internal/models/BinaryImageData;)V
    .locals 2

    .prologue
    .line 385
    const/4 v0, 0x4

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;-><init>(I[Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;)V

    .line 386
    iget-wide v0, p1, Lcom/crashlytics/android/internal/models/BinaryImageData;->baseAddress:J

    iput-wide v0, p0, Lcom/crashlytics/android/NativeCrashWriter$BinaryImageMessage;->baseAddr:J

    .line 387
    iget-wide v0, p1, Lcom/crashlytics/android/internal/models/BinaryImageData;->size:J

    iput-wide v0, p0, Lcom/crashlytics/android/NativeCrashWriter$BinaryImageMessage;->imageSize:J

    .line 388
    iget-object v0, p1, Lcom/crashlytics/android/internal/models/BinaryImageData;->path:Ljava/lang/String;

    iput-object v0, p0, Lcom/crashlytics/android/NativeCrashWriter$BinaryImageMessage;->filePath:Ljava/lang/String;

    .line 389
    iget-object v0, p1, Lcom/crashlytics/android/internal/models/BinaryImageData;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/crashlytics/android/NativeCrashWriter$BinaryImageMessage;->uuid:Ljava/lang/String;

    .line 390
    return-void
.end method


# virtual methods
.method public getPropertiesSize()I
    .locals 5

    .prologue
    .line 394
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/crashlytics/android/NativeCrashWriter$BinaryImageMessage;->baseAddr:J

    invoke-static {v0, v2, v3}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v0

    .line 395
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/crashlytics/android/NativeCrashWriter$BinaryImageMessage;->imageSize:J

    invoke-static {v1, v2, v3}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    .line 396
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/crashlytics/android/NativeCrashWriter$BinaryImageMessage;->filePath:Ljava/lang/String;

    invoke-static {v3}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v2

    .line 398
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/crashlytics/android/NativeCrashWriter$BinaryImageMessage;->uuid:Ljava/lang/String;

    invoke-static {v4}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v3

    .line 401
    add-int/2addr v0, v2

    add-int/2addr v0, v1

    add-int/2addr v0, v3

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
    .line 406
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/crashlytics/android/NativeCrashWriter$BinaryImageMessage;->baseAddr:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt64(IJ)V

    .line 407
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/crashlytics/android/NativeCrashWriter$BinaryImageMessage;->imageSize:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt64(IJ)V

    .line 408
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/crashlytics/android/NativeCrashWriter$BinaryImageMessage;->filePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 409
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/crashlytics/android/NativeCrashWriter$BinaryImageMessage;->uuid:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 410
    return-void
.end method
