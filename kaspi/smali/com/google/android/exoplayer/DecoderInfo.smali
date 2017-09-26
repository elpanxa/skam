.class public final Lcom/google/android/exoplayer/DecoderInfo;
.super Ljava/lang/Object;
.source "DecoderInfo.java"


# instance fields
.field public final adaptive:Z

.field public final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/android/exoplayer/DecoderInfo;->name:Ljava/lang/String;

    .line 45
    iput-boolean p2, p0, Lcom/google/android/exoplayer/DecoderInfo;->adaptive:Z

    .line 46
    return-void
.end method
