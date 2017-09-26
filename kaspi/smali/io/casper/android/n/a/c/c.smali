.class public Lio/casper/android/n/a/c/c;
.super Ljava/lang/Object;
.source "ConversationResponse.java"


# instance fields
.field private conversation:Lio/casper/android/n/a/c/b/f;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "conversation"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/casper/android/n/a/c/b/f;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lio/casper/android/n/a/c/c;->conversation:Lio/casper/android/n/a/c/b/f;

    return-object v0
.end method
