.class public Lcom/adsdk/sdk/video/VAST$Ad$Creative$StaticResource;
.super Ljava/lang/Object;
.source "VAST.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adsdk/sdk/video/VAST$Ad$Creative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StaticResource"
.end annotation

.annotation runtime Lorg/simpleframework/xml/Root;
    name = "StaticResource"
.end annotation


# instance fields
.field type:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "creativeType"
        required = false
    .end annotation
.end field

.field url:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Text;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
