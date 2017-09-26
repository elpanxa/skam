.class public Lio/casper/android/n/a/c/b/w;
.super Lio/casper/android/e/a/d;
.source "Snap.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final STATE_DELIVERED:I = 0x1

.field public static final STATE_NONE:I = -0x1

.field public static final STATE_SCREENSHOT:I = 0x3

.field public static final STATE_SENT:I = 0x0

.field public static final STATE_VIEWED:I = 0x2

.field public static final TYPE_FRIEND_REQUEST:I = 0x3

.field public static final TYPE_FRIEND_REQUEST_IMAGE:I = 0x4

.field public static final TYPE_FRIEND_REQUEST_VIDEO:I = 0x5

.field public static final TYPE_FRIEND_REQUEST_VIDEO_NOAUDIO:I = 0x6

.field public static final TYPE_IMAGE:I = 0x0

.field public static final TYPE_VIDEO:I = 0x1

.field public static final TYPE_VIDEO_NOAUDIO:I = 0x2


# instance fields
.field private broadcast:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "broadcast"
    .end annotation
.end field

.field private broadcastHideTimer:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "broadcast_hide_timer"
    .end annotation
.end field

.field private broadcastMediaUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "broadcast_media_url"
    .end annotation
.end field

.field private clientID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "c_id"
    .end annotation
.end field

.field private esId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "es_id"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private lastInteractionTimestamp:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ts"
    .end annotation
.end field

.field private recipient:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rp"
    .end annotation
.end field

.field private replayed:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "replayed"
    .end annotation
.end field

.field private sender:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sn"
    .end annotation
.end field

.field private sentTimestamp:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sts"
    .end annotation
.end field

.field private state:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "st"
    .end annotation
.end field

.field private type:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "m"
    .end annotation
.end field

.field private viewTime:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "t"
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
    .line 8
    invoke-direct {p0}, Lio/casper/android/e/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lio/casper/android/n/a/c/b/w;->recipient:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 162
    iput p1, p0, Lio/casper/android/n/a/c/b/w;->state:I

    .line 163
    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lio/casper/android/n/a/c/b/w;->lastInteractionTimestamp:Ljava/lang/Long;

    .line 171
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lio/casper/android/n/a/c/b/w;->sender:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 182
    iput-boolean p1, p0, Lio/casper/android/n/a/c/b/w;->replayed:Z

    .line 183
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lio/casper/android/n/a/c/b/w;->sender:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 166
    iput p1, p0, Lio/casper/android/n/a/c/b/w;->type:I

    .line 167
    return-void
.end method

.method public b(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lio/casper/android/n/a/c/b/w;->sentTimestamp:Ljava/lang/Long;

    .line 175
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lio/casper/android/n/a/c/b/w;->clientID:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 206
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lio/casper/android/n/a/c/b/w;->broadcast:I

    .line 207
    return-void

    .line 206
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lio/casper/android/n/a/c/b/w;->clientID:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 178
    iput p1, p0, Lio/casper/android/n/a/c/b/w;->viewTime:I

    .line 179
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lio/casper/android/n/a/c/b/w;->id:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 210
    iput-boolean p1, p0, Lio/casper/android/n/a/c/b/w;->zipped:Z

    .line 211
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lio/casper/android/n/a/c/b/w;->id:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lio/casper/android/n/a/c/b/w;->state:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 216
    if-ne p0, p1, :cond_1

    .line 222
    :cond_0
    :goto_0
    return v0

    .line 217
    :cond_1
    instance-of v2, p1, Lio/casper/android/n/a/c/b/w;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 218
    :cond_2
    invoke-super {p0, p1}, Lio/casper/android/e/a/d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 220
    :cond_3
    check-cast p1, Lio/casper/android/n/a/c/b/w;

    .line 222
    iget-object v2, p0, Lio/casper/android/n/a/c/b/w;->id:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lio/casper/android/n/a/c/b/w;->id:Ljava/lang/String;

    iget-object v3, p1, Lio/casper/android/n/a/c/b/w;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lio/casper/android/n/a/c/b/w;->id:Ljava/lang/String;

    if-nez v2, :cond_4

    goto :goto_0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lio/casper/android/n/a/c/b/w;->type:I

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lio/casper/android/n/a/c/b/w;->viewTime:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 228
    invoke-super {p0}, Lio/casper/android/e/a/d;->hashCode()I

    move-result v0

    .line 229
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lio/casper/android/n/a/c/b/w;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/casper/android/n/a/c/b/w;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    .line 230
    return v0

    .line 229
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lio/casper/android/n/a/c/b/w;->replayed:Z

    return v0
.end method

.method public j()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lio/casper/android/n/a/c/b/w;->lastInteractionTimestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public k()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lio/casper/android/n/a/c/b/w;->sentTimestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lio/casper/android/n/a/c/b/w;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/casper/android/n/a/c/b/w;->id:Ljava/lang/String;

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Z
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lio/casper/android/n/a/c/b/w;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/casper/android/n/a/c/b/w;->id:Ljava/lang/String;

    const-string v1, "r"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()Z
    .locals 2

    .prologue
    .line 118
    iget v0, p0, Lio/casper/android/n/a/c/b/w;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()Z
    .locals 2

    .prologue
    .line 122
    iget v0, p0, Lio/casper/android/n/a/c/b/w;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lio/casper/android/n/a/c/b/w;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lio/casper/android/n/a/c/b/w;->type:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 130
    iget v1, p0, Lio/casper/android/n/a/c/b/w;->type:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lio/casper/android/n/a/c/b/w;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lio/casper/android/n/a/c/b/w;->zipped:Z

    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lio/casper/android/n/a/c/b/w;->esId:Ljava/lang/String;

    return-object v0
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lio/casper/android/n/a/c/b/w;->broadcast:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
