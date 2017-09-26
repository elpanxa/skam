.class Lorg/simpleframework/xml/core/AnnotationHandler;
.super Ljava/lang/Object;
.source "AnnotationHandler.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field private static final ATTRIBUTE:Ljava/lang/String; = "attribute"

.field private static final CLASS:Ljava/lang/String; = "annotationType"

.field private static final EQUAL:Ljava/lang/String; = "equals"

.field private static final REQUIRED:Ljava/lang/String; = "required"

.field private static final STRING:Ljava/lang/String; = "toString"


# instance fields
.field private final attribute:Z

.field private final comparer:Lorg/simpleframework/xml/core/Comparer;

.field private final required:Z

.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/AnnotationHandler;-><init>(Ljava/lang/Class;Z)V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Z)V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/AnnotationHandler;-><init>(Ljava/lang/Class;ZZ)V

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;ZZ)V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Lorg/simpleframework/xml/core/Comparer;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/Comparer;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->comparer:Lorg/simpleframework/xml/core/Comparer;

    .line 116
    iput-boolean p3, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->attribute:Z

    .line 117
    iput-boolean p2, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->required:Z

    .line 118
    iput-object p1, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->type:Ljava/lang/Class;

    .line 119
    return-void
.end method

.method private attributes(Ljava/lang/StringBuilder;)V
    .locals 5

    .prologue
    .line 223
    iget-object v0, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 225
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 226
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 227
    aget-object v3, v1, v0

    invoke-direct {p0, v3}, Lorg/simpleframework/xml/core/AnnotationHandler;->value(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v3

    .line 229
    if-lez v0, :cond_0

    .line 230
    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const/16 v2, 0x3d

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_1
    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 238
    return-void
.end method

.method private equals(Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 166
    check-cast p1, Ljava/lang/annotation/Annotation;

    .line 167
    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/annotation/Annotation;

    .line 169
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 170
    new-instance v1, Lorg/simpleframework/xml/core/PersistenceException;

    const-string v2, "Annotation %s is not the same as %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 172
    :cond_0
    iget-object v1, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->comparer:Lorg/simpleframework/xml/core/Comparer;

    invoke-virtual {v1, p1, v0}, Lorg/simpleframework/xml/core/Comparer;->equals(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Z

    move-result v0

    return v0
.end method

.method private name(Ljava/lang/StringBuilder;)V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_0

    .line 207
    const/16 v1, 0x40

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 211
    :cond_0
    return-void
.end method

.method private value(Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 251
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 253
    const-string v1, "required"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->required:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 259
    :goto_0
    return-object v0

    .line 256
    :cond_0
    const-string v1, "attribute"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->attribute:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 259
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 135
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 137
    const-string v1, "toString"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/AnnotationHandler;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    :goto_0
    return-object v0

    .line 140
    :cond_0
    const-string v1, "equals"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    invoke-direct {p0, p1, p3}, Lorg/simpleframework/xml/core/AnnotationHandler;->equals(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 143
    :cond_1
    const-string v1, "annotationType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    iget-object v0, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->type:Ljava/lang/Class;

    goto :goto_0

    .line 146
    :cond_2
    const-string v1, "required"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 147
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->required:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_3
    const-string v1, "attribute"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 150
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->attribute:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 152
    :cond_4
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    iget-object v1, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->type:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 188
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/AnnotationHandler;->name(Ljava/lang/StringBuilder;)V

    .line 189
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/AnnotationHandler;->attributes(Ljava/lang/StringBuilder;)V

    .line 191
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
