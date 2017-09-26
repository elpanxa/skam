.class final Lcom/google/android/exoplayer/text/ttml/TtmlNode;
.super Ljava/lang/Object;
.source "TtmlNode.java"


# static fields
.field public static final TAG_BODY:Ljava/lang/String; = "body"

.field public static final TAG_BR:Ljava/lang/String; = "br"

.field public static final TAG_DIV:Ljava/lang/String; = "div"

.field public static final TAG_HEAD:Ljava/lang/String; = "head"

.field public static final TAG_LAYOUT:Ljava/lang/String; = "layout"

.field public static final TAG_METADATA:Ljava/lang/String; = "metadata"

.field public static final TAG_P:Ljava/lang/String; = "p"

.field public static final TAG_REGION:Ljava/lang/String; = "region"

.field public static final TAG_SMPTE_DATA:Ljava/lang/String; = "smpte:data"

.field public static final TAG_SMPTE_IMAGE:Ljava/lang/String; = "smpte:image"

.field public static final TAG_SMPTE_INFORMATION:Ljava/lang/String; = "smpte:information"

.field public static final TAG_SPAN:Ljava/lang/String; = "span"

.field public static final TAG_STYLE:Ljava/lang/String; = "style"

.field public static final TAG_STYLING:Ljava/lang/String; = "styling"

.field public static final TAG_TT:Ljava/lang/String; = "tt"

.field public static final UNDEFINED_TIME:J = -0x1L


# instance fields
.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/text/ttml/TtmlNode;",
            ">;"
        }
    .end annotation
.end field

.field public final endTimeUs:J

.field public final isTextNode:Z

.field public final startTimeUs:J

.field public final tag:Ljava/lang/String;

.field public final text:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->tag:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->text:Ljava/lang/String;

    .line 67
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->isTextNode:Z

    .line 68
    iput-wide p3, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->startTimeUs:J

    .line 69
    iput-wide p5, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->endTimeUs:J

    .line 70
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static applyTextElementSpacePolicy(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 220
    const-string v0, "\r\n"

    const-string v1, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    const-string v1, " *\n *"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    const-string v1, "\n"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    const-string v1, "[ \t\\x0B\u000c\r]+"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    return-object v0
.end method

.method public static buildNode(Ljava/lang/String;JJ)Lcom/google/android/exoplayer/text/ttml/TtmlNode;
    .locals 9

    .prologue
    .line 61
    new-instance v1, Lcom/google/android/exoplayer/text/ttml/TtmlNode;

    const/4 v3, 0x0

    move-object v2, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    return-object v1
.end method

.method public static buildTextNode(Ljava/lang/String;)Lcom/google/android/exoplayer/text/ttml/TtmlNode;
    .locals 8

    .prologue
    const-wide/16 v4, -0x1

    .line 57
    new-instance v1, Lcom/google/android/exoplayer/text/ttml/TtmlNode;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->applyTextElementSpacePolicy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-wide v6, v4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    return-object v1
.end method

.method private static endParagraph(Landroid/text/SpannableStringBuilder;)V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 203
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 204
    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 205
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 207
    :cond_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_1

    .line 208
    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 210
    :cond_1
    return-void
.end method

.method private getEventTimes(Ljava/util/TreeSet;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    const/4 v2, 0x0

    .line 111
    const-string v0, "p"

    iget-object v1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 112
    if-nez p2, :cond_0

    if-eqz v4, :cond_2

    .line 113
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->startTimeUs:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_1

    .line 114
    iget-wide v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->startTimeUs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->endTimeUs:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_2

    .line 117
    iget-wide v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->endTimeUs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->children:Ljava/util/List;

    if-nez v0, :cond_4

    .line 126
    :cond_3
    return-void

    :cond_4
    move v1, v2

    .line 123
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 124
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->children:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;

    if-nez p2, :cond_5

    if-eqz v4, :cond_6

    :cond_5
    const/4 v3, 0x1

    :goto_1
    invoke-direct {v0, p1, v3}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->getEventTimes(Ljava/util/TreeSet;Z)V

    .line 123
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_6
    move v3, v2

    .line 124
    goto :goto_1
.end method

.method private getText(JLandroid/text/SpannableStringBuilder;Z)Landroid/text/SpannableStringBuilder;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 178
    iget-boolean v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->isTextNode:Z

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    .line 179
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->text:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 193
    :cond_0
    :goto_0
    return-object p3

    .line 180
    :cond_1
    const-string v0, "br"

    iget-object v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->tag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p4, :cond_2

    .line 181
    const/16 v0, 0xa

    invoke-virtual {p3, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 182
    :cond_2
    const-string v0, "metadata"

    iget-object v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->tag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->isActive(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const-string v0, "p"

    iget-object v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->tag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    move v0, v1

    .line 186
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 187
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->getChild(I)Lcom/google/android/exoplayer/text/ttml/TtmlNode;

    move-result-object v4

    if-nez p4, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    const/4 v2, 0x1

    :goto_2
    invoke-direct {v4, p1, p2, p3, v2}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->getText(JLandroid/text/SpannableStringBuilder;Z)Landroid/text/SpannableStringBuilder;

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v2, v1

    .line 187
    goto :goto_2

    .line 189
    :cond_5
    if-eqz v3, :cond_0

    .line 190
    invoke-static {p3}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->endParagraph(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0
.end method


# virtual methods
.method public addChild(Lcom/google/android/exoplayer/text/ttml/TtmlNode;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->children:Ljava/util/List;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->children:Ljava/util/List;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

.method public getChild(I)Lcom/google/android/exoplayer/text/ttml/TtmlNode;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->children:Ljava/util/List;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->children:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getEventTimesUs()[J
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 98
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 99
    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->getEventTimes(Ljava/util/TreeSet;Z)V

    .line 100
    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v2

    new-array v2, v2, [J

    .line 101
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    .line 103
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 105
    add-int/lit8 v0, v1, 0x1

    aput-wide v4, v2, v1

    move v1, v0

    .line 106
    goto :goto_0

    .line 107
    :cond_0
    return-object v2
.end method

.method public getText(J)Ljava/lang/CharSequence;
    .locals 9

    .prologue
    const/16 v7, 0xa

    const/16 v6, 0x20

    const/4 v2, 0x0

    .line 129
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->getText(JLandroid/text/SpannableStringBuilder;Z)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 132
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    move v3, v2

    .line 133
    :goto_0
    if-ge v3, v1, :cond_1

    .line 134
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_9

    .line 135
    add-int/lit8 v0, v3, 0x1

    .line 136
    :goto_1
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-ge v0, v5, :cond_0

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_0

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 139
    :cond_0
    add-int/lit8 v5, v3, 0x1

    sub-int/2addr v0, v5

    .line 140
    if-lez v0, :cond_9

    .line 141
    add-int v5, v3, v0

    invoke-virtual {v4, v3, v5}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 142
    sub-int v0, v1, v0

    .line 133
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 147
    :cond_1
    if-lez v1, :cond_2

    invoke-virtual {v4, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_2

    .line 148
    const/4 v0, 0x1

    invoke-virtual {v4, v2, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 149
    add-int/lit8 v1, v1, -0x1

    :cond_2
    move v0, v1

    move v1, v2

    .line 151
    :goto_3
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_4

    .line 152
    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_3

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_3

    .line 153
    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v5, v1, 0x2

    invoke-virtual {v4, v3, v5}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 154
    add-int/lit8 v0, v0, -0x1

    .line 151
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 158
    :cond_4
    if-lez v0, :cond_5

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_5

    .line 159
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {v4, v1, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 160
    add-int/lit8 v0, v0, -0x1

    :cond_5
    move v1, v2

    .line 162
    :goto_4
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_7

    .line 163
    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_6

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_6

    .line 164
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v4, v1, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 165
    add-int/lit8 v0, v0, -0x1

    .line 162
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 169
    :cond_7
    if-lez v0, :cond_8

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_8

    .line 170
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {v4, v1, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 171
    add-int/lit8 v0, v0, -0x1

    .line 173
    :cond_8
    invoke-virtual {v4, v2, v0}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_9
    move v0, v1

    goto :goto_2
.end method

.method public isActive(J)Z
    .locals 5

    .prologue
    const-wide/16 v2, -0x1

    .line 73
    iget-wide v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->startTimeUs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->endTimeUs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->startTimeUs:J

    cmp-long v0, v0, p1

    if-gtz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->endTimeUs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->startTimeUs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->endTimeUs:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    :cond_2
    iget-wide v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->startTimeUs:J

    cmp-long v0, v0, p1

    if-gtz v0, :cond_4

    iget-wide v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->endTimeUs:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
