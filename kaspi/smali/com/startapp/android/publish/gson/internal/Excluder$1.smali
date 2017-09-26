.class Lcom/startapp/android/publish/gson/internal/Excluder$1;
.super Lcom/startapp/android/publish/gson/TypeAdapter;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/gson/internal/Excluder;->create(Lcom/startapp/android/publish/gson/Gson;Lcom/startapp/android/publish/gson/reflect/TypeToken;)Lcom/startapp/android/publish/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapp/android/publish/gson/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private delegate:Lcom/startapp/android/publish/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapp/android/publish/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/startapp/android/publish/gson/internal/Excluder;

.field final synthetic val$gson:Lcom/startapp/android/publish/gson/Gson;

.field final synthetic val$skipDeserialize:Z

.field final synthetic val$skipSerialize:Z

.field final synthetic val$type:Lcom/startapp/android/publish/gson/reflect/TypeToken;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/gson/internal/Excluder;ZZLcom/startapp/android/publish/gson/Gson;Lcom/startapp/android/publish/gson/reflect/TypeToken;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/startapp/android/publish/gson/internal/Excluder$1;->this$0:Lcom/startapp/android/publish/gson/internal/Excluder;

    iput-boolean p2, p0, Lcom/startapp/android/publish/gson/internal/Excluder$1;->val$skipDeserialize:Z

    iput-boolean p3, p0, Lcom/startapp/android/publish/gson/internal/Excluder$1;->val$skipSerialize:Z

    iput-object p4, p0, Lcom/startapp/android/publish/gson/internal/Excluder$1;->val$gson:Lcom/startapp/android/publish/gson/Gson;

    iput-object p5, p0, Lcom/startapp/android/publish/gson/internal/Excluder$1;->val$type:Lcom/startapp/android/publish/gson/reflect/TypeToken;

    invoke-direct {p0}, Lcom/startapp/android/publish/gson/TypeAdapter;-><init>()V

    return-void
.end method

.method private delegate()Lcom/startapp/android/publish/gson/TypeAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/startapp/android/publish/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/startapp/android/publish/gson/internal/Excluder$1;->delegate:Lcom/startapp/android/publish/gson/TypeAdapter;

    .line 143
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/gson/internal/Excluder$1;->val$gson:Lcom/startapp/android/publish/gson/Gson;

    iget-object v1, p0, Lcom/startapp/android/publish/gson/internal/Excluder$1;->this$0:Lcom/startapp/android/publish/gson/internal/Excluder;

    iget-object v2, p0, Lcom/startapp/android/publish/gson/internal/Excluder$1;->val$type:Lcom/startapp/android/publish/gson/reflect/TypeToken;

    invoke-virtual {v0, v1, v2}, Lcom/startapp/android/publish/gson/Gson;->getDelegateAdapter(Lcom/startapp/android/publish/gson/TypeAdapterFactory;Lcom/startapp/android/publish/gson/reflect/TypeToken;)Lcom/startapp/android/publish/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/gson/internal/Excluder$1;->delegate:Lcom/startapp/android/publish/gson/TypeAdapter;

    goto :goto_0
.end method


# virtual methods
.method public read(Lcom/startapp/android/publish/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapp/android/publish/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/startapp/android/publish/gson/internal/Excluder$1;->val$skipDeserialize:Z

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p1}, Lcom/startapp/android/publish/gson/stream/JsonReader;->skipValue()V

    .line 128
    const/4 v0, 0x0

    .line 130
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/startapp/android/publish/gson/internal/Excluder$1;->delegate()Lcom/startapp/android/publish/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/gson/TypeAdapter;->read(Lcom/startapp/android/publish/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public write(Lcom/startapp/android/publish/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapp/android/publish/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/startapp/android/publish/gson/internal/Excluder$1;->val$skipSerialize:Z

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p1}, Lcom/startapp/android/publish/gson/stream/JsonWriter;->nullValue()Lcom/startapp/android/publish/gson/stream/JsonWriter;

    .line 139
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-direct {p0}, Lcom/startapp/android/publish/gson/internal/Excluder$1;->delegate()Lcom/startapp/android/publish/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/startapp/android/publish/gson/TypeAdapter;->write(Lcom/startapp/android/publish/gson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_0
.end method
