.class public Lcom/avocarrot/json2view/DynamicHelper;
.super Ljava/lang/Object;
.source "DynamicHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avocarrot/json2view/DynamicHelper$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    return-void
.end method

.method public static applyAdjustBounds(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V
    .locals 2

    .prologue
    .line 738
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 739
    sget-object v0, Lcom/avocarrot/json2view/DynamicHelper$1;->$SwitchMap$com$avocarrot$json2view$DynamicProperty$TYPE:[I

    iget-object v1, p1, Lcom/avocarrot/json2view/DynamicProperty;->type:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    invoke-virtual {v1}, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 746
    :cond_0
    :goto_0
    return-void

    .line 741
    :pswitch_0
    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueBoolean()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    goto :goto_0

    .line 739
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public static applyBackground(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 411
    if-eqz p0, :cond_0

    .line 412
    sget-object v0, Lcom/avocarrot/json2view/DynamicHelper$1;->$SwitchMap$com$avocarrot$json2view$DynamicProperty$TYPE:[I

    iget-object v1, p1, Lcom/avocarrot/json2view/DynamicProperty;->type:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    invoke-virtual {v1}, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 414
    :pswitch_0
    invoke-virtual {p1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 418
    :pswitch_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avocarrot/json2view/DynamicHelper;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 422
    :pswitch_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_1

    .line 423
    invoke-virtual {p1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueBitmapDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 425
    :cond_1
    invoke-virtual {p1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueBitmapDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 429
    :pswitch_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_2

    .line 430
    invoke-virtual {p1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueGradientDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 432
    :cond_2
    invoke-virtual {p1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueGradientDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 412
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static applyClickable(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V
    .locals 2

    .prologue
    .line 528
    if-eqz p0, :cond_0

    .line 529
    sget-object v0, Lcom/avocarrot/json2view/DynamicHelper$1;->$SwitchMap$com$avocarrot$json2view$DynamicProperty$TYPE:[I

    iget-object v1, p1, Lcom/avocarrot/json2view/DynamicProperty;->type:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    invoke-virtual {v1}, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 531
    :pswitch_0
    invoke-virtual {p1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueBoolean()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 529
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public static applyCompoundDrawable(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;I)V
    .locals 6

    .prologue
    .line 674
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 675
    check-cast v0, Landroid/widget/TextView;

    .line 676
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 677
    sget-object v2, Lcom/avocarrot/json2view/DynamicHelper$1;->$SwitchMap$com$avocarrot$json2view$DynamicProperty$TYPE:[I

    iget-object v3, p1, Lcom/avocarrot/json2view/DynamicProperty;->type:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    invoke-virtual {v3}, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 693
    :goto_0
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    const/4 v4, 0x2

    aget-object v4, v1, v4

    const/4 v5, 0x3

    aget-object v1, v1, v5

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 695
    :cond_0
    return-void

    .line 680
    :pswitch_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/avocarrot/json2view/DynamicHelper;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 681
    :catch_0
    move-exception v2

    goto :goto_0

    .line 685
    :pswitch_1
    invoke-virtual {p1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueBitmapDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, p2

    goto :goto_0

    .line 689
    :pswitch_2
    invoke-virtual {p1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueGradientDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, p2

    goto :goto_0

    .line 677
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static applyEllipsize(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V
    .locals 1

    .prologue
    .line 633
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 634
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils$TruncateAt;->valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 636
    :cond_0
    return-void
.end method

.method public static applyEnabled(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V
    .locals 2

    .prologue
    .line 501
    if-eqz p0, :cond_0

    .line 502
    sget-object v0, Lcom/avocarrot/json2view/DynamicHelper$1;->$SwitchMap$com$avocarrot$json2view$DynamicProperty$TYPE:[I

    iget-object v1, p1, Lcom/avocarrot/json2view/DynamicProperty;->type:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    invoke-virtual {v1}, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 504
    :pswitch_0
    invoke-virtual {p1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueBoolean()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 502
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public static applyFunction(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V
    .locals 12

    .prologue
    const/4 v0, 0x0

    .line 792
    iget-object v1, p1, Lcom/avocarrot/json2view/DynamicProperty;->type:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    sget-object v2, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->JSON:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    if-ne v1, v2, :cond_0

    .line 794
    :try_start_0
    invoke-virtual {p1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueJSON()Lorg/json/JSONObject;

    move-result-object v1

    .line 796
    const-string v2, "function"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 797
    const-string v3, "args"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 801
    if-nez v3, :cond_1

    .line 802
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    .line 803
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 841
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 852
    :cond_0
    :goto_1
    return-void

    .line 806
    :cond_1
    :try_start_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 807
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 810
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    move v1, v0

    .line 811
    :goto_2
    if-ge v1, v6, :cond_5

    .line 812
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 813
    const-string v0, "primitive"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    .line 814
    if-eqz v8, :cond_3

    const-string v0, "primitive"

    :goto_3
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 816
    const-string v9, "."

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 817
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "java.lang."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 818
    :cond_2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 819
    if-eqz v8, :cond_4

    .line 820
    const-string v0, "TYPE"

    invoke-virtual {v9, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 821
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 827
    :goto_4
    :try_start_3
    const-string v0, "value"

    invoke-static {v7, v0, v9}, Lcom/avocarrot/json2view/DynamicHelper;->getFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 811
    :goto_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 814
    :cond_3
    :try_start_4
    const-string v0, "class"

    goto :goto_3

    .line 823
    :cond_4
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    .line 834
    :catch_0
    move-exception v0

    .line 835
    const/4 v0, 0x0

    :try_start_5
    new-array v1, v0, [Ljava/lang/Class;

    .line 836
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 828
    :catch_1
    move-exception v0

    .line 829
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 832
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    .line 833
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v5, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    .line 837
    goto/16 :goto_0

    .line 843
    :catch_2
    move-exception v0

    .line 844
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_1

    .line 847
    :catch_3
    move-exception v0

    .line 848
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 842
    :catch_4
    move-exception v0

    goto/16 :goto_1
.end method

.method public static applyGravity(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V
    .locals 2

    .prologue
    .line 653
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 654
    sget-object v0, Lcom/avocarrot/json2view/DynamicHelper$1;->$SwitchMap$com$avocarrot$json2view$DynamicProperty$TYPE:[I

    iget-object v1, p1, Lcom/avocarrot/json2view/DynamicProperty;->type:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    invoke-virtual {v1}, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 665
    :cond_0
    :goto_0
    return-void

    .line 656
    :pswitch_0
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 660
    :pswitch_1
    check-cast p0, Landroid/widget/TextView;

    const-class v0, Landroid/view/Gravity;

    invoke-virtual {p1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueInt(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 654
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static applyLayoutProperties(Landroid/view/View;Ljava/util/List;Landroid/view/ViewGroup;Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/avocarrot/json2view/DynamicProperty;",
            ">;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    if-nez p2, :cond_0

    .line 377
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-static {p2}, Lcom/avocarrot/json2view/DynamicHelper;->createLayoutParams(Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 189
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avocarrot/json2view/DynamicProperty;

    .line 191
    :try_start_0
    sget-object v2, Lcom/avocarrot/json2view/DynamicHelper$1;->$SwitchMap$com$avocarrot$json2view$DynamicProperty$NAME:[I

    iget-object v5, v1, Lcom/avocarrot/json2view/DynamicProperty;->name:Lcom/avocarrot/json2view/DynamicProperty$NAME;

    invoke-virtual {v5}, Lcom/avocarrot/json2view/DynamicProperty$NAME;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 193
    :pswitch_0
    invoke-virtual {v1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueInt()I

    move-result v1

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 372
    :catch_0
    move-exception v1

    goto :goto_1

    .line 197
    :pswitch_1
    invoke-virtual {v1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueInt()I

    move-result v1

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 201
    :pswitch_2
    instance-of v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_1

    .line 202
    move-object v0, v3

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v2, v0

    .line 203
    invoke-virtual {v1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueInt()I

    move-result v1

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    .line 208
    :pswitch_3
    instance-of v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_1

    .line 209
    move-object v0, v3

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v2, v0

    invoke-virtual {v1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueInt()I

    move-result v1

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    .line 214
    :pswitch_4
    instance-of v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_1

    .line 215
    move-object v0, v3

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v2, v0

    invoke-virtual {v1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueInt()I

    move-result v1

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    .line 220
    :pswitch_5
    instance-of v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_1

    .line 221
    move-object v0, v3

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v2, v0

    invoke-virtual {v1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueInt()I

    move-result v1

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    .line 226
    :pswitch_6
    instance-of v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_1

    .line 227
    move-object v0, v3

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v2, v0

    invoke-virtual {v1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueInt()I

    move-result v1

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    .line 232
    :pswitch_7
    instance-of v2, v3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_1

    .line 233
    move-object v0, v3

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v2, v0

    const/4 v5, 0x2

    invoke-virtual {v1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_1

    .line 237
    :pswitch_8
    instance-of v2, v3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_1

    .line 238
    move-object v0, v3

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v2, v0

    const/4 v5, 0x3

    invoke-virtual {v1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_1

    .line 242
    :pswitch_9
    instance-of v2, v3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_1

    .line 243
    move-object v0, v3

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v2, v0

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_1

    .line 247
    :pswitch_a
    instance-of v2, v3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_1

    .line 248
    move-object v0, v3

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v2, v0

    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_1

    .line 252
    :pswitch_b
    instance-of v2, v3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_1

    .line 253
    move-object v0, v3

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v2, v0

    const/16 v5, 0x10

    invoke-virtual {v1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_1

    .line 257
    :pswitch_c
    instance-of v2, v3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_1

    .line 258
    move-object v0, v3

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v2, v0

    const/16 v5, 0x11

    invoke-virtual {v1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_1

    .line 262
    :pswitch_d
    instance-of v2, v3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_1

    .line 263
    move-object v0, v3

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v2, v0

    const/4 v5, 0x4

    invoke-virtual {v1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_1

    .line 267
    :pswitch_e
    instance-of v2, v3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_1

    .line 268
    move-object v0, v3

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v2, v0

    const/4 v5, 0x5

    invoke-virtual {v1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_1

    .line 272
    :pswitch_f
    instance-of v2, v3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_1

    .line 273
    move-object v0, v3

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v2, v0

    const/4 v5, 0x6

    invoke-virtual {v1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_1

    .line 277
    :pswitch_10
    instance-of v2, v3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_1

    .line 278
    move-object v0, v3

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v2, v0

    const/4 v5, 0x7

    invoke-virtual {v1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_1

    .line 282
    :pswitch_11
    instance-of v2, v3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_1

    .line 283
    move-object v0, v3

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v2, v0

    const/16 v5, 0x8

    invoke-virtual {v1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_1

    .line 287
    :pswitch_12
    instance-of v2, v3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_1

    .line 288
    move-object v0, v3

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v2, v0

    const/16 v5, 0x12

    invoke-virtual {v1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_1

    .line 292
    :pswitch_13
    instance-of v2, v3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_1

    .line 293
    move-object v0, v3

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v2, v0

    const/16 v5, 0x13

    invoke-virtual {v1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_1

    .line 297
    :pswitch_14
    instance-of v2, v3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_1

    .line 298
    move-object v0, v3

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v2, v0

    invoke-virtual {v1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueBoolean()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    goto/16 :goto_1

    .line 302
    :pswitch_15
    instance-of v1, v3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_1

    .line 303
    move-object v0, v3

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v1, v0

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_1

    .line 307
    :pswitch_16
    instance-of v1, v3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_1

    .line 308
    move-object v0, v3

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v1, v0

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_1

    .line 312
    :pswitch_17
    instance-of v1, v3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_1

    .line 313
    move-object v0, v3

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v1, v0

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_1

    .line 317
    :pswitch_18
    instance-of v1, v3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_1

    .line 318
    move-object v0, v3

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v1, v0

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_1

    .line 322
    :pswitch_19
    instance-of v1, v3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_1

    .line 323
    move-object v0, v3

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v1, v0

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_1

    .line 327
    :pswitch_1a
    instance-of v1, v3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_1

    .line 328
    move-object v0, v3

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v1, v0

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_1

    .line 332
    :pswitch_1b
    instance-of v1, v3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_1

    .line 333
    move-object v0, v3

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v1, v0

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_1

    .line 337
    :pswitch_1c
    instance-of v1, v3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_1

    .line 338
    move-object v0, v3

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v1, v0

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_1

    .line 342
    :pswitch_1d
    instance-of v1, v3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_1

    .line 343
    move-object v0, v3

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v1, v0

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_1

    .line 347
    :pswitch_1e
    sget-object v2, Lcom/avocarrot/json2view/DynamicHelper$1;->$SwitchMap$com$avocarrot$json2view$DynamicProperty$TYPE:[I

    iget-object v5, v1, Lcom/avocarrot/json2view/DynamicProperty;->type:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    invoke-virtual {v5}, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_1

    .line 349
    :pswitch_1f
    instance-of v2, v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_1

    .line 350
    move-object v0, v3

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    move-object v2, v0

    invoke-virtual {v1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueInt()I

    move-result v1

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto/16 :goto_1

    .line 354
    :pswitch_20
    instance-of v2, v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_1

    .line 355
    move-object v0, v3

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    move-object v2, v0

    const-class v5, Landroid/view/Gravity;

    invoke-virtual {v1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/avocarrot/json2view/DynamicProperty;->getValueInt(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto/16 :goto_1

    .line 362
    :pswitch_21
    sget-object v2, Lcom/avocarrot/json2view/DynamicHelper$1;->$SwitchMap$com$avocarrot$json2view$DynamicProperty$TYPE:[I

    iget-object v5, v1, Lcom/avocarrot/json2view/DynamicProperty;->type:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    invoke-virtual {v5}, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_2

    goto/16 :goto_1

    .line 364
    :pswitch_22
    instance-of v2, v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_1

    .line 365
    move-object v0, v3

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    move-object v2, v0

    invoke-virtual {v1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueFloat()F

    move-result v1

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 376
    :cond_2
    invoke-virtual {p0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_21
    .end packed-switch

    .line 347
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_20
    .end packed-switch

    .line 362
    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_22
    .end packed-switch
.end method

.method public static applyMaxLines(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V
    .locals 1

    .prologue
    .line 642
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 643
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 645
    :cond_0
    return-void
.end method

.method public static applyMinHeight(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V
    .locals 2

    .prologue
    .line 490
    if-eqz p0, :cond_0

    .line 491
    iget-object v0, p1, Lcom/avocarrot/json2view/DynamicProperty;->type:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    sget-object v1, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->DIMEN:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    if-ne v0, v1, :cond_0

    .line 492
    invoke-virtual {p1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 495
    :cond_0
    return-void
.end method

.method public static applyMinWidth(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V
    .locals 2

    .prologue
    .line 479
    if-eqz p0, :cond_0

    .line 480
    iget-object v0, p1, Lcom/avocarrot/json2view/DynamicProperty;->type:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    sget-object v1, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->DIMEN:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    if-ne v0, v1, :cond_0

    .line 481
    invoke-virtual {p1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 484
    :cond_0
    return-void
.end method

.method public static applyOrientation(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 756
    instance-of v2, p0, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 757
    sget-object v2, Lcom/avocarrot/json2view/DynamicHelper$1;->$SwitchMap$com$avocarrot$json2view$DynamicProperty$TYPE:[I

    iget-object v3, p1, Lcom/avocarrot/json2view/DynamicProperty;->type:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    invoke-virtual {v3}, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 768
    :cond_0
    :goto_0
    return-void

    .line 759
    :pswitch_0
    check-cast p0, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueInt()I

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 763
    :pswitch_1
    check-cast p0, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HORIZONTAL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    .line 757
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static applyPadding(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V
    .locals 2

    .prologue
    .line 443
    if-eqz p0, :cond_0

    .line 444
    sget-object v0, Lcom/avocarrot/json2view/DynamicHelper$1;->$SwitchMap$com$avocarrot$json2view$DynamicProperty$TYPE:[I

    iget-object v1, p1, Lcom/avocarrot/json2view/DynamicProperty;->type:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    invoke-virtual {v1}, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 446
    :pswitch_0
    invoke-virtual {p1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueInt()I

    move-result v0

    .line 447
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 444
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public static applyPadding(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;I)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 458
    if-eqz p0, :cond_0

    .line 459
    sget-object v0, Lcom/avocarrot/json2view/DynamicHelper$1;->$SwitchMap$com$avocarrot$json2view$DynamicProperty$TYPE:[I

    iget-object v1, p1, Lcom/avocarrot/json2view/DynamicProperty;->type:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    invoke-virtual {v1}, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 461
    :pswitch_0
    const/4 v0, 0x4

    new-array v0, v0, [I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    aput v1, v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    aput v1, v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    aput v1, v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    aput v1, v0, v5

    .line 467
    invoke-virtual {p1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueInt()I

    move-result v1

    aput v1, v0, p2

    .line 468
    aget v1, v0, v2

    aget v2, v0, v3

    aget v3, v0, v4

    aget v0, v0, v5

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 459
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public static applyScaleType(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V
    .locals 2

    .prologue
    .line 724
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 725
    sget-object v0, Lcom/avocarrot/json2view/DynamicHelper$1;->$SwitchMap$com$avocarrot$json2view$DynamicProperty$TYPE:[I

    iget-object v1, p1, Lcom/avocarrot/json2view/DynamicProperty;->type:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    invoke-virtual {v1}, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 727
    :pswitch_0
    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/ImageView$ScaleType;->valueOf(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 725
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static applyScaleX(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V
    .locals 2

    .prologue
    .line 542
    if-eqz p0, :cond_0

    .line 543
    sget-object v0, Lcom/avocarrot/json2view/DynamicHelper$1;->$SwitchMap$com$avocarrot$json2view$DynamicProperty$TYPE:[I

    iget-object v1, p1, Lcom/avocarrot/json2view/DynamicProperty;->type:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    invoke-virtual {v1}, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 545
    :pswitch_0
    invoke-virtual {p1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    goto :goto_0

    .line 543
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public static applyScaleY(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V
    .locals 2

    .prologue
    .line 556
    if-eqz p0, :cond_0

    .line 557
    sget-object v0, Lcom/avocarrot/json2view/DynamicHelper$1;->$SwitchMap$com$avocarrot$json2view$DynamicProperty$TYPE:[I

    iget-object v1, p1, Lcom/avocarrot/json2view/DynamicProperty;->type:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    invoke-virtual {v1}, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 559
    :pswitch_0
    invoke-virtual {p1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 557
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public static applySelected(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V
    .locals 2

    .prologue
    .line 515
    if-eqz p0, :cond_0

    .line 516
    sget-object v0, Lcom/avocarrot/json2view/DynamicHelper$1;->$SwitchMap$com$avocarrot$json2view$DynamicProperty$TYPE:[I

    iget-object v1, p1, Lcom/avocarrot/json2view/DynamicProperty;->type:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    invoke-virtual {v1}, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 518
    :pswitch_0
    invoke-virtual {p1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueBoolean()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 516
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public static applySrc(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V
    .locals 3

    .prologue
    .line 706
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 707
    sget-object v0, Lcom/avocarrot/json2view/DynamicHelper$1;->$SwitchMap$com$avocarrot$json2view$DynamicProperty$TYPE:[I

    iget-object v1, p1, Lcom/avocarrot/json2view/DynamicProperty;->type:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    invoke-virtual {v1}, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 718
    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object v0, p0

    .line 709
    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avocarrot/json2view/DynamicHelper;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 713
    :pswitch_1
    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 707
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static applyStyleProperties(Landroid/view/View;Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/avocarrot/json2view/DynamicProperty;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 40
    const-string v1, ""

    .line 41
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avocarrot/json2view/DynamicProperty;

    .line 42
    sget-object v3, Lcom/avocarrot/json2view/DynamicHelper$1;->$SwitchMap$com$avocarrot$json2view$DynamicProperty$NAME:[I

    iget-object v4, v0, Lcom/avocarrot/json2view/DynamicProperty;->name:Lcom/avocarrot/json2view/DynamicProperty$NAME;

    invoke-virtual {v4}, Lcom/avocarrot/json2view/DynamicProperty$NAME;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :goto_1
    move-object v0, v1

    :goto_2
    move-object v1, v0

    .line 172
    goto :goto_0

    .line 44
    :pswitch_0
    invoke-virtual {v0}, Lcom/avocarrot/json2view/DynamicProperty;->getValueString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 48
    :pswitch_1
    invoke-static {p0, v0}, Lcom/avocarrot/json2view/DynamicHelper;->applyBackground(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V

    move-object v0, v1

    .line 50
    goto :goto_2

    .line 52
    :pswitch_2
    invoke-static {p0, v0}, Lcom/avocarrot/json2view/DynamicHelper;->applyText(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V

    move-object v0, v1

    .line 54
    goto :goto_2

    .line 56
    :pswitch_3
    invoke-static {p0, v0}, Lcom/avocarrot/json2view/DynamicHelper;->applyTextColor(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V

    move-object v0, v1

    .line 58
    goto :goto_2

    .line 60
    :pswitch_4
    invoke-static {p0, v0}, Lcom/avocarrot/json2view/DynamicHelper;->applyTextSize(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V

    move-object v0, v1

    .line 62
    goto :goto_2

    .line 64
    :pswitch_5
    invoke-static {p0, v0}, Lcom/avocarrot/json2view/DynamicHelper;->applyTextStyle(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V

    move-object v0, v1

    .line 66
    goto :goto_2

    .line 68
    :pswitch_6
    invoke-static {p0, v0}, Lcom/avocarrot/json2view/DynamicHelper;->applyPadding(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V

    move-object v0, v1

    .line 70
    goto :goto_2

    .line 72
    :pswitch_7
    invoke-static {p0, v0, v5}, Lcom/avocarrot/json2view/DynamicHelper;->applyPadding(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;I)V

    move-object v0, v1

    .line 74
    goto :goto_2

    .line 76
    :pswitch_8
    invoke-static {p0, v0, v6}, Lcom/avocarrot/json2view/DynamicHelper;->applyPadding(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;I)V

    move-object v0, v1

    .line 78
    goto :goto_2

    .line 80
    :pswitch_9
    invoke-static {p0, v0, v7}, Lcom/avocarrot/json2view/DynamicHelper;->applyPadding(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;I)V

    move-object v0, v1

    .line 82
    goto :goto_2

    .line 84
    :pswitch_a
    invoke-static {p0, v0, v8}, Lcom/avocarrot/json2view/DynamicHelper;->applyPadding(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;I)V

    move-object v0, v1

    .line 86
    goto :goto_2

    .line 88
    :pswitch_b
    invoke-static {p0, v0}, Lcom/avocarrot/json2view/DynamicHelper;->applyMinWidth(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V

    move-object v0, v1

    .line 90
    goto :goto_2

    .line 92
    :pswitch_c
    invoke-static {p0, v0}, Lcom/avocarrot/json2view/DynamicHelper;->applyMinHeight(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V

    move-object v0, v1

    .line 94
    goto :goto_2

    .line 96
    :pswitch_d
    invoke-static {p0, v0}, Lcom/avocarrot/json2view/DynamicHelper;->applyEllipsize(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V

    move-object v0, v1

    .line 98
    goto :goto_2

    .line 100
    :pswitch_e
    invoke-static {p0, v0}, Lcom/avocarrot/json2view/DynamicHelper;->applyMaxLines(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V

    move-object v0, v1

    .line 102
    goto :goto_2

    .line 104
    :pswitch_f
    invoke-static {p0, v0}, Lcom/avocarrot/json2view/DynamicHelper;->applyOrientation(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V

    move-object v0, v1

    .line 106
    goto :goto_2

    .line 108
    :pswitch_10
    invoke-static {p0, v0}, Lcom/avocarrot/json2view/DynamicHelper;->applyWeightSum(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V

    move-object v0, v1

    .line 110
    goto :goto_2

    .line 112
    :pswitch_11
    invoke-static {p0, v0}, Lcom/avocarrot/json2view/DynamicHelper;->applyGravity(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V

    move-object v0, v1

    .line 114
    goto :goto_2

    .line 116
    :pswitch_12
    invoke-static {p0, v0}, Lcom/avocarrot/json2view/DynamicHelper;->applySrc(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V

    move-object v0, v1

    .line 118
    goto :goto_2

    .line 120
    :pswitch_13
    invoke-static {p0, v0}, Lcom/avocarrot/json2view/DynamicHelper;->applyScaleType(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V

    move-object v0, v1

    .line 122
    goto :goto_2

    .line 124
    :pswitch_14
    invoke-static {p0, v0}, Lcom/avocarrot/json2view/DynamicHelper;->applyAdjustBounds(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V

    move-object v0, v1

    .line 126
    goto :goto_2

    .line 128
    :pswitch_15
    invoke-static {p0, v0, v5}, Lcom/avocarrot/json2view/DynamicHelper;->applyCompoundDrawable(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;I)V

    move-object v0, v1

    .line 130
    goto :goto_2

    .line 132
    :pswitch_16
    invoke-static {p0, v0, v6}, Lcom/avocarrot/json2view/DynamicHelper;->applyCompoundDrawable(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;I)V

    move-object v0, v1

    .line 134
    goto :goto_2

    .line 136
    :pswitch_17
    invoke-static {p0, v0, v7}, Lcom/avocarrot/json2view/DynamicHelper;->applyCompoundDrawable(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;I)V

    move-object v0, v1

    .line 138
    goto :goto_2

    .line 140
    :pswitch_18
    invoke-static {p0, v0, v8}, Lcom/avocarrot/json2view/DynamicHelper;->applyCompoundDrawable(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;I)V

    move-object v0, v1

    .line 142
    goto :goto_2

    .line 144
    :pswitch_19
    invoke-static {p0, v0}, Lcom/avocarrot/json2view/DynamicHelper;->applyEnabled(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V

    move-object v0, v1

    .line 146
    goto/16 :goto_2

    .line 148
    :pswitch_1a
    invoke-static {p0, v0}, Lcom/avocarrot/json2view/DynamicHelper;->applySelected(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V

    move-object v0, v1

    .line 150
    goto/16 :goto_2

    .line 152
    :pswitch_1b
    invoke-static {p0, v0}, Lcom/avocarrot/json2view/DynamicHelper;->applyClickable(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V

    move-object v0, v1

    .line 154
    goto/16 :goto_2

    .line 156
    :pswitch_1c
    invoke-static {p0, v0}, Lcom/avocarrot/json2view/DynamicHelper;->applyScaleX(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V

    move-object v0, v1

    .line 158
    goto/16 :goto_2

    .line 160
    :pswitch_1d
    invoke-static {p0, v0}, Lcom/avocarrot/json2view/DynamicHelper;->applyScaleY(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V

    move-object v0, v1

    .line 162
    goto/16 :goto_2

    .line 164
    :pswitch_1e
    invoke-static {p0, v0}, Lcom/avocarrot/json2view/DynamicHelper;->applyTag(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V

    move-object v0, v1

    .line 166
    goto/16 :goto_2

    .line 168
    :pswitch_1f
    invoke-static {p0, v0}, Lcom/avocarrot/json2view/DynamicHelper;->applyFunction(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V

    goto/16 :goto_1

    .line 173
    :cond_0
    return-object v1

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
    .end packed-switch
.end method

.method public static applyTag(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V
    .locals 1

    .prologue
    .line 783
    invoke-virtual {p1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 784
    return-void
.end method

.method public static applyText(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V
    .locals 3

    .prologue
    .line 574
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 575
    sget-object v0, Lcom/avocarrot/json2view/DynamicHelper$1;->$SwitchMap$com$avocarrot$json2view$DynamicProperty$TYPE:[I

    iget-object v1, p1, Lcom/avocarrot/json2view/DynamicProperty;->type:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    invoke-virtual {v1}, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 586
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 577
    :pswitch_1
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    move-object v0, p0

    .line 581
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avocarrot/json2view/DynamicHelper;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 575
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static applyTextColor(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V
    .locals 2

    .prologue
    .line 592
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 593
    sget-object v0, Lcom/avocarrot/json2view/DynamicHelper$1;->$SwitchMap$com$avocarrot$json2view$DynamicProperty$TYPE:[I

    iget-object v1, p1, Lcom/avocarrot/json2view/DynamicProperty;->type:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    invoke-virtual {v1}, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 595
    :pswitch_0
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 593
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public static applyTextSize(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V
    .locals 2

    .prologue
    .line 606
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 607
    sget-object v0, Lcom/avocarrot/json2view/DynamicHelper$1;->$SwitchMap$com$avocarrot$json2view$DynamicProperty$TYPE:[I

    iget-object v1, p1, Lcom/avocarrot/json2view/DynamicProperty;->type:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    invoke-virtual {v1}, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 609
    :pswitch_0
    check-cast p0, Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueFloat()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 607
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public static applyTextStyle(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V
    .locals 2

    .prologue
    .line 619
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 620
    sget-object v0, Lcom/avocarrot/json2view/DynamicHelper$1;->$SwitchMap$com$avocarrot$json2view$DynamicProperty$TYPE:[I

    iget-object v1, p1, Lcom/avocarrot/json2view/DynamicProperty;->type:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    invoke-virtual {v1}, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 622
    :pswitch_0
    check-cast p0, Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 620
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static applyWeightSum(Landroid/view/View;Lcom/avocarrot/json2view/DynamicProperty;)V
    .locals 2

    .prologue
    .line 774
    instance-of v0, p0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/avocarrot/json2view/DynamicProperty;->type:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    sget-object v1, Lcom/avocarrot/json2view/DynamicProperty$TYPE;->FLOAT:Lcom/avocarrot/json2view/DynamicProperty$TYPE;

    if-ne v0, v1, :cond_0

    .line 775
    check-cast p0, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcom/avocarrot/json2view/DynamicProperty;->getValueFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 777
    :cond_0
    return-void
.end method

.method public static classExists(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 972
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 973
    const/4 v0, 0x1

    .line 975
    :goto_0
    return v0

    .line 974
    :catch_0
    move-exception v0

    .line 975
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createLayoutParams(Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;
    .locals 6

    .prologue
    const/4 v5, -0x2

    .line 380
    const/4 v1, 0x0

    .line 381
    if-eqz p0, :cond_2

    .line 384
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 385
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$LayoutParams"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avocarrot/json2view/DynamicHelper;->classExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 386
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 388
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "$LayoutParams"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 391
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, -0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :goto_1
    if-nez v0, :cond_1

    .line 397
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 399
    :cond_1
    return-object v0

    .line 392
    :catch_0
    move-exception v0

    .line 393
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public static deviceWidth()I
    .locals 1

    .prologue
    .line 911
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static dpToPx(F)F
    .locals 2

    .prologue
    .line 874
    const/4 v0, 0x1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public static dpToSp(F)F
    .locals 2

    .prologue
    .line 904
    invoke-static {p0}, Lcom/avocarrot/json2view/DynamicHelper;->dpToPx(F)F

    move-result v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    return v0
.end method

.method public static getDrawableId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 860
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 950
    const-class v0, Ljava/lang/Integer;

    if-eq p2, v0, :cond_0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_1

    .line 951
    :cond_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 965
    :goto_0
    return-object v0

    .line 952
    :cond_1
    const-class v0, Ljava/lang/Boolean;

    if-eq p2, v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_3

    .line 953
    :cond_2
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 954
    :cond_3
    const-class v0, Ljava/lang/Double;

    if-eq p2, v0, :cond_4

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_5

    .line 955
    :cond_4
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 956
    :cond_5
    const-class v0, Ljava/lang/Float;

    if-eq p2, v0, :cond_6

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_7

    .line 957
    :cond_6
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 958
    :cond_7
    const-class v0, Ljava/lang/Long;

    if-eq p2, v0, :cond_8

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_9

    .line 959
    :cond_8
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 960
    :cond_9
    const-class v0, Ljava/lang/String;

    if-ne p2, v0, :cond_a

    .line 961
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 962
    :cond_a
    const-class v0, Lorg/json/JSONObject;

    if-ne p2, v0, :cond_b

    .line 963
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 965
    :cond_b
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static getStringId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 867
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static parseDynamicView(Ljava/lang/Object;Landroid/view/View;Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 920
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    .line 921
    const-class v0, Lcom/avocarrot/json2view/DynamicViewId;

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 923
    const-class v0, Lcom/avocarrot/json2view/DynamicViewId;

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/avocarrot/json2view/DynamicViewId;

    .line 925
    invoke-interface {v0}, Lcom/avocarrot/json2view/DynamicViewId;->id()Ljava/lang/String;

    move-result-object v0

    .line 926
    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 927
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 928
    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 931
    :try_start_0
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v4, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 920
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 933
    :catch_0
    move-exception v0

    .line 934
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 937
    :cond_2
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "ids"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-ne v0, v5, :cond_1

    .line 939
    :try_start_1
    invoke-virtual {v4, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 940
    :catch_1
    move-exception v0

    goto :goto_1

    .line 941
    :catch_2
    move-exception v0

    .line 942
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 947
    :cond_3
    return-void

    .line 932
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public static pxToDp(I)F
    .locals 2

    .prologue
    .line 889
    int-to-float v0, p0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    return v0
.end method

.method public static pxToSp(I)F
    .locals 2

    .prologue
    .line 896
    int-to-float v0, p0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v0, v1

    return v0
.end method

.method public static spToPx(F)F
    .locals 2

    .prologue
    .line 882
    const/4 v0, 0x2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method
