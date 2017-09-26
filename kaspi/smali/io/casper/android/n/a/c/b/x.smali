.class public Lio/casper/android/n/a/c/b/x;
.super Lio/casper/android/e/a/d;
.source "Story.java"


# static fields
.field public static final TYPE_IMAGE:I = 0x0

.field public static final TYPE_VIDEO:I = 0x1

.field public static final TYPE_VIDEO_NOAUDIO:I = 0x2


# instance fields
.field private captionTextDisplay:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "caption_text_display"
    .end annotation
.end field

.field private clientId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "client_id"
    .end annotation
.end field

.field private downloadState:Ljava/lang/String;

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private isShared:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_shared"
    .end annotation
.end field

.field private matureContent:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mature_content"
    .end annotation
.end field

.field private mediaId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "media_id"
    .end annotation
.end field

.field private mediaIv:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "media_iv"
    .end annotation
.end field

.field private mediaKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "media_key"
    .end annotation
.end field

.field private mediaType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "media_type"
    .end annotation
.end field

.field private mediaUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "media_url"
    .end annotation
.end field

.field private needsAuth:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "needs_auth"
    .end annotation
.end field

.field private thumbnailIv:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "thumbnail_iv"
    .end annotation
.end field

.field private thumbnailUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "thumbnail_url"
    .end annotation
.end field

.field private time:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time"
    .end annotation
.end field

.field private timeLeft:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time_left"
    .end annotation
.end field

.field private timestamp:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timestamp"
    .end annotation
.end field

.field private username:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "username"
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
    invoke-direct {p0}, Lio/casper/android/e/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lio/casper/android/n/a/c/b/x;->id:Ljava/lang/String;

    return-object v0
.end method

.method public a(D)V
    .locals 1

    .prologue
    .line 194
    iput-wide p1, p0, Lio/casper/android/n/a/c/b/x;->time:D

    .line 195
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 190
    iput p1, p0, Lio/casper/android/n/a/c/b/x;->mediaType:I

    .line 191
    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lio/casper/android/n/a/c/b/x;->timestamp:Ljava/lang/Long;

    .line 171
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lio/casper/android/n/a/c/b/x;->id:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 202
    iput-boolean p1, p0, Lio/casper/android/n/a/c/b/x;->zipped:Z

    .line 203
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lio/casper/android/n/a/c/b/x;->username:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lio/casper/android/n/a/c/b/x;->timeLeft:Ljava/lang/Long;

    .line 207
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lio/casper/android/n/a/c/b/x;->username:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 210
    iput-boolean p1, p0, Lio/casper/android/n/a/c/b/x;->needsAuth:Z

    .line 211
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lio/casper/android/n/a/c/b/x;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lio/casper/android/n/a/c/b/x;->clientId:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 222
    iput-boolean p1, p0, Lio/casper/android/n/a/c/b/x;->isShared:Z

    .line 223
    return-void
.end method

.method public d()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lio/casper/android/n/a/c/b/x;->timestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lio/casper/android/n/a/c/b/x;->mediaId:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lio/casper/android/n/a/c/b/x;->mediaId:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lio/casper/android/n/a/c/b/x;->mediaKey:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 232
    if-ne p1, p0, :cond_0

    .line 233
    const/4 v0, 0x1

    .line 241
    :goto_0
    return v0

    .line 236
    :cond_0
    instance-of v0, p1, Lio/casper/android/n/a/c/b/x;

    if-nez v0, :cond_1

    .line 237
    const/4 v0, 0x0

    goto :goto_0

    .line 240
    :cond_1
    check-cast p1, Lio/casper/android/n/a/c/b/x;

    .line 241
    iget-object v0, p0, Lio/casper/android/n/a/c/b/x;->id:Ljava/lang/String;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/x;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lio/casper/android/n/a/c/b/x;->mediaKey:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lio/casper/android/n/a/c/b/x;->mediaIv:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lio/casper/android/n/a/c/b/x;->thumbnailIv:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lio/casper/android/n/a/c/b/x;->mediaIv:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lio/casper/android/n/a/c/b/x;->captionTextDisplay:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lio/casper/android/n/a/c/b/x;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lio/casper/android/n/a/c/b/x;->thumbnailIv:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lio/casper/android/n/a/c/b/x;->downloadState:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public j()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lio/casper/android/n/a/c/b/x;->mediaType:I

    return v0
.end method

.method public k()D
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lio/casper/android/n/a/c/b/x;->time:D

    return-wide v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lio/casper/android/n/a/c/b/x;->captionTextDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lio/casper/android/n/a/c/b/x;->zipped:Z

    return v0
.end method

.method public n()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lio/casper/android/n/a/c/b/x;->timeLeft:Ljava/lang/Long;

    return-object v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lio/casper/android/n/a/c/b/x;->needsAuth:Z

    return v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lio/casper/android/n/a/c/b/x;->mediaType:I

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

    .line 142
    iget v1, p0, Lio/casper/android/n/a/c/b/x;->mediaType:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lio/casper/android/n/a/c/b/x;->mediaType:I

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
    .line 146
    iget-boolean v0, p0, Lio/casper/android/n/a/c/b/x;->isShared:Z

    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lio/casper/android/n/a/c/b/x;->downloadState:Ljava/lang/String;

    return-object v0
.end method
