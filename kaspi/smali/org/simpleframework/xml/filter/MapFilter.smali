.class public Lorg/simpleframework/xml/filter/MapFilter;
.super Ljava/lang/Object;
.source "MapFilter.java"

# interfaces
.implements Lorg/simpleframework/xml/filter/Filter;


# instance fields
.field private filter:Lorg/simpleframework/xml/filter/Filter;

.field private map:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/filter/MapFilter;-><init>(Ljava/util/Map;Lorg/simpleframework/xml/filter/Filter;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Lorg/simpleframework/xml/filter/Filter;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p2, p0, Lorg/simpleframework/xml/filter/MapFilter;->filter:Lorg/simpleframework/xml/filter/Filter;

    .line 66
    iput-object p1, p0, Lorg/simpleframework/xml/filter/MapFilter;->map:Ljava/util/Map;

    .line 67
    return-void
.end method


# virtual methods
.method public replace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 80
    .line 82
    iget-object v1, p0, Lorg/simpleframework/xml/filter/MapFilter;->map:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 83
    iget-object v1, p0, Lorg/simpleframework/xml/filter/MapFilter;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 85
    :goto_0
    if-eqz v1, :cond_1

    .line 86
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    :cond_0
    :goto_1
    return-object v0

    .line 88
    :cond_1
    iget-object v1, p0, Lorg/simpleframework/xml/filter/MapFilter;->filter:Lorg/simpleframework/xml/filter/Filter;

    if-eqz v1, :cond_0

    .line 89
    iget-object v0, p0, Lorg/simpleframework/xml/filter/MapFilter;->filter:Lorg/simpleframework/xml/filter/Filter;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/filter/Filter;->replace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method
