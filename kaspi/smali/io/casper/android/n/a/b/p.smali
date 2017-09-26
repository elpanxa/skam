.class public Lio/casper/android/n/a/b/p;
.super Lio/casper/android/n/a/b/a/a;
.source "SendMediaRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/casper/android/n/a/b/a/a",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final ORIENTATION_LANDSCAPE_LEFT:I = 0x3

.field public static final ORIENTATION_LANDSCAPE_RIGHT:I = 0x1

.field public static final ORIENTATION_PORTRAIT:I = 0x0

.field public static final ORIENTATION_UPSIDE_DOWN:I = 0x2


# instance fields
.field private mGson:Lcom/google/gson/Gson;

.field private mHasRecipients:Z

.field private mSendMediaPayload:Lio/casper/android/n/a/b/b/a;

.field private mSetAsStory:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/casper/android/n/a/b/b/a;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 29
    invoke-direct {p0, p1}, Lio/casper/android/n/a/b/a/a;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lio/casper/android/n/a/b/p;->mGson:Lcom/google/gson/Gson;

    .line 31
    iput-object p2, p0, Lio/casper/android/n/a/b/p;->mSendMediaPayload:Lio/casper/android/n/a/b/b/a;

    .line 33
    invoke-static {}, Lio/casper/android/n/e/b;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 34
    iget-object v0, p0, Lio/casper/android/n/a/b/p;->mSendMediaPayload:Lio/casper/android/n/a/b/b/a;

    invoke-virtual {v0}, Lio/casper/android/n/a/b/b/a;->b()Ljava/util/List;

    move-result-object v3

    .line 35
    iget-object v0, p0, Lio/casper/android/n/a/b/p;->mSendMediaPayload:Lio/casper/android/n/a/b/b/a;

    invoke-virtual {v0}, Lio/casper/android/n/a/b/b/a;->c()Ljava/util/List;

    .line 37
    iget-object v0, p0, Lio/casper/android/n/a/b/p;->mSendMediaPayload:Lio/casper/android/n/a/b/b/a;

    invoke-virtual {v0}, Lio/casper/android/n/a/b/b/a;->g()Z

    move-result v0

    iput-boolean v0, p0, Lio/casper/android/n/a/b/p;->mSetAsStory:Z

    .line 38
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lio/casper/android/n/a/b/p;->mHasRecipients:Z

    .line 40
    const-string v0, "zipped"

    invoke-virtual {p2}, Lio/casper/android/n/a/b/b/a;->d()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Lio/casper/android/n/a/b/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v0, "time"

    invoke-virtual {p2}, Lio/casper/android/n/a/b/b/a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Lio/casper/android/n/a/b/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v0, "camera_front_facing"

    invoke-virtual {p2}, Lio/casper/android/n/a/b/b/a;->e()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Lio/casper/android/n/a/b/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v0, "media_id"

    invoke-virtual {p2}, Lio/casper/android/n/a/b/b/a;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Lio/casper/android/n/a/b/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v0, "type"

    invoke-virtual {p2}, Lio/casper/android/n/a/b/b/a;->h()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Lio/casper/android/n/a/b/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v0, "orientation"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Lio/casper/android/n/a/b/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-boolean v0, p0, Lio/casper/android/n/a/b/p;->mHasRecipients:Z

    if-eqz v0, :cond_0

    .line 48
    const-string v0, "country_code"

    invoke-static {}, Lio/casper/android/n/e/b;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Lio/casper/android/n/a/b/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v0, "reply"

    const-string v6, "0"

    invoke-virtual {p0, v0, v6}, Lio/casper/android/n/a/b/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v0, "recipients"

    iget-object v6, p0, Lio/casper/android/n/a/b/p;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v6, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Lio/casper/android/n/a/b/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    iget-boolean v0, p0, Lio/casper/android/n/a/b/p;->mSetAsStory:Z

    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {p0, v1}, Lio/casper/android/n/a/b/p;->a(Z)V

    .line 58
    const-string v0, "story_timestamp"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Lio/casper/android/n/a/b/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v0, "client_id"

    invoke-virtual {p2}, Lio/casper/android/n/a/b/b/a;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Lio/casper/android/n/a/b/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Lio/casper/android/n/a/b/b/a;->i()Ljava/io/File;

    move-result-object v0

    .line 62
    invoke-virtual {p2}, Lio/casper/android/n/a/b/b/a;->h()I

    move-result v6

    if-ne v6, v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    const-string v0, "thumbnail_data"

    new-instance v6, Lio/casper/android/c/c/e/a;

    const-string v7, "application/octet-stream"

    invoke-virtual {p2}, Lio/casper/android/n/a/b/b/a;->i()Ljava/io/File;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lio/casper/android/c/c/e/a;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {p0, v0, v6}, Lio/casper/android/n/a/b/p;->a(Ljava/lang/String;Lio/casper/android/c/c/e/a;)V

    .line 68
    :cond_1
    iget-boolean v0, p0, Lio/casper/android/n/a/b/p;->mSetAsStory:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lio/casper/android/n/a/b/p;->mHasRecipients:Z

    if-eqz v0, :cond_2

    .line 70
    new-instance v6, Lio/casper/android/n/a/b/b/b;

    invoke-direct {v6}, Lio/casper/android/n/a/b/b/b;-><init>()V

    .line 71
    invoke-virtual {p2}, Lio/casper/android/n/a/b/b/a;->d()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v6, v0}, Lio/casper/android/n/a/b/b/b;->a(Z)V

    .line 72
    invoke-virtual {p2}, Lio/casper/android/n/a/b/b/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v6, v0}, Lio/casper/android/n/a/b/b/b;->a(I)V

    .line 73
    invoke-virtual {p2}, Lio/casper/android/n/a/b/b/a;->e()I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v6, v0}, Lio/casper/android/n/a/b/b/b;->b(Z)V

    .line 74
    iget-object v0, p0, Lio/casper/android/n/a/b/p;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v0, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lio/casper/android/n/a/b/b/b;->a(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lio/casper/android/n/a/b/p;->mSendMediaPayload:Lio/casper/android/n/a/b/b/a;

    invoke-virtual {v0}, Lio/casper/android/n/a/b/b/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lio/casper/android/n/a/b/b/b;->b(Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lio/casper/android/n/e/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lio/casper/android/n/a/b/b/b;->c(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Lio/casper/android/n/a/b/b/a;->h()I

    move-result v0

    invoke-virtual {v6, v0}, Lio/casper/android/n/a/b/b/b;->b(I)V

    .line 78
    invoke-virtual {v6, v2}, Lio/casper/android/n/a/b/b/b;->c(Z)V

    .line 79
    invoke-virtual {v6, v2}, Lio/casper/android/n/a/b/b/b;->c(I)V

    .line 80
    const-string v0, "snap"

    iget-object v3, p0, Lio/casper/android/n/a/b/p;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v3, v6}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lio/casper/android/n/a/b/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v3, Lio/casper/android/n/a/b/b/c;

    invoke-direct {v3}, Lio/casper/android/n/a/b/b/c;-><init>()V

    .line 83
    invoke-virtual {p2}, Lio/casper/android/n/a/b/b/a;->d()I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Lio/casper/android/n/a/b/b/c;->a(Z)V

    .line 84
    invoke-virtual {v3, v4, v5}, Lio/casper/android/n/a/b/b/c;->a(J)V

    .line 85
    invoke-virtual {p2}, Lio/casper/android/n/a/b/b/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lio/casper/android/n/a/b/b/c;->a(I)V

    .line 86
    invoke-virtual {p2}, Lio/casper/android/n/a/b/b/a;->e()I

    move-result v0

    if-ne v0, v1, :cond_7

    :goto_4
    invoke-virtual {v3, v1}, Lio/casper/android/n/a/b/b/c;->b(Z)V

    .line 87
    iget-object v0, p0, Lio/casper/android/n/a/b/p;->mSendMediaPayload:Lio/casper/android/n/a/b/b/a;

    invoke-virtual {v0}, Lio/casper/android/n/a/b/b/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/casper/android/n/a/b/b/c;->a(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Lio/casper/android/n/a/b/b/a;->h()I

    move-result v0

    invoke-virtual {v3, v0}, Lio/casper/android/n/a/b/b/c;->b(I)V

    .line 89
    invoke-virtual {v3, v2}, Lio/casper/android/n/a/b/b/c;->c(I)V

    .line 90
    iget-object v0, p0, Lio/casper/android/n/a/b/p;->mSendMediaPayload:Lio/casper/android/n/a/b/b/a;

    invoke-virtual {v0}, Lio/casper/android/n/a/b/b/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/casper/android/n/a/b/b/c;->b(Ljava/lang/String;)V

    .line 91
    const-string v0, "story"

    iget-object v1, p0, Lio/casper/android/n/a/b/p;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/casper/android/n/a/b/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 38
    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 71
    goto/16 :goto_1

    :cond_5
    move v0, v2

    .line 73
    goto/16 :goto_2

    :cond_6
    move v0, v2

    .line 83
    goto :goto_3

    :cond_7
    move v1, v2

    .line 86
    goto :goto_4
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lio/casper/android/n/a/b/p;->mSetAsStory:Z

    if-eqz v0, :cond_1

    .line 102
    iget-boolean v0, p0, Lio/casper/android/n/a/b/p;->mHasRecipients:Z

    if-eqz v0, :cond_0

    .line 103
    const-string v0, "/loq/double_post"

    .line 110
    :goto_0
    return-object v0

    .line 106
    :cond_0
    const-string v0, "/bq/post_story"

    goto :goto_0

    .line 110
    :cond_1
    const-string v0, "/loq/send"

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public c()Lio/casper/android/c/c/f/b;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lio/casper/android/c/c/f/b;->POST:Lio/casper/android/c/c/f/b;

    return-object v0
.end method

.method public d()Lio/casper/android/c/c/d/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/casper/android/c/c/d/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Lio/casper/android/c/c/d/c;

    invoke-direct {v0}, Lio/casper/android/c/c/d/c;-><init>()V

    return-object v0
.end method
