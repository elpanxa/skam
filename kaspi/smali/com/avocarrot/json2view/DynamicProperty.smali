.class public Lcom/avocarrot/json2view/DynamicProperty;
.super Ljava/lang/Object;
.source "DynamicProperty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avocarrot/json2view/DynamicProperty$1;,
        Lcom/avocarrot/json2view/DynamicProperty$NAME;,
        Lcom/avocarrot/json2view/DynamicProperty$TYPE;
    }
.end annotation


# instance fields
.field public name:Lcom/avocarrot/json2view/DynamicProperty$NAME;

.field public type:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    :try_start_0
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avocarrot/json2view/DynamicProperty$NAME;->valueOf(Ljava/lang/String;)Lcom/avocarrot/json2view/DynamicProperty$NAME;

    move-result-object v0

    iput-object v0, p0, Lcom/avocarrot/json2view/DynamicProperty;->name:Lcom/avocarrot/json2view/DynamicProperty$NAME;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    :try_start_1
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->valueOf(Ljava/lang/String;)Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    move-result-object v0

    iput-object v0, p0, Lcom/avocarrot/json2view/DynamicProperty;->type:Lcom/avocarrot/json2view/DynamicProperty$TYPE;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 237
    :goto_1
    :try_start_2
    const-string v0, "value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/avocarrot/json2view/DynamicProperty;->convertValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/avocarrot/json2view/DynamicProperty;->value:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 239
    :goto_2
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    sget-object v0, Lcom/avocarrot/json2view/DynamicProperty$NAME;->NO_VALID:Lcom/avocarrot/json2view/DynamicProperty$NAME;

    iput-object v0, p0, Lcom/avocarrot/json2view/DynamicProperty;->name:Lcom/avocarrot/json2view/DynamicProperty$NAME;

    goto :goto_0

    .line 233
    :catch_1
    move-exception v0

    .line 234
    sget-object v0, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->NO_VALID:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    iput-object v0, p0, Lcom/avocarrot/json2view/DynamicProperty;->type:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    goto :goto_1

    .line 238
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method private convertValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 128
    if-nez p1, :cond_0

    .line 217
    :goto_0
    return-object v2

    .line 130
    :cond_0
    sget-object v3, Lcom/avocarrot/json2view/DynamicProperty$1;->$SwitchMap$com$avocarrot$json2view$DynamicProperty$TYPE:[I

    iget-object v4, p0, Lcom/avocarrot/json2view/DynamicProperty;->type:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    invoke-virtual {v4}, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move-object v2, p1

    .line 217
    goto :goto_0

    .line 132
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 135
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_0

    .line 138
    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avocarrot/json2view/DynamicProperty;->convertDimenToPixel(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_0

    .line 141
    :pswitch_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avocarrot/json2view/DynamicProperty;->convertColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 144
    :pswitch_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    const-string v3, "t"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 146
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 147
    :cond_1
    const-string v3, "f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 148
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 149
    :cond_2
    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 150
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 151
    :cond_3
    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 152
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 154
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_5

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    .line 158
    :pswitch_5
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 159
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v2

    goto/16 :goto_0

    .line 166
    :pswitch_6
    check-cast p1, Lorg/json/JSONObject;

    .line 168
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 170
    if-eqz p1, :cond_a

    .line 172
    :try_start_1
    const-string v0, "COLOR"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avocarrot/json2view/DynamicProperty;->convertColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_5

    .line 173
    :goto_2
    const-string v0, "CORNER"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 176
    :try_start_2
    const-string v0, "CORNER"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 178
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 179
    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 180
    const/16 v2, 0x8

    new-array v2, v2, [F

    .line 181
    invoke-static {v2, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 182
    const-string v4, "\\|"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 183
    array-length v0, v4

    array-length v5, v2

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v0, v1

    .line 184
    :goto_4
    if-ge v0, v5, :cond_6

    .line 186
    :try_start_3
    aget-object v6, v4, v0

    invoke-virtual {p0, v6}, Lcom/avocarrot/json2view/DynamicProperty;->convertDimenToPixel(Ljava/lang/String;)F

    move-result v6

    aput v6, v2, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 184
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 177
    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_3

    .line 187
    :catch_1
    move-exception v6

    .line 188
    aput v7, v2, v0

    goto :goto_5

    .line 191
    :cond_6
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 202
    :cond_7
    :goto_6
    const v0, 0xffffff

    .line 204
    const-string v2, "STROKECOLOR"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 205
    :try_start_4
    const-string v2, "STROKECOLOR"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/avocarrot/json2view/DynamicProperty;->convertColor(Ljava/lang/String;)I
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v0

    .line 207
    :cond_8
    :goto_7
    const-string v2, "STROKESIZE"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 208
    :try_start_5
    const-string v2, "STROKESIZE"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/avocarrot/json2view/DynamicProperty;->convertDimenToPixel(Ljava/lang/String;)F
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    move-result v1

    float-to-int v1, v1

    .line 210
    :cond_9
    :goto_8
    invoke-virtual {v3, v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_a
    move-object v2, v3

    .line 214
    goto/16 :goto_0

    .line 194
    :cond_b
    :try_start_6
    invoke-virtual {p0, v0}, Lcom/avocarrot/json2view/DynamicProperty;->convertDimenToPixel(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_6

    .line 195
    :catch_2
    move-exception v0

    .line 196
    invoke-virtual {v3, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    goto :goto_6

    .line 208
    :catch_3
    move-exception v2

    goto :goto_8

    .line 205
    :catch_4
    move-exception v2

    goto :goto_7

    .line 172
    :catch_5
    move-exception v0

    goto/16 :goto_2

    .line 161
    :catch_6
    move-exception v0

    goto/16 :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method convertColor(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 310
    const-string v0, "0x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 313
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method convertDimenToPixel(Ljava/lang/String;)F
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 317
    const-string v0, "dp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Lcom/avocarrot/json2view/DynamicHelper;->dpToPx(F)F

    move-result v0

    .line 330
    :goto_0
    return v0

    .line 319
    :cond_0
    const-string v0, "sp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Lcom/avocarrot/json2view/DynamicHelper;->spToPx(F)F

    move-result v0

    goto :goto_0

    .line 321
    :cond_1
    const-string v0, "px"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 322
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    .line 323
    :cond_2
    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 324
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-static {}, Lcom/avocarrot/json2view/DynamicHelper;->deviceWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    goto :goto_0

    .line 325
    :cond_3
    const-string v0, "match_parent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 326
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    .line 327
    :cond_4
    const-string v0, "wrap_content"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 328
    const/high16 v0, -0x40000000    # -2.0f

    goto :goto_0

    .line 330
    :cond_5
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method public getValueBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/avocarrot/json2view/DynamicProperty;->value:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getValueBitmapDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 299
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/avocarrot/json2view/DynamicProperty;->getValueBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public getValueBoolean()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 293
    const-class v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/avocarrot/json2view/DynamicProperty;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public getValueColor()I
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/avocarrot/json2view/DynamicProperty;->type:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    sget-object v1, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->COLOR:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    if-ne v0, v1, :cond_0

    const-class v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/avocarrot/json2view/DynamicProperty;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 276
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getValueFloat()F
    .locals 2

    .prologue
    .line 290
    const-class v0, Ljava/lang/Float;

    iget-object v1, p0, Lcom/avocarrot/json2view/DynamicProperty;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getValueGradientDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/avocarrot/json2view/DynamicProperty;->value:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getValueInt()I
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/avocarrot/json2view/DynamicProperty;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 283
    const-class v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/avocarrot/json2view/DynamicProperty;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 287
    :goto_0
    return v0

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/avocarrot/json2view/DynamicProperty;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 285
    invoke-virtual {p0}, Lcom/avocarrot/json2view/DynamicProperty;->getValueFloat()F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/avocarrot/json2view/DynamicProperty;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getValueInt(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 252
    .line 255
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 256
    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 268
    :goto_0
    return-object v0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 268
    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 261
    :catch_1
    move-exception v0

    .line 262
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    .line 263
    :catch_2
    move-exception v0

    .line 264
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 265
    :catch_3
    move-exception v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method

.method public getValueJSON()Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 305
    const-class v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/avocarrot/json2view/DynamicProperty;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method public getValueString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 279
    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/avocarrot/json2view/DynamicProperty;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/avocarrot/json2view/DynamicProperty;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
