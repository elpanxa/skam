.class final Lcom/crashlytics/android/NativeCrashWriter$EventMessage;
.super Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/NativeCrashWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EventMessage"
.end annotation


# static fields
.field private static final PROTOBUF_TAG:I = 0xa


# instance fields
.field private final crashType:Ljava/lang/String;

.field private final time:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/crashlytics/android/NativeCrashWriter$ApplicationMessage;Lcom/crashlytics/android/NativeCrashWriter$DeviceMessage;)V
    .locals 3

    .prologue
    .line 156
    const/16 v0, 0xa

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    const/4 v2, 0x1

    aput-object p5, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;-><init>(I[Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;)V

    .line 157
    iput-wide p1, p0, Lcom/crashlytics/android/NativeCrashWriter$EventMessage;->time:J

    .line 158
    iput-object p3, p0, Lcom/crashlytics/android/NativeCrashWriter$EventMessage;->crashType:Ljava/lang/String;

    .line 159
    return-void
.end method


# virtual methods
.method public getPropertiesSize()I
    .locals 4

    .prologue
    .line 163
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/crashlytics/android/NativeCrashWriter$EventMessage;->time:J

    invoke-static {v0, v2, v3}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v0

    .line 164
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/crashlytics/android/NativeCrashWriter$EventMessage;->crashType:Ljava/lang/String;

    invoke-static {v2}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v1

    .line 166
    add-int/2addr v0, v1

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
    .line 171
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/crashlytics/android/NativeCrashWriter$EventMessage;->time:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt64(IJ)V

    .line 172
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/crashlytics/android/NativeCrashWriter$EventMessage;->crashType:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 173
    return-void
.end method
