.class public Lcom/avocarrot/json2view/DynamicView;
.super Ljava/lang/Object;
.source "DynamicView.java"


# static fields
.field static INTERNAL_TAG_ID:I

.field static mCurrentId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/16 v0, 0xd

    sput v0, Lcom/avocarrot/json2view/DynamicView;->mCurrentId:I

    .line 24
    const/high16 v0, 0x7f020000

    sput v0, Lcom/avocarrot/json2view/DynamicView;->INTERNAL_TAG_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createView(Landroid/content/Context;Lorg/json/JSONObject;)Landroid/view/View;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-static {p0, p1, v0, v0}, Lcom/avocarrot/json2view/DynamicView;->createView(Landroid/content/Context;Lorg/json/JSONObject;Landroid/view/ViewGroup;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static createView(Landroid/content/Context;Lorg/json/JSONObject;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/avocarrot/json2view/DynamicView;->createView(Landroid/content/Context;Lorg/json/JSONObject;Landroid/view/ViewGroup;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static createView(Landroid/content/Context;Lorg/json/JSONObject;Landroid/view/ViewGroup;Ljava/lang/Class;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 43
    if-nez p1, :cond_0

    move-object v0, v1

    .line 77
    :goto_0
    return-object v0

    .line 46
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 48
    invoke-static {p0, p1, p2, v3}, Lcom/avocarrot/json2view/DynamicView;->createViewInternal(Landroid/content/Context;Lorg/json/JSONObject;Landroid/view/ViewGroup;Ljava/util/HashMap;)Landroid/view/View;

    move-result-object v2

    .line 50
    if-nez v2, :cond_1

    move-object v0, v1

    .line 51
    goto :goto_0

    .line 53
    :cond_1
    sget v0, Lcom/avocarrot/json2view/DynamicView;->INTERNAL_TAG_ID:I

    invoke-virtual {v2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 54
    sget v0, Lcom/avocarrot/json2view/DynamicView;->INTERNAL_TAG_ID:I

    invoke-virtual {v2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v2, v0, p2, v3}, Lcom/avocarrot/json2view/DynamicHelper;->applyLayoutProperties(Landroid/view/View;Ljava/util/List;Landroid/view/ViewGroup;Ljava/util/HashMap;)V

    .line 57
    :cond_2
    sget v0, Lcom/avocarrot/json2view/DynamicView;->INTERNAL_TAG_ID:I

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 59
    if-eqz p3, :cond_3

    .line 62
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p3, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    invoke-static {v0, v2, v3}, Lcom/avocarrot/json2view/DynamicHelper;->parseDynamicView(Ljava/lang/Object;Landroid/view/View;Ljava/util/HashMap;)V

    .line 64
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    :cond_3
    :goto_1
    move-object v0, v2

    .line 77
    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    .line 67
    :catch_1
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 69
    :catch_2
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 71
    :catch_3
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method public static createView(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/Class;)Landroid/view/View;
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/avocarrot/json2view/DynamicView;->createView(Landroid/content/Context;Lorg/json/JSONObject;Landroid/view/ViewGroup;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static createViewInternal(Landroid/content/Context;Lorg/json/JSONObject;Landroid/view/ViewGroup;Ljava/util/HashMap;)Landroid/view/View;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 106
    .line 112
    :try_start_0
    const-string v1, "widget"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android.widget."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    :cond_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 118
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5

    move-object v2, v1

    .line 133
    :goto_0
    if-nez v2, :cond_2

    move-object v2, v3

    .line 193
    :cond_1
    :goto_1
    return-object v2

    .line 119
    :catch_0
    move-exception v1

    .line 120
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v2, v3

    .line 131
    goto :goto_0

    .line 121
    :catch_1
    move-exception v1

    .line 122
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move-object v2, v3

    .line 131
    goto :goto_0

    .line 123
    :catch_2
    move-exception v1

    .line 124
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move-object v2, v3

    .line 131
    goto :goto_0

    .line 125
    :catch_3
    move-exception v1

    .line 126
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    move-object v2, v3

    .line 131
    goto :goto_0

    .line 127
    :catch_4
    move-exception v1

    .line 128
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    move-object v2, v3

    .line 131
    goto :goto_0

    .line 129
    :catch_5
    move-exception v1

    .line 130
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move-object v2, v3

    goto :goto_0

    .line 138
    :cond_2
    :try_start_1
    invoke-static {p2}, Lcom/avocarrot/json2view/DynamicHelper;->createLayoutParams(Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 139
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 143
    const-string v1, "properties"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 144
    if-eqz v5, :cond_4

    move v1, v4

    .line 145
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 146
    new-instance v6, Lcom/avocarrot/json2view/DynamicProperty;

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/avocarrot/json2view/DynamicProperty;-><init>(Lorg/json/JSONObject;)V

    .line 147
    invoke-virtual {v6}, Lcom/avocarrot/json2view/DynamicProperty;->isValid()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 148
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 153
    :cond_4
    sget v1, Lcom/avocarrot/json2view/DynamicView;->INTERNAL_TAG_ID:I

    invoke-virtual {v2, v1, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 156
    invoke-static {v2, v3}, Lcom/avocarrot/json2view/DynamicHelper;->applyStyleProperties(Landroid/view/View;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 159
    sget v3, Lcom/avocarrot/json2view/DynamicView;->mCurrentId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget v1, Lcom/avocarrot/json2view/DynamicView;->mCurrentId:I

    invoke-virtual {v2, v1}, Landroid/view/View;->setId(I)V

    .line 161
    sget v1, Lcom/avocarrot/json2view/DynamicView;->mCurrentId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/avocarrot/json2view/DynamicView;->mCurrentId:I

    .line 165
    :cond_5
    instance-of v1, v2, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 166
    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    .line 169
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 170
    const-string v3, "views"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 171
    if-eqz v6, :cond_6

    .line 172
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    move v3, v4

    .line 173
    :goto_3
    if-ge v3, v7, :cond_6

    .line 175
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {p0, v4, p2, p3}, Lcom/avocarrot/json2view/DynamicView;->createViewInternal(Landroid/content/Context;Lorg/json/JSONObject;Landroid/view/ViewGroup;Ljava/util/HashMap;)Landroid/view/View;

    move-result-object v4

    .line 176
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 173
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 182
    :cond_6
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 183
    sget v4, Lcom/avocarrot/json2view/DynamicView;->INTERNAL_TAG_ID:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v1, p3}, Lcom/avocarrot/json2view/DynamicHelper;->applyLayoutProperties(Landroid/view/View;Ljava/util/List;Landroid/view/ViewGroup;Ljava/util/HashMap;)V

    .line 185
    sget v4, Lcom/avocarrot/json2view/DynamicView;->INTERNAL_TAG_ID:I

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_4

    .line 189
    :catch_6
    move-exception v1

    .line 190
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1
.end method
