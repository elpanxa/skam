.class public final Lcom/google/android/exoplayer/metadata/GeobMetadata;
.super Ljava/lang/Object;
.source "GeobMetadata.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "GEOB"


# instance fields
.field public final data:[B

.field public final description:Ljava/lang/String;

.field public final filename:Ljava/lang/String;

.field public final mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/exoplayer/metadata/GeobMetadata;->mimeType:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/google/android/exoplayer/metadata/GeobMetadata;->filename:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/google/android/exoplayer/metadata/GeobMetadata;->description:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/google/android/exoplayer/metadata/GeobMetadata;->data:[B

    .line 36
    return-void
.end method
