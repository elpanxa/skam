.class public Lio/casper/android/n/a/c/b/i;
.super Lio/casper/android/e/a/d;
.source "Friend.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/n/a/c/b/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/casper/android/e/a/d;",
        "Ljava/lang/Comparable",
        "<",
        "Lio/casper/android/n/a/c/b/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADDED_BY_ADDED_ME_BACK:Ljava/lang/String; = "ADDED_BY_ADDED_ME_BACK"

.field public static final ADDED_BY_QR_CODE:Ljava/lang/String; = "ADDED_BY_QR_CODE"

.field public static final ADDED_BY_USERNAME:Ljava/lang/String; = "ADDED_BY_USERNAME"

.field public static final DIRECTION_INCOMING:Ljava/lang/String; = "INCOMING"

.field public static final DIRECTION_OUTGOING:Ljava/lang/String; = "OUTGOING"

.field public static final TYPE_BLOCKED:I = 0x2

.field public static final TYPE_DELETED:I = 0x3

.field public static final TYPE_FOLLOWING:I = 0x6

.field public static final TYPE_MUTUAL:I = 0x0

.field public static final TYPE_PENDING:I = 0x1


# instance fields
.field private canSeeCustomStories:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "can_see_custom_stories"
    .end annotation
.end field

.field private direction:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "direction"
    .end annotation
.end field

.field private display:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "display"
    .end annotation
.end field

.field private friendmojiString:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "friendmoji_string"
    .end annotation
.end field

.field private friendsListGroupingType:Lio/casper/android/n/a/c/b/i$a;

.field private isSharedStory:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_shared_story"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private reverseTs:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "reverse_ts"
    .end annotation
.end field

.field private ts:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ts"
    .end annotation
.end field

.field private type:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field private userID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lio/casper/android/e/a/d;-><init>()V

    .line 10
    sget-object v0, Lio/casper/android/n/a/c/b/i$a;->DEFAULT:Lio/casper/android/n/a/c/b/i$a;

    iput-object v0, p0, Lio/casper/android/n/a/c/b/i;->friendsListGroupingType:Lio/casper/android/n/a/c/b/i$a;

    .line 44
    return-void
.end method


# virtual methods
.method public a(Lio/casper/android/n/a/c/b/i;)I
    .locals 2
    .param p1    # Lio/casper/android/n/a/c/b/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 129
    iget-object v0, p0, Lio/casper/android/n/a/c/b/i;->display:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/i;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lio/casper/android/n/a/c/b/i;->display:Ljava/lang/String;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/i;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 152
    :goto_0
    return v0

    .line 135
    :cond_0
    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/i;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 136
    iget-object v0, p0, Lio/casper/android/n/a/c/b/i;->display:Ljava/lang/String;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/i;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 140
    :cond_1
    iget-object v0, p0, Lio/casper/android/n/a/c/b/i;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 142
    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/i;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 143
    iget-object v0, p0, Lio/casper/android/n/a/c/b/i;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/i;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 146
    :cond_2
    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/i;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 147
    iget-object v0, p0, Lio/casper/android/n/a/c/b/i;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/i;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 152
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lio/casper/android/n/a/c/b/i$a;)Lio/casper/android/n/a/c/b/i;
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lio/casper/android/n/a/c/b/i;->friendsListGroupingType:Lio/casper/android/n/a/c/b/i$a;

    .line 179
    return-object p0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 95
    iput p1, p0, Lio/casper/android/n/a/c/b/i;->type:I

    .line 96
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 107
    iput-wide p1, p0, Lio/casper/android/n/a/c/b/i;->ts:J

    .line 108
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 79
    iput-boolean p1, p0, Lio/casper/android/n/a/c/b/i;->canSeeCustomStories:Z

    .line 80
    return-void
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 115
    iput-wide p1, p0, Lio/casper/android/n/a/c/b/i;->reverseTs:J

    .line 116
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 99
    iput-boolean p1, p0, Lio/casper/android/n/a/c/b/i;->isSharedStory:Z

    .line 100
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lio/casper/android/n/a/c/b/i;->userID:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lio/casper/android/n/a/c/b/i;->userID:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 8
    check-cast p1, Lio/casper/android/n/a/c/b/i;

    invoke-virtual {p0, p1}, Lio/casper/android/n/a/c/b/i;->a(Lio/casper/android/n/a/c/b/i;)I

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lio/casper/android/n/a/c/b/i;->direction:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lio/casper/android/n/a/c/b/i;->canSeeCustomStories:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lio/casper/android/n/a/c/b/i;->direction:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lio/casper/android/n/a/c/b/i;->name:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 164
    instance-of v0, p1, Lio/casper/android/n/a/c/b/i;

    if-eqz v0, :cond_0

    .line 165
    check-cast p1, Lio/casper/android/n/a/c/b/i;

    .line 166
    invoke-virtual {p1}, Lio/casper/android/n/a/c/b/i;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/casper/android/n/a/c/b/i;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 169
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lio/casper/android/n/a/c/b/i;->name:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lio/casper/android/n/a/c/b/i;->display:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lio/casper/android/n/a/c/b/i;->friendmojiString:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lio/casper/android/n/a/c/b/i;->display:Ljava/lang/String;

    return-object v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lio/casper/android/n/a/c/b/i;->type:I

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lio/casper/android/n/a/c/b/i;->isSharedStory:Z

    return v0
.end method

.method public k()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lio/casper/android/n/a/c/b/i;->ts:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 111
    iget-wide v0, p0, Lio/casper/android/n/a/c/b/i;->reverseTs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lio/casper/android/n/a/c/b/i;->friendmojiString:Ljava/lang/String;

    return-object v0
.end method

.method public n()Lio/casper/android/n/a/c/b/i$a;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lio/casper/android/n/a/c/b/i;->friendsListGroupingType:Lio/casper/android/n/a/c/b/i$a;

    return-object v0
.end method
