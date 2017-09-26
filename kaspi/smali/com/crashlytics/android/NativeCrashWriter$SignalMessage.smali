.class final Lcom/crashlytics/android/NativeCrashWriter$SignalMessage;
.super Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/NativeCrashWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SignalMessage"
.end annotation


# static fields
.field private static final PROTOBUF_TAG:I = 0x3


# instance fields
.field private final sigAddr:J

.field private final sigCode:Ljava/lang/String;

.field private final sigName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/internal/models/SignalData;)V
    .locals 2

    .prologue
    .line 350
    const/4 v0, 0x3

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;-><init>(I[Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;)V

    .line 351
    iget-object v0, p1, Lcom/crashlytics/android/internal/models/SignalData;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/crashlytics/android/NativeCrashWriter$SignalMessage;->sigName:Ljava/lang/String;

    .line 352
    iget-object v0, p1, Lcom/crashlytics/android/internal/models/SignalData;->code:Ljava/lang/String;

    iput-object v0, p0, Lcom/crashlytics/android/NativeCrashWriter$SignalMessage;->sigCode:Ljava/lang/String;

    .line 353
    iget-wide v0, p1, Lcom/crashlytics/android/internal/models/SignalData;->faultAddress:J

    iput-wide v0, p0, Lcom/crashlytics/android/NativeCrashWriter$SignalMessage;->sigAddr:J

    .line 354
    return-void
.end method


# virtual methods
.method public getPropertiesSize()I
    .locals 4

    .prologue
    .line 358
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/crashlytics/android/NativeCrashWriter$SignalMessage;->sigName:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v0

    .line 359
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/crashlytics/android/NativeCrashWriter$SignalMessage;->sigCode:Ljava/lang/String;

    invoke-static {v2}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 360
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/crashlytics/android/NativeCrashWriter$SignalMessage;->sigAddr:J

    invoke-static {v1, v2, v3}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 361
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
    .line 366
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/crashlytics/android/NativeCrashWriter$SignalMessage;->sigName:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 367
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/crashlytics/android/NativeCrashWriter$SignalMessage;->sigCode:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 368
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/crashlytics/android/NativeCrashWriter$SignalMessage;->sigAddr:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt64(IJ)V

    .line 369
    return-void
.end method
