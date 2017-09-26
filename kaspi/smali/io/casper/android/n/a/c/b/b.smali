.class public Lio/casper/android/n/a/c/b/b;
.super Ljava/lang/Object;
.source "ChatMessage.java"


# static fields
.field public static final TYPE_CHAT_MESSAGE:Ljava/lang/String; = "chat_message"


# instance fields
.field private body:Lio/casper/android/n/a/c/b/c;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "body"
    .end annotation
.end field

.field private chat_message_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "chat_message_id"
    .end annotation
.end field

.field private header:Lio/casper/android/n/a/c/b/d;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "header"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private seq_num:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "seq_num"
    .end annotation
.end field

.field private timestamp:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timestamp"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field
