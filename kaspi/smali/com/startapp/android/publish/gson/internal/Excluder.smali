.class public final Lcom/startapp/android/publish/gson/internal/Excluder;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/gson/TypeAdapterFactory;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFAULT:Lcom/startapp/android/publish/gson/internal/Excluder;


# instance fields
.field private deserializationStrategies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/gson/ExclusionStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private modifiers:I

.field private requireExpose:Z

.field private serializationStrategies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/gson/ExclusionStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private serializeInnerClasses:Z

.field private version:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/startapp/android/publish/gson/internal/Excluder;

    invoke-direct {v0}, Lcom/startapp/android/publish/gson/internal/Excluder;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/gson/internal/Excluder;->DEFAULT:Lcom/startapp/android/publish/gson/internal/Excluder;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/startapp/android/publish/gson/internal/Excluder;->version:D

    .line 56
    const/16 v0, 0x88

    iput v0, p0, Lcom/startapp/android/publish/gson/internal/Excluder;->modifiers:I

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/startapp/android/publish/gson/internal/Excluder;->serializeInnerClasses:Z

    .line 59
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    .line 60
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    return-void
.end method

.method private isAnonymousOrLocal(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 217
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isLocalClass()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInnerClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 222
    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/startapp/android/publish/gson/internal/Excluder;->isStatic(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStatic(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 226
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidSince(Lcom/startapp/android/publish/gson/annotations/Since;)Z
    .locals 4

    .prologue
    .line 234
    if-eqz p1, :cond_0

    .line 235
    invoke-interface {p1}, Lcom/startapp/android/publish/gson/annotations/Since;->value()D

    move-result-wide v0

    .line 236
    iget-wide v2, p0, Lcom/startapp/android/publish/gson/internal/Excluder;->version:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 237
    const/4 v0, 0x0

    .line 240
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isValidUntil(Lcom/startapp/android/publish/gson/annotations/Until;)Z
    .locals 4

    .prologue
    .line 244
    if-eqz p1, :cond_0

    .line 245
    invoke-interface {p1}, Lcom/startapp/android/publish/gson/annotations/Until;->value()D

    move-result-wide v0

    .line 246
    iget-wide v2, p0, Lcom/startapp/android/publish/gson/internal/Excluder;->version:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 247
    const/4 v0, 0x0

    .line 250
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isValidVersion(Lcom/startapp/android/publish/gson/annotations/Since;Lcom/startapp/android/publish/gson/annotations/Until;)Z
    .locals 1

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/gson/internal/Excluder;->isValidSince(Lcom/startapp/android/publish/gson/annotations/Since;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/startapp/android/publish/gson/internal/Excluder;->isValidUntil(Lcom/startapp/android/publish/gson/annotations/Until;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected clone()Lcom/startapp/android/publish/gson/internal/Excluder;
    .locals 1

    .prologue
    .line 64
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/gson/internal/Excluder;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/startapp/android/publish/gson/internal/Excluder;->clone()Lcom/startapp/android/publish/gson/internal/Excluder;

    move-result-object v0

    return-object v0
.end method

.method public create(Lcom/startapp/android/publish/gson/Gson;Lcom/startapp/android/publish/gson/reflect/TypeToken;)Lcom/startapp/android/publish/gson/TypeAdapter;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/startapp/android/publish/gson/Gson;",
            "Lcom/startapp/android/publish/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/startapp/android/publish/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p2}, Lcom/startapp/android/publish/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 114
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/startapp/android/publish/gson/internal/Excluder;->excludeClass(Ljava/lang/Class;Z)Z

    move-result v3

    .line 115
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/startapp/android/publish/gson/internal/Excluder;->excludeClass(Ljava/lang/Class;Z)Z

    move-result v2

    .line 117
    if-nez v3, :cond_0

    if-nez v2, :cond_0

    .line 118
    const/4 v0, 0x0

    .line 121
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/startapp/android/publish/gson/internal/Excluder$1;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/startapp/android/publish/gson/internal/Excluder$1;-><init>(Lcom/startapp/android/publish/gson/internal/Excluder;ZZLcom/startapp/android/publish/gson/Gson;Lcom/startapp/android/publish/gson/reflect/TypeToken;)V

    goto :goto_0
.end method

.method public excludeClass(Ljava/lang/Class;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 193
    iget-wide v0, p0, Lcom/startapp/android/publish/gson/internal/Excluder;->version:D

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_0

    const-class v0, Lcom/startapp/android/publish/gson/annotations/Since;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/gson/annotations/Since;

    const-class v1, Lcom/startapp/android/publish/gson/annotations/Until;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/startapp/android/publish/gson/annotations/Until;

    invoke-direct {p0, v0, v1}, Lcom/startapp/android/publish/gson/internal/Excluder;->isValidVersion(Lcom/startapp/android/publish/gson/annotations/Since;Lcom/startapp/android/publish/gson/annotations/Until;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 213
    :goto_0
    return v0

    .line 198
    :cond_0
    iget-boolean v0, p0, Lcom/startapp/android/publish/gson/internal/Excluder;->serializeInnerClasses:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/startapp/android/publish/gson/internal/Excluder;->isInnerClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 199
    goto :goto_0

    .line 202
    :cond_1
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/gson/internal/Excluder;->isAnonymousOrLocal(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 203
    goto :goto_0

    .line 206
    :cond_2
    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/startapp/android/publish/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    .line 207
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/gson/ExclusionStrategy;

    .line 208
    invoke-interface {v0, p1}, Lcom/startapp/android/publish/gson/ExclusionStrategy;->shouldSkipClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    .line 209
    goto :goto_0

    .line 206
    :cond_4
    iget-object v0, p0, Lcom/startapp/android/publish/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    goto :goto_1

    .line 213
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public excludeField(Ljava/lang/reflect/Field;Z)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 151
    iget v0, p0, Lcom/startapp/android/publish/gson/internal/Excluder;->modifiers:I

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    move v0, v2

    .line 189
    :goto_0
    return v0

    .line 155
    :cond_0
    iget-wide v0, p0, Lcom/startapp/android/publish/gson/internal/Excluder;->version:D

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_1

    const-class v0, Lcom/startapp/android/publish/gson/annotations/Since;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/gson/annotations/Since;

    const-class v1, Lcom/startapp/android/publish/gson/annotations/Until;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/startapp/android/publish/gson/annotations/Until;

    invoke-direct {p0, v0, v1}, Lcom/startapp/android/publish/gson/internal/Excluder;->isValidVersion(Lcom/startapp/android/publish/gson/annotations/Since;Lcom/startapp/android/publish/gson/annotations/Until;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 157
    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 161
    goto :goto_0

    .line 164
    :cond_2
    iget-boolean v0, p0, Lcom/startapp/android/publish/gson/internal/Excluder;->requireExpose:Z

    if-eqz v0, :cond_5

    .line 165
    const-class v0, Lcom/startapp/android/publish/gson/annotations/Expose;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/gson/annotations/Expose;

    .line 166
    if-eqz v0, :cond_3

    if-eqz p2, :cond_4

    invoke-interface {v0}, Lcom/startapp/android/publish/gson/annotations/Expose;->serialize()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    move v0, v2

    .line 167
    goto :goto_0

    .line 166
    :cond_4
    invoke-interface {v0}, Lcom/startapp/android/publish/gson/annotations/Expose;->deserialize()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 171
    :cond_5
    iget-boolean v0, p0, Lcom/startapp/android/publish/gson/internal/Excluder;->serializeInnerClasses:Z

    if-nez v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/gson/internal/Excluder;->isInnerClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    .line 172
    goto :goto_0

    .line 175
    :cond_6
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/startapp/android/publish/gson/internal/Excluder;->isAnonymousOrLocal(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    .line 176
    goto :goto_0

    .line 179
    :cond_7
    if-eqz p2, :cond_9

    iget-object v0, p0, Lcom/startapp/android/publish/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    .line 180
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 181
    new-instance v1, Lcom/startapp/android/publish/gson/FieldAttributes;

    invoke-direct {v1, p1}, Lcom/startapp/android/publish/gson/FieldAttributes;-><init>(Ljava/lang/reflect/Field;)V

    .line 182
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/gson/ExclusionStrategy;

    .line 183
    invoke-interface {v0, v1}, Lcom/startapp/android/publish/gson/ExclusionStrategy;->shouldSkipField(Lcom/startapp/android/publish/gson/FieldAttributes;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    .line 184
    goto/16 :goto_0

    .line 179
    :cond_9
    iget-object v0, p0, Lcom/startapp/android/publish/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    goto :goto_1

    .line 189
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
