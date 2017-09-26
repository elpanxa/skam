.class Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;
.super Ljava/util/ArrayList;
.source "SignatureBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/core/SignatureBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParameterTable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 258
    return-void
.end method

.method static synthetic access$000(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;)I
    .locals 1

    .prologue
    .line 249
    invoke-direct {p0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->width()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;)I
    .locals 1

    .prologue
    .line 249
    invoke-direct {p0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->height()I

    move-result v0

    return v0
.end method

.method private height()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 268
    invoke-direct {p0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->width()I

    move-result v1

    .line 270
    if-lez v1, :cond_0

    .line 271
    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->get(I)Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;->size()I

    move-result v0

    .line 273
    :cond_0
    return v0
.end method

.method private width()I
    .locals 1

    .prologue
    .line 284
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->size()I

    move-result v0

    return v0
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 249
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->get(I)Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    move-result-object v0

    return-object v0
.end method

.method public get(II)Lorg/simpleframework/xml/core/Parameter;
    .locals 1

    .prologue
    .line 333
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->get(I)Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Parameter;

    return-object v0
.end method

.method public get(I)Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;
    .locals 2

    .prologue
    .line 313
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->size()I

    move-result v0

    .line 315
    :goto_0
    if-gt v0, p1, :cond_0

    .line 316
    new-instance v1, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    invoke-direct {v1}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;-><init>()V

    .line 317
    invoke-virtual {p0, v1}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->add(Ljava/lang/Object;)Z

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    :cond_0
    invoke-super {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    return-object v0
.end method

.method public insert(Lorg/simpleframework/xml/core/Parameter;I)V
    .locals 1

    .prologue
    .line 296
    invoke-virtual {p0, p2}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterTable;->get(I)Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;

    move-result-object v0

    .line 298
    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/SignatureBuilder$ParameterList;->add(Ljava/lang/Object;)Z

    .line 301
    :cond_0
    return-void
.end method
