.class public Lorg/simpleframework/xml/util/Resolver;
.super Ljava/util/AbstractSet;
.source "Resolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/util/Resolver$1;,
        Lorg/simpleframework/xml/util/Resolver$Stack;,
        Lorg/simpleframework/xml/util/Resolver$Cache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lorg/simpleframework/xml/util/Match;",
        ">",
        "Ljava/util/AbstractSet",
        "<TM;>;"
    }
.end annotation


# instance fields
.field protected final cache:Lorg/simpleframework/xml/util/Resolver$Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/xml/util/Resolver",
            "<TM;>.Cache;"
        }
    .end annotation
.end field

.field protected final stack:Lorg/simpleframework/xml/util/Resolver$Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/xml/util/Resolver",
            "<TM;>.Stack;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 83
    new-instance v0, Lorg/simpleframework/xml/util/Resolver$Stack;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/simpleframework/xml/util/Resolver$Stack;-><init>(Lorg/simpleframework/xml/util/Resolver;Lorg/simpleframework/xml/util/Resolver$1;)V

    iput-object v0, p0, Lorg/simpleframework/xml/util/Resolver;->stack:Lorg/simpleframework/xml/util/Resolver$Stack;

    .line 84
    new-instance v0, Lorg/simpleframework/xml/util/Resolver$Cache;

    invoke-direct {v0, p0}, Lorg/simpleframework/xml/util/Resolver$Cache;-><init>(Lorg/simpleframework/xml/util/Resolver;)V

    iput-object v0, p0, Lorg/simpleframework/xml/util/Resolver;->cache:Lorg/simpleframework/xml/util/Resolver$Cache;

    .line 85
    return-void
.end method

.method private match([CI[CI)Z
    .locals 6

    .prologue
    const/16 v5, 0x2a

    const/16 v4, 0x3f

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 251
    :cond_0
    array-length v0, p3

    if-ge p4, v0, :cond_9

    array-length v0, p1

    if-ge p2, v0, :cond_9

    .line 252
    aget-char v0, p3, p4

    if-ne v0, v5, :cond_8

    .line 253
    :cond_1
    aget-char v0, p3, p4

    if-ne v0, v5, :cond_3

    .line 254
    add-int/lit8 p4, p4, 0x1

    array-length v0, p3

    if-lt p4, v0, :cond_1

    .line 286
    :cond_2
    :goto_0
    return v2

    .line 257
    :cond_3
    aget-char v0, p3, p4

    if-ne v0, v4, :cond_4

    .line 258
    add-int/lit8 p4, p4, 0x1

    array-length v0, p3

    if-ge p4, v0, :cond_2

    .line 261
    :cond_4
    :goto_1
    array-length v0, p1

    if-ge p2, v0, :cond_7

    .line 262
    aget-char v0, p1, p2

    aget-char v1, p3, p4

    if-eq v0, v1, :cond_5

    aget-char v0, p3, p4

    if-ne v0, v4, :cond_6

    .line 263
    :cond_5
    add-int/lit8 v0, p4, -0x1

    aget-char v0, p3, v0

    if-eq v0, v4, :cond_7

    .line 264
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/simpleframework/xml/util/Resolver;->match([CI[CI)Z

    move-result v0

    if-nez v0, :cond_2

    .line 261
    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 271
    :cond_7
    array-length v0, p1

    if-ne v0, p2, :cond_8

    move v2, v3

    .line 272
    goto :goto_0

    :cond_8
    move v0, p4

    move v1, p2

    .line 274
    add-int/lit8 p2, v1, 0x1

    aget-char v1, p1, v1

    add-int/lit8 p4, v0, 0x1

    aget-char v0, p3, v0

    if-eq v1, v0, :cond_0

    .line 275
    add-int/lit8 v0, p4, -0x1

    aget-char v0, p3, v0

    if-eq v0, v4, :cond_0

    move v2, v3

    .line 276
    goto :goto_0

    .line 279
    :cond_9
    array-length v0, p3

    if-ne v0, p4, :cond_b

    .line 280
    array-length v0, p1

    if-ne v0, p2, :cond_a

    move v0, v2

    :goto_2
    move v2, v0

    goto :goto_0

    :cond_a
    move v0, v3

    goto :goto_2

    .line 282
    :cond_b
    aget-char v0, p3, p4

    if-ne v0, v5, :cond_c

    .line 283
    add-int/lit8 p4, p4, 0x1

    array-length v0, p3

    if-lt p4, v0, :cond_b

    goto :goto_0

    :cond_c
    move v2, v3

    .line 286
    goto :goto_0
.end method

.method private match([C[C)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 235
    invoke-direct {p0, p1, v0, p2, v0}, Lorg/simpleframework/xml/util/Resolver;->match([CI[CI)Z

    move-result v0

    return v0
.end method

.method private resolveAll(Ljava/lang/String;[C)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[C)",
            "Ljava/util/List",
            "<TM;>;"
        }
    .end annotation

    .prologue
    .line 148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 150
    iget-object v0, p0, Lorg/simpleframework/xml/util/Resolver;->stack:Lorg/simpleframework/xml/util/Resolver$Stack;

    invoke-virtual {v0}, Lorg/simpleframework/xml/util/Resolver$Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/util/Match;

    .line 151
    invoke-interface {v0}, Lorg/simpleframework/xml/util/Match;->getPattern()Ljava/lang/String;

    move-result-object v3

    .line 153
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-direct {p0, p2, v3}, Lorg/simpleframework/xml/util/Resolver;->match([C[C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    iget-object v3, p0, Lorg/simpleframework/xml/util/Resolver;->cache:Lorg/simpleframework/xml/util/Resolver$Cache;

    invoke-virtual {v3, p1, v1}, Lorg/simpleframework/xml/util/Resolver$Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 158
    :cond_1
    return-object v1
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 62
    check-cast p1, Lorg/simpleframework/xml/util/Match;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/util/Resolver;->add(Lorg/simpleframework/xml/util/Match;)Z

    move-result v0

    return v0
.end method

.method public add(Lorg/simpleframework/xml/util/Match;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)Z"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lorg/simpleframework/xml/util/Resolver;->stack:Lorg/simpleframework/xml/util/Resolver$Stack;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/util/Resolver$Stack;->push(Lorg/simpleframework/xml/util/Match;)V

    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lorg/simpleframework/xml/util/Resolver;->cache:Lorg/simpleframework/xml/util/Resolver$Cache;

    invoke-virtual {v0}, Lorg/simpleframework/xml/util/Resolver$Cache;->clear()V

    .line 222
    iget-object v0, p0, Lorg/simpleframework/xml/util/Resolver;->stack:Lorg/simpleframework/xml/util/Resolver$Stack;

    invoke-virtual {v0}, Lorg/simpleframework/xml/util/Resolver$Stack;->clear()V

    .line 223
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TM;>;"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lorg/simpleframework/xml/util/Resolver;->stack:Lorg/simpleframework/xml/util/Resolver$Stack;

    invoke-virtual {v0}, Lorg/simpleframework/xml/util/Resolver$Stack;->sequence()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lorg/simpleframework/xml/util/Match;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)Z"
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lorg/simpleframework/xml/util/Resolver;->cache:Lorg/simpleframework/xml/util/Resolver$Cache;

    invoke-virtual {v0}, Lorg/simpleframework/xml/util/Resolver$Cache;->clear()V

    .line 200
    iget-object v0, p0, Lorg/simpleframework/xml/util/Resolver;->stack:Lorg/simpleframework/xml/util/Resolver$Stack;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/util/Resolver$Stack;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public resolve(Ljava/lang/String;)Lorg/simpleframework/xml/util/Match;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TM;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lorg/simpleframework/xml/util/Resolver;->cache:Lorg/simpleframework/xml/util/Resolver$Cache;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/util/Resolver$Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 101
    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/util/Resolver;->resolveAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 104
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    const/4 v0, 0x0

    .line 107
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/util/Match;

    goto :goto_0
.end method

.method public resolveAll(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TM;>;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lorg/simpleframework/xml/util/Resolver;->cache:Lorg/simpleframework/xml/util/Resolver$Cache;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/util/Resolver$Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 124
    if-eqz v0, :cond_0

    .line 132
    :goto_0
    return-object v0

    .line 127
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 129
    if-nez v0, :cond_1

    .line 130
    const/4 v0, 0x0

    goto :goto_0

    .line 132
    :cond_1
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/util/Resolver;->resolveAll(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lorg/simpleframework/xml/util/Resolver;->stack:Lorg/simpleframework/xml/util/Resolver$Stack;

    invoke-virtual {v0}, Lorg/simpleframework/xml/util/Resolver$Stack;->size()I

    move-result v0

    return v0
.end method
