.class Lorg/simpleframework/xml/core/TemplateFilter;
.super Ljava/lang/Object;
.source "TemplateFilter.java"

# interfaces
.implements Lorg/simpleframework/xml/filter/Filter;


# instance fields
.field private context:Lorg/simpleframework/xml/core/Context;

.field private filter:Lorg/simpleframework/xml/filter/Filter;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/filter/Filter;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/simpleframework/xml/core/TemplateFilter;->context:Lorg/simpleframework/xml/core/Context;

    .line 57
    iput-object p2, p0, Lorg/simpleframework/xml/core/TemplateFilter;->filter:Lorg/simpleframework/xml/filter/Filter;

    .line 58
    return-void
.end method


# virtual methods
.method public replace(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateFilter;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Context;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/TemplateFilter;->filter:Lorg/simpleframework/xml/filter/Filter;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/filter/Filter;->replace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
