.class abstract Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;
.super Ljava/lang/Object;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/NativeCrashWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ProtobufMessage"
.end annotation


# instance fields
.field private final children:[Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;

.field private final tag:I


# direct methods
.method public varargs constructor <init>(I[Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;->tag:I

    .line 48
    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;->children:[Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;

    .line 49
    return-void

    .line 48
    :cond_0
    # getter for: Lcom/crashlytics/android/NativeCrashWriter;->EMPTY_CHILDREN:[Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;
    invoke-static {}, Lcom/crashlytics/android/NativeCrashWriter;->access$000()[Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;

    move-result-object p2

    goto :goto_0
.end method


# virtual methods
.method public getPropertiesSize()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;->getSizeNoTag()I

    move-result v0

    .line 58
    invoke-static {v0}, Lcom/crashlytics/android/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 59
    iget v1, p0, Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;->tag:I

    invoke-static {v1}, Lcom/crashlytics/android/CodedOutputStream;->computeTagSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 60
    return v0
.end method

.method public getSizeNoTag()I
    .locals 5

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;->getPropertiesSize()I

    move-result v1

    .line 70
    iget-object v2, p0, Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;->children:[Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 71
    invoke-virtual {v4}, Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;->getSize()I

    move-result v4

    add-int/2addr v1, v4

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_0
    return v1
.end method

.method public write(Lcom/crashlytics/android/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    iget v0, p0, Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;->tag:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeTag(II)V

    .line 84
    invoke-virtual {p0}, Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;->getSizeNoTag()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/crashlytics/android/CodedOutputStream;->writeRawVarint32(I)V

    .line 85
    invoke-virtual {p0, p1}, Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;->writeProperties(Lcom/crashlytics/android/CodedOutputStream;)V

    .line 86
    iget-object v1, p0, Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;->children:[Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 87
    invoke-virtual {v3, p1}, Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;->write(Lcom/crashlytics/android/CodedOutputStream;)V

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_0
    return-void
.end method

.method public writeProperties(Lcom/crashlytics/android/CodedOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    return-void
.end method
