.class public Lcom/samsung/android/app/galaxyraw/util/HistogramUtil;
.super Ljava/lang/Object;
.source "HistogramUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fillMissingHistogramValues([I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    const/4 v0, 0x2

    move v1, v0

    :goto_0
    const/16 v2, 0xfe

    if-ge v1, v2, :cond_0

    aget v2, p0, v1

    add-int/lit8 v3, v1, -0x1

    aget v3, p0, v3

    add-int/lit8 v4, v1, 0x1

    aget v5, p0, v4

    add-int/2addr v3, v5

    div-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, p0, v1

    move v1, v4

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getHistogram(Landroid/content/Context;[BII)[I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "data",
            "width",
            "height"
        }
    .end annotation

    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p0

    new-instance v0, Landroid/renderscript/Type$Builder;

    invoke-static {p0}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    invoke-virtual {v0, p2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p0, p2, p3}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/renderscript/Allocation;->copyFrom([B)V

    invoke-static {p0}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object p1

    const/16 v0, 0x100

    invoke-static {p0, p1, v0}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;

    move-result-object p1

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/renderscript/ScriptIntrinsicHistogram;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicHistogram;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/renderscript/ScriptIntrinsicHistogram;->setOutput(Landroid/renderscript/Allocation;)V

    invoke-virtual {v1, p3}, Landroid/renderscript/ScriptIntrinsicHistogram;->forEach(Landroid/renderscript/Allocation;)V

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/renderscript/Allocation;->copyTo([I)V

    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->destroy()V

    invoke-virtual {p2}, Landroid/renderscript/Type;->destroy()V

    invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsicHistogram;->destroy()V

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->destroy()V

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->destroy()V

    return-object v0
.end method

.method public static getTunedHistogram([IIII)[I
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "histogram",
            "contrastLV",
            "highlightLV",
            "shadowLV"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    array-length v4, v0

    const/16 v5, 0x100

    if-eq v4, v5, :cond_0

    return-object v0

    :cond_0
    const/16 v4, -0x64

    if-lt v1, v4, :cond_b

    const/16 v6, 0x64

    if-le v1, v6, :cond_1

    goto/16 :goto_7

    :cond_1
    if-lt v2, v4, :cond_b

    if-le v2, v6, :cond_2

    goto/16 :goto_7

    :cond_2
    if-lt v3, v4, :cond_b

    if-le v3, v6, :cond_3

    goto/16 :goto_7

    :cond_3
    const/high16 v4, 0x43480000    # 200.0f

    const/4 v6, 0x0

    if-nez v1, :cond_4

    move v1, v6

    goto :goto_0

    :cond_4
    int-to-float v1, v1

    div-float/2addr v1, v4

    :goto_0
    cmpl-float v7, v1, v6

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f000000    # 0.5f

    if-lez v7, :cond_5

    goto :goto_1

    :cond_5
    mul-float/2addr v1, v9

    :goto_1
    add-float/2addr v1, v8

    const/high16 v7, 0x3e800000    # 0.25f

    if-nez v2, :cond_6

    move v2, v6

    goto :goto_2

    :cond_6
    int-to-float v2, v2

    div-float/2addr v2, v4

    mul-float/2addr v2, v7

    :goto_2
    cmpl-float v10, v2, v6

    const/high16 v11, -0x40800000    # -1.0f

    if-lez v10, :cond_7

    add-float/2addr v2, v9

    goto :goto_3

    :cond_7
    mul-float/2addr v2, v11

    add-float/2addr v2, v9

    move/from16 v17, v9

    move v9, v2

    move/from16 v2, v17

    :goto_3
    if-nez v3, :cond_8

    move v3, v6

    goto :goto_4

    :cond_8
    int-to-float v3, v3

    div-float/2addr v3, v4

    mul-float/2addr v3, v7

    :goto_4
    cmpl-float v4, v3, v6

    if-lez v4, :cond_9

    move v4, v6

    goto :goto_5

    :cond_9
    mul-float/2addr v3, v11

    move v4, v3

    move v3, v6

    :goto_5
    sub-float/2addr v9, v3

    sub-float/2addr v2, v4

    new-array v7, v5, [I

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v5, :cond_a

    int-to-float v11, v10

    const/high16 v12, 0x437f0000    # 255.0f

    div-float/2addr v11, v12

    float-to-double v13, v11

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v13, v15

    double-to-float v11, v13

    mul-float/2addr v11, v1

    float-to-double v13, v11

    add-double/2addr v13, v15

    double-to-float v11, v13

    sub-float/2addr v11, v3

    div-float/2addr v11, v9

    mul-float/2addr v11, v2

    add-float/2addr v11, v4

    invoke-static {v8, v11}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v6, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    aget v12, v7, v11

    aget v13, v0, v10

    add-int/2addr v12, v13

    aput v12, v7, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_a
    return-object v7

    :cond_b
    :goto_7
    return-object v0
.end method

.method public static smoothHistogram([I)[I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "originalHistogramValues"
        }
    .end annotation

    const/16 v0, 0x200

    new-array v0, v0, [I

    const/4 v1, 0x0

    aget v2, p0, v1

    aput v2, v0, v1

    const/4 v1, 0x1

    aget v2, p0, v1

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v2, 0x4

    :goto_0
    const/16 v3, 0x1fc

    if-gt v2, v3, :cond_0

    div-int/lit8 v3, v2, 0x2

    aget v3, p0, v3

    aput v3, v0, v2

    add-int/lit8 v3, v2, -0x1

    add-int/lit8 v4, v2, -0x2

    aget v4, v0, v4

    aget v5, v0, v2

    add-int/2addr v4, v5

    div-int/2addr v4, v1

    aput v4, v0, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    const/16 v1, 0x1fe

    const/16 v2, 0x1fd

    const/16 v3, 0xfe

    aget v3, p0, v3

    aput v3, v0, v2

    aput v3, v0, v1

    const/16 v1, 0x1ff

    const/16 v2, 0xff

    aget p0, p0, v2

    aput p0, v0, v1

    return-object v0
.end method
