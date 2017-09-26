.class public Lio/casper/android/n/a/b/b/b;
.super Ljava/lang/Object;
.source "SnapDoublePostModel.java"


# instance fields
.field private cameraFrontFacing:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "camera_front_facing"
    .end annotation
.end field

.field private countryCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "country_code"
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

.field private recipients:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recipients"
    .end annotation
.end field

.field private reply:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "reply"
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
    .line 41
    iput p1, p0, Lio/casper/android/n/a/b/b/b;->time:I

    .line 42
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lio/casper/android/n/a/b/b/b;->recipients:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lio/casper/android/n/a/b/b/b;->zipped:Z

    .line 38
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lio/casper/android/n/a/b/b/b;->type:I

    .line 62
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lio/casper/android/n/a/b/b/b;->mediaId:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lio/casper/android/n/a/b/b/b;->cameraFrontFacing:Z

    .line 46
    return-void
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lio/casper/android/n/a/b/b/b;->orientation:I

    .line 70
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lio/casper/android/n/a/b/b/b;->countryCode:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 65
    iput-boolean p1, p0, Lio/casper/android/n/a/b/b/b;->reply:Z

    .line 66
    return-void
.end method
