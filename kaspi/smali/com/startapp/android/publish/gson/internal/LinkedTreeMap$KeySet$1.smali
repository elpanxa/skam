.class Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$KeySet$1;
.super Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$KeySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapp/android/publish/gson/internal/LinkedTreeMap",
        "<TK;TV;>.",
        "LinkedTreeMapIterator",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$KeySet;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$KeySet;)V
    .locals 2

    .prologue
    .line 598
    iput-object p1, p0, Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$KeySet$1;->this$1:Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$KeySet;

    iget-object v0, p1, Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$KeySet;->this$0:Lcom/startapp/android/publish/gson/internal/LinkedTreeMap;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;-><init>(Lcom/startapp/android/publish/gson/internal/LinkedTreeMap;Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$1;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$KeySet$1;->nextNode()Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    iget-object v0, v0, Lcom/startapp/android/publish/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    return-object v0
.end method
