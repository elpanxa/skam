.class public final Lcom/google/android/exoplayer/hls/Subtitle;
.super Ljava/lang/Object;
.source "Subtitle.java"


# instance fields
.field public final autoSelect:Z

.field public final isDefault:Z

.field public final language:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/exoplayer/hls/Subtitle;->name:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/google/android/exoplayer/hls/Subtitle;->uri:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/google/android/exoplayer/hls/Subtitle;->language:Ljava/lang/String;

    .line 33
    iput-boolean p5, p0, Lcom/google/android/exoplayer/hls/Subtitle;->autoSelect:Z

    .line 34
    iput-boolean p4, p0, Lcom/google/android/exoplayer/hls/Subtitle;->isDefault:Z

    .line 35
    return-void
.end method
