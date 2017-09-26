.class public final Lcom/google/android/exoplayer/metadata/PrivMetadata;
.super Ljava/lang/Object;
.source "PrivMetadata.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "PRIV"


# instance fields
.field public final owner:Ljava/lang/String;

.field public final privateData:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/exoplayer/metadata/PrivMetadata;->owner:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/google/android/exoplayer/metadata/PrivMetadata;->privateData:[B

    .line 32
    return-void
.end method
