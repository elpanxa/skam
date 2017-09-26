.class public Lfr/tkeunebr/gravatar/RequestBuilder;
.super Ljava/lang/Object;
.source "RequestBuilder.java"


# static fields
.field private static final GRAVATAR_ENDPOINT:Ljava/lang/String; = "http://www.gravatar.com/avatar/"

.field private static final GRAVATAR_SECURE_ENDPOINT:Ljava/lang/String; = "https://secure.gravatar.com/avatar/"


# instance fields
.field private final builder:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lfr/tkeunebr/gravatar/Gravatar;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {p2}, Lfr/tkeunebr/gravatar/Utils;->convertEmailToHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14
    iget-boolean v0, p1, Lfr/tkeunebr/gravatar/Gravatar;->ssl:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "https://secure.gravatar.com/avatar/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "https://secure.gravatar.com/avatar/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lfr/tkeunebr/gravatar/RequestBuilder;->builder:Ljava/lang/StringBuilder;

    .line 17
    iget-object v0, p0, Lfr/tkeunebr/gravatar/RequestBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-boolean v0, p1, Lfr/tkeunebr/gravatar/Gravatar;->extension:Z

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lfr/tkeunebr/gravatar/RequestBuilder;->builder:Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    :cond_0
    iget-object v0, p0, Lfr/tkeunebr/gravatar/RequestBuilder;->builder:Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    return-void

    .line 14
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "http://www.gravatar.com/avatar/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "http://www.gravatar.com/avatar/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public build()Ljava/lang/String;
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lfr/tkeunebr/gravatar/RequestBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 137
    iget-object v1, p0, Lfr/tkeunebr/gravatar/RequestBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_0

    .line 138
    iget-object v1, p0, Lfr/tkeunebr/gravatar/RequestBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 140
    :cond_0
    iget-object v0, p0, Lfr/tkeunebr/gravatar/RequestBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public defaultImage(I)Lfr/tkeunebr/gravatar/RequestBuilder;
    .locals 2

    .prologue
    .line 69
    packed-switch p1, :pswitch_data_0

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Gravatar default image must be one of the built-in default images MYSTERY_MAN, IDENTICON, MONSTER, WAVATAR, RETRO, BLANK or a custom URL image"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :pswitch_0
    iget-object v0, p0, Lfr/tkeunebr/gravatar/RequestBuilder;->builder:Ljava/lang/StringBuilder;

    const-string v1, "&d=mm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :goto_0
    return-object p0

    .line 74
    :pswitch_1
    iget-object v0, p0, Lfr/tkeunebr/gravatar/RequestBuilder;->builder:Ljava/lang/StringBuilder;

    const-string v1, "&d=identicon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 77
    :pswitch_2
    iget-object v0, p0, Lfr/tkeunebr/gravatar/RequestBuilder;->builder:Ljava/lang/StringBuilder;

    const-string v1, "&d=monsterid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 80
    :pswitch_3
    iget-object v0, p0, Lfr/tkeunebr/gravatar/RequestBuilder;->builder:Ljava/lang/StringBuilder;

    const-string v1, "&d=wavatar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 83
    :pswitch_4
    iget-object v0, p0, Lfr/tkeunebr/gravatar/RequestBuilder;->builder:Ljava/lang/StringBuilder;

    const-string v1, "&d=retro"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 86
    :pswitch_5
    iget-object v0, p0, Lfr/tkeunebr/gravatar/RequestBuilder;->builder:Ljava/lang/StringBuilder;

    const-string v1, "&d=blank"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public defaultImage(Ljava/lang/String;)Lfr/tkeunebr/gravatar/RequestBuilder;
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lfr/tkeunebr/gravatar/RequestBuilder;->builder:Ljava/lang/StringBuilder;

    const-string v1, "&d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lfr/tkeunebr/gravatar/Utils;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    return-object p0
.end method

.method public force404()Lfr/tkeunebr/gravatar/RequestBuilder;
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lfr/tkeunebr/gravatar/RequestBuilder;->builder:Ljava/lang/StringBuilder;

    const-string v1, "&d=404"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    return-object p0
.end method

.method public forceDefault()Lfr/tkeunebr/gravatar/RequestBuilder;
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lfr/tkeunebr/gravatar/RequestBuilder;->builder:Ljava/lang/StringBuilder;

    const-string v1, "&f=y"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    return-object p0
.end method

.method public rating(I)Lfr/tkeunebr/gravatar/RequestBuilder;
    .locals 2

    .prologue
    .line 114
    packed-switch p1, :pswitch_data_0

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Gravatar default image must be one of the built-in rating policyG, PG, R or X"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :pswitch_0
    iget-object v0, p0, Lfr/tkeunebr/gravatar/RequestBuilder;->builder:Ljava/lang/StringBuilder;

    const-string v1, "&r=g"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :goto_0
    return-object p0

    .line 119
    :pswitch_1
    iget-object v0, p0, Lfr/tkeunebr/gravatar/RequestBuilder;->builder:Ljava/lang/StringBuilder;

    const-string v1, "&r=pg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 122
    :pswitch_2
    iget-object v0, p0, Lfr/tkeunebr/gravatar/RequestBuilder;->builder:Ljava/lang/StringBuilder;

    const-string v1, "&r=r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 125
    :pswitch_3
    iget-object v0, p0, Lfr/tkeunebr/gravatar/RequestBuilder;->builder:Ljava/lang/StringBuilder;

    const-string v1, "&r=x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public size(I)Lfr/tkeunebr/gravatar/RequestBuilder;
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x800

    if-gt p1, v0, :cond_0

    .line 34
    iget-object v0, p0, Lfr/tkeunebr/gravatar/RequestBuilder;->builder:Ljava/lang/StringBuilder;

    const-string v1, "&size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    return-object p0

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requested image size must be between 1 and 2048"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
