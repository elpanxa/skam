.class public Lio/casper/android/n/a/b/b/c;
.super Ljava/lang/Object;
.source "StoryDoublePostModel.java"


# instance fields
.field private cameraFrontFacing:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "camera_front_facing"
    .end annotation
.end field

.field private clientId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "client_id"
    .end annotation
.end field

.field private mediaId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "media_id"
    .end annotation
.end field

.field private orientation:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "orientation"
    .end annotation
.end field

.field private storyTimestamp:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "story_timestamp"
    .end annotation
.end field

.field private time:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time"
    .end annotation
.end field

.field private type:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field private zipped:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "zipped"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lio/casper/android/n/a/b/b/c;->time:I

    .line 43
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 38
    iput-wide p1, p0, Lio/casper/android/n/a/b/b/c;->storyTimestamp:J

    .line 39
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lio/casper/android/n/a/b/b/c;->mediaId:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lio/casper/android/n/a/b/b/c;->zipped:Z

    .line 35
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lio/casper/android/n/a/b/b/c;->type:I

    .line 55
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lio/casper/android/n/a/b/b/c;->clientId:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lio/casper/android/n/a/b/b/c;->cameraFrontFacing:Z

    .line 47
    return-void
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lio/casper/android/n/a/b/b/c;->orientation:I

    .line 59
    return-void
.end method
