.class final Lcom/crashlytics/android/NativeCrashWriter$RepeatedMessage;
.super Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/NativeCrashWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RepeatedMessage"
.end annotation


# instance fields
.field private final messages:[Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;


# direct methods
.method public varargs constructor <init>([Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 123
    new-array v0, v1, [Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;

    invoke-direct {p0, v1, v0}, Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;-><init>(I[Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;)V

    .line 124
    iput-object p1, p0, Lcom/crashlytics/android/NativeCrashWriter$RepeatedMessage;->messages:[Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;

    .line 125
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 136
    .line 137
    iget-object v2, p0, Lcom/crashlytics/android/NativeCrashWriter$RepeatedMessage;->messages:[Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 138
    invoke-virtual {v4}, Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;->getSize()I

    move-result v4

    add-int/2addr v1, v4

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
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
    .line 129
    iget-object v1, p0, Lcom/crashlytics/android/NativeCrashWriter$RepeatedMessage;->messages:[Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 130
    invoke-virtual {v3, p1}, Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;->write(Lcom/crashlytics/android/CodedOutputStream;)V

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_0
    return-void
.end method
