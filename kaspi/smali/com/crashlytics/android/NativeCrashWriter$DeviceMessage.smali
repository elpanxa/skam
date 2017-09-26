.class final Lcom/crashlytics/android/NativeCrashWriter$DeviceMessage;
.super Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/NativeCrashWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeviceMessage"
.end annotation


# static fields
.field private static final PROTOBUF_TAG:I = 0x5


# instance fields
.field private final batteryLevel:F

.field private final batteryVelocity:I

.field private final diskUsed:J

.field private final orientation:I

.field private final proximityOn:Z

.field private final ramUsed:J


# direct methods
.method public constructor <init>(FIZIJJ)V
    .locals 3

    .prologue
    .line 200
    const/4 v0, 0x5

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;-><init>(I[Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;)V

    .line 202
    iput p1, p0, Lcom/crashlytics/android/NativeCrashWriter$DeviceMessage;->batteryLevel:F

    .line 203
    iput p2, p0, Lcom/crashlytics/android/NativeCrashWriter$DeviceMessage;->batteryVelocity:I

    .line 204
    iput-boolean p3, p0, Lcom/crashlytics/android/NativeCrashWriter$DeviceMessage;->proximityOn:Z

    .line 205
    iput p4, p0, Lcom/crashlytics/android/NativeCrashWriter$DeviceMessage;->orientation:I

    .line 206
    iput-wide p5, p0, Lcom/crashlytics/android/NativeCrashWriter$DeviceMessage;->ramUsed:J

    .line 207
    iput-wide p7, p0, Lcom/crashlytics/android/NativeCrashWriter$DeviceMessage;->diskUsed:J

    .line 208
    return-void
.end method


# virtual methods
.method public getPropertiesSize()I
    .locals 4

    .prologue
    .line 212
    const/4 v0, 0x0

    .line 213
    const/4 v1, 0x1

    iget v2, p0, Lcom/crashlytics/android/NativeCrashWriter$DeviceMessage;->batteryLevel:F

    invoke-static {v1, v2}, Lcom/crashlytics/android/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 214
    const/4 v1, 0x2

    iget v2, p0, Lcom/crashlytics/android/NativeCrashWriter$DeviceMessage;->batteryVelocity:I

    invoke-static {v1, v2}, Lcom/crashlytics/android/CodedOutputStream;->computeSInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 215
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/crashlytics/android/NativeCrashWriter$DeviceMessage;->proximityOn:Z

    invoke-static {v1, v2}, Lcom/crashlytics/android/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 216
    const/4 v1, 0x4

    iget v2, p0, Lcom/crashlytics/android/NativeCrashWriter$DeviceMessage;->orientation:I

    invoke-static {v1, v2}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 217
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/crashlytics/android/NativeCrashWriter$DeviceMessage;->ramUsed:J

    invoke-static {v1, v2, v3}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 218
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/crashlytics/android/NativeCrashWriter$DeviceMessage;->diskUsed:J

    invoke-static {v1, v2, v3}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 219
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
    .line 224
    const/4 v0, 0x1

    iget v1, p0, Lcom/crashlytics/android/NativeCrashWriter$DeviceMessage;->batteryLevel:F

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeFloat(IF)V

    .line 225
    const/4 v0, 0x2

    iget v1, p0, Lcom/crashlytics/android/NativeCrashWriter$DeviceMessage;->batteryVelocity:I

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeSInt32(II)V

    .line 226
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/crashlytics/android/NativeCrashWriter$DeviceMessage;->proximityOn:Z

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeBool(IZ)V

    .line 227
    const/4 v0, 0x4

    iget v1, p0, Lcom/crashlytics/android/NativeCrashWriter$DeviceMessage;->orientation:I

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt32(II)V

    .line 228
    const/4 v0, 0x5

    iget-wide v2, p0, Lcom/crashlytics/android/NativeCrashWriter$DeviceMessage;->ramUsed:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt64(IJ)V

    .line 229
    const/4 v0, 0x6

    iget-wide v2, p0, Lcom/crashlytics/android/NativeCrashWriter$DeviceMessage;->diskUsed:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt64(IJ)V

    .line 230
    return-void
.end method
