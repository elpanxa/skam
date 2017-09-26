.class public Lcom/adsdk/sdk/video/VAST$Ad$Impression;
.super Ljava/lang/Object;
.source "VAST.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adsdk/sdk/video/VAST$Ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Impression"
.end annotation

.annotation runtime Lorg/simpleframework/xml/Root;
    name = "Impression"
.end annotation


# instance fields
.field id:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        name = "id"
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
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
