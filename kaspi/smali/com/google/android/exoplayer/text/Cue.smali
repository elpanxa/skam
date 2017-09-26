.class public Lcom/google/android/exoplayer/text/Cue;
.super Ljava/lang/Object;
.source "Cue.java"


# static fields
.field public static final UNSET_VALUE:I = -0x1


# instance fields
.field public final alignment:Landroid/text/Layout$Alignment;

.field public final line:I

.field public final position:I

.field public final size:I

.field public final text:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/text/Cue;-><init>(Ljava/lang/CharSequence;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 6

    .prologue
    const/4 v2, -0x1

    .line 42
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/text/Cue;-><init>(Ljava/lang/CharSequence;IILandroid/text/Layout$Alignment;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/Layout$Alignment;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/android/exoplayer/text/Cue;->text:Ljava/lang/CharSequence;

    .line 47
    iput p2, p0, Lcom/google/android/exoplayer/text/Cue;->line:I

    .line 48
    iput p3, p0, Lcom/google/android/exoplayer/text/Cue;->position:I

    .line 49
    iput-object p4, p0, Lcom/google/android/exoplayer/text/Cue;->alignment:Landroid/text/Layout$Alignment;

    .line 50
    iput p5, p0, Lcom/google/android/exoplayer/text/Cue;->size:I

    .line 51
    return-void
.end method
