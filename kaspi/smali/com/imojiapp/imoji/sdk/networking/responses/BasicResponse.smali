.class public abstract Lcom/imojiapp/imoji/sdk/networking/responses/BasicResponse;
.super Ljava/lang/Object;
.source "BasicResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imojiapp/imoji/sdk/networking/responses/BasicResponse$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public abstract getPayload()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method public isSuccess()Z
    .locals 2

    .prologue
    .line 37
    const-string v0, "SUCCESS"

    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/networking/responses/BasicResponse;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
