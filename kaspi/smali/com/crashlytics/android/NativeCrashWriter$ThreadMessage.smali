.class final Lcom/crashlytics/android/NativeCrashWriter$ThreadMessage;
.super Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/NativeCrashWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ThreadMessage"
.end annotation


# static fields
.field private static final PROTOBUF_TAG:I = 0x1


# instance fields
.field private final importance:I

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/internal/models/ThreadData;Lcom/crashlytics/android/NativeCrashWriter$RepeatedMessage;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 271
    new-array v0, v2, [Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, v2, v0}, Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;-><init>(I[Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;)V

    .line 272
    iget-object v0, p1, Lcom/crashlytics/android/internal/models/ThreadData;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/crashlytics/android/NativeCrashWriter$ThreadMessage;->name:Ljava/lang/String;

    .line 273
    iget v0, p1, Lcom/crashlytics/android/internal/models/ThreadData;->importance:I

    iput v0, p0, Lcom/crashlytics/android/NativeCrashWriter$ThreadMessage;->importance:I

    .line 274
    return-void
.end method

.method private hasName()Z
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/crashlytics/android/NativeCrashWriter$ThreadMessage;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/NativeCrashWriter$ThreadMessage;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getPropertiesSize()I
    .locals 3

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/crashlytics/android/NativeCrashWriter$ThreadMessage;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/crashlytics/android/NativeCrashWriter$ThreadMessage;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v0

    .line 280
    :goto_0
    const/4 v1, 0x2

    iget v2, p0, Lcom/crashlytics/android/NativeCrashWriter$ThreadMessage;->importance:I

    invoke-static {v1, v2}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 278
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeProperties(Lcom/crashlytics/android/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/crashlytics/android/NativeCrashWriter$ThreadMessage;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/crashlytics/android/NativeCrashWriter$ThreadMessage;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 288
    :cond_0
    const/4 v0, 0x2

    iget v1, p0, Lcom/crashlytics/android/NativeCrashWriter$ThreadMessage;->importance:I

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt32(II)V

    .line 289
    return-void
.end method
