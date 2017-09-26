.class public Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;
.super Ljava/lang/Object;
.source "SmoothStreamingManifest.java"

# interfaces
.implements Lcom/google/android/exoplayer/chunk/FormatWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackElement"
.end annotation


# instance fields
.field public final csd:[[B

.field public final format:Lcom/google/android/exoplayer/chunk/Format;


# direct methods
.method public constructor <init>(IILjava/lang/String;[[BIIII)V
    .locals 9

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p4, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;->csd:[[B

    .line 137
    new-instance v0, Lcom/google/android/exoplayer/chunk/Format;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v5, -0x40800000    # -1.0f

    move-object v2, p3

    move v3, p5

    move v4, p6

    move/from16 v6, p8

    move/from16 v7, p7

    move v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer/chunk/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIFIII)V

    iput-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;->format:Lcom/google/android/exoplayer/chunk/Format;

    .line 139
    return-void
.end method


# virtual methods
.method public getFormat()Lcom/google/android/exoplayer/chunk/Format;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;->format:Lcom/google/android/exoplayer/chunk/Format;

    return-object v0
.end method
