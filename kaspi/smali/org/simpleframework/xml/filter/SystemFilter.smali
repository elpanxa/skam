.class public Lorg/simpleframework/xml/filter/SystemFilter;
.super Ljava/lang/Object;
.source "SystemFilter.java"

# interfaces
.implements Lorg/simpleframework/xml/filter/Filter;


# instance fields
.field private filter:Lorg/simpleframework/xml/filter/Filter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/filter/SystemFilter;-><init>(Lorg/simpleframework/xml/filter/Filter;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/filter/Filter;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/simpleframework/xml/filter/SystemFilter;->filter:Lorg/simpleframework/xml/filter/Filter;

    .line 56
    return-void
.end method


# virtual methods
.method public replace(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_0

    .line 77
    :goto_0
    return-object v0

    .line 74
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/filter/SystemFilter;->filter:Lorg/simpleframework/xml/filter/Filter;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lorg/simpleframework/xml/filter/SystemFilter;->filter:Lorg/simpleframework/xml/filter/Filter;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/filter/Filter;->replace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 77
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
