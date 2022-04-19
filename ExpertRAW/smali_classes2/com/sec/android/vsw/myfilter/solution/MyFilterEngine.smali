.class public Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;
.super Ljava/lang/Object;
.source "MyFilterEngine.java"


# static fields
.field public static final RET_MYFILTER_ERROR1:I = 0x2

.field public static final RET_MYFILTER_ERROR2:I = 0x3

.field public static final RET_MYFILTER_INSIMG:I = 0x1

.field public static final RET_MYFILTER_OK:I = 0x0

.field protected static final _TAG:Ljava/lang/String; = "MyFilterEngine-AAR,121,200922"

.field protected static final _defaultLutPath:Ljava/lang/String; = "default.png"

.field public static final _feedImgPath:Ljava/lang/String; = "/sdcard/DCIM/MyFilter/models/tf-feed.png"

.field private static final _grainCropShape:I = 0x40

.field public static _myfilterAuxData:[B = null

.field protected static final _myfilterBasePath:Ljava/lang/String; = "/sdcard/DCIM/MyFilter/"

.field protected static final _myfilterCapturePath:Ljava/lang/String; = "/sdcard/DCIM/MyFilter/captured/"

.field public static final _myfilterDefaultLutPath:Ljava/lang/String; = "/sdcard/DCIM/MyFilter/models/default.png"

.field public static _myfilterJsonString:Ljava/lang/String; = null

.field public static final _myfilterLutPath:Ljava/lang/String; = "/sdcard/DCIM/MyFilter/models/myfilter_lut.png"

.field public static final _myfilterMaskPath:Ljava/lang/String; = "/sdcard/DCIM/MyFilter/models/mask.png"

.field protected static final _myfilterModelPath:Ljava/lang/String; = "/sdcard/DCIM/MyFilter/models/"

.field private static _myfilterTfliteColorModelPath:Ljava/lang/String; = "/system/cameradata/myfilter/MyFilterModel.tflite"

.field private static _myfilterTfliteGrainModelPath:Ljava/lang/String; = "/system/cameradata/myfilter/MyFilterGrainModel.tflite"

.field private static _myfilterTfliteVignettingModelPath:Ljava/lang/String; = "/system/cameradata/myfilter/MyFilterVignettingModel.pt"

.field public static final _restImgPath:Ljava/lang/String; = "/sdcard/DCIM/MyFilter/models/tf-output.png"

.field private static final _sizeCnnSquareShape:I = 0x100

.field private static final _sizeLutSquareShape:I = 0x200

.field private static final _vigImgShape:I = 0x100

.field private static final _vignettingIndexEnd:I = 0x80

.field private static final _vignettingIndexStart:I = 0x78

.field public static final auxDataSizeMax:I = 0x10000

.field private static bmpGrain:Landroid/graphics/Bitmap; = null

.field protected static mContext:Landroid/content/Context; = null

.field protected static mDebugMode:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x10000

    new-array v0, v0, [B

    sput-object v0, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->_myfilterAuxData:[B

    const-string v0, "MyFilter.camera.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native GenerateVignettingMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[F[B)V
.end method

.method public static native GetLibVersion()Ljava/lang/String;
.end method

.method public static native Init(II)V
.end method

.method public static native ProcessBitmap(Landroid/graphics/Bitmap;[BIID)V
.end method

.method public static native ProcessBitmapV2(Landroid/graphics/Bitmap;[BLandroid/graphics/Bitmap;[BLjava/lang/String;D)V
.end method

.method public static native ProcessNV21([BLandroid/graphics/Bitmap;IIZDZ)V
.end method

.method public static native ProcessRGBA([B[B[BIID)V
.end method

.method public static native ProcessRestoration(Ljava/lang/String;[F[F)V
.end method

.method public static native ProcessRestorationV2(Ljava/lang/String;Ljava/lang/String;[F[F[F[FII)V
.end method

.method public static native Release()V
.end method

.method public static extractStyle(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I
    .locals 11

    const-string v0, "MyFilterEngine-AAR,121,200922"

    const-string v1, "extractStyle - Begin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->mDebugMode:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->prepareStorage()V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/16 v3, 0x100

    invoke-static {p0, v3, v3}, Lcom/sec/android/vsw/myfilter/solution/utils/MyFilterImageUtil;->resize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/vsw/myfilter/solution/utils/MyFilterImageUtil;->toFloats(Landroid/graphics/Bitmap;)[F

    move-result-object v4

    invoke-static {p0}, Lcom/sec/android/vsw/myfilter/solution/utils/MyFilterImageUtil;->toFloats(Landroid/graphics/Bitmap;)[F

    move-result-object v5

    sget-object v6, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->_myfilterTfliteColorModelPath:Ljava/lang/String;

    invoke-static {v6, v4, v5}, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->ProcessRestoration(Ljava/lang/String;[F[F)V

    invoke-static {v5, v3, v3}, Lcom/sec/android/vsw/myfilter/solution/utils/MyFilterImageUtil;->toBitmap([FII)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    if-nez v4, :cond_1

    const/4 v8, 0x2

    goto :goto_0

    :cond_1
    move v8, v7

    :goto_0
    invoke-static {v4, v3, v3}, Lcom/sec/android/vsw/myfilter/solution/utils/MyFilterImageUtil;->resize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v4, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->mContext:Landroid/content/Context;

    const-string v9, "default.png"

    invoke-static {v4, v9}, Lcom/sec/android/vsw/myfilter/solution/utils/MyFilterUtil;->loadBitmapFromAssets(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    const/16 v9, 0x200

    invoke-static {v4, v9, v9, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {p0, v3, v4, p1, v7}, Lcom/sec/android/vsw/myfilter/solution/optimizer/MyFilterCeresOptimizer;->extractStyle(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v8, 0x3

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sget-boolean v7, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->mDebugMode:Z

    if-eqz v7, :cond_3

    const-string v7, "/sdcard/DCIM/MyFilter/models/tf-feed.png"

    invoke-static {p0, v7}, Lcom/sec/android/vsw/myfilter/solution/utils/MyFilterImageUtil;->dump(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    const-string p0, "/sdcard/DCIM/MyFilter/models/tf-output.png"

    invoke-static {v3, p0}, Lcom/sec/android/vsw/myfilter/solution/utils/MyFilterImageUtil;->dump(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    const-string p0, "/sdcard/DCIM/MyFilter/models/default.png"

    invoke-static {v4, p0}, Lcom/sec/android/vsw/myfilter/solution/utils/MyFilterImageUtil;->dump(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    const-string p0, "/sdcard/DCIM/MyFilter/models/myfilter_lut.png"

    invoke-static {p1, p0}, Lcom/sec/android/vsw/myfilter/solution/utils/MyFilterImageUtil;->dump(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    sub-long p0, v9, v1

    sub-long v1, v5, v1

    sub-long/2addr v9, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Total: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "ms, Proc1: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "ms, Proc2: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extractStyle - "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "extractStyle - End, "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v8
.end method

.method public static extractStyle(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "MyFilterEngine-AAR,121,200922"

    const-string v1, "extractStyle - Begin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extractStyle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v2, 0x200

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v2, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0, v1}, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->extractStyle(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sub-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "ms"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extractStyle - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "extractStyle - End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static extractStyleV2(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[B[Ljava/lang/String;[F)I
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    const-string v8, "MyFilterEngine-AAR,121,200922"

    const-string v1, "extractStyleV2 - Begin"

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->mDebugMode:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->prepareStorage()V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/16 v1, 0x100

    invoke-static {v0, v1, v1}, Lcom/sec/android/vsw/myfilter/solution/utils/MyFilterImageUtil;->resize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v11

    const/4 v12, 0x0

    const/16 v2, 0x40

    invoke-static {v0, v12, v12, v2, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/vsw/myfilter/solution/utils/MyFilterImageUtil;->toFloats(Landroid/graphics/Bitmap;)[F

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v0, v4, v12, v2, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/vsw/myfilter/solution/utils/MyFilterImageUtil;->toFloats(Landroid/graphics/Bitmap;)[F

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-static {v0, v12, v5, v2, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/vsw/myfilter/solution/utils/MyFilterImageUtil;->toFloats(Landroid/graphics/Bitmap;)[F

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    sub-int/2addr v13, v2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    sub-int/2addr v14, v2

    invoke-static {v0, v13, v14, v2, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/vsw/myfilter/solution/utils/MyFilterImageUtil;->toFloats(Landroid/graphics/Bitmap;)[F

    move-result-object v0

    array-length v2, v3

    const/4 v13, 0x4

    mul-int/2addr v2, v13

    new-array v2, v2, [F

    array-length v14, v3

    invoke-static {v3, v12, v2, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v14, v3

    array-length v15, v3

    invoke-static {v4, v12, v2, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v3

    const/16 v22, 0x2

    mul-int/lit8 v4, v4, 0x2

    array-length v14, v3

    invoke-static {v5, v12, v2, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v3

    const/4 v5, 0x3

    mul-int/2addr v4, v5

    array-length v3, v3

    invoke-static {v0, v12, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v11}, Lcom/sec/android/vsw/myfilter/solution/utils/MyFilterImageUtil;->toFloats(Landroid/graphics/Bitmap;)[F

    move-result-object v0

    invoke-static {v11}, Lcom/sec/android/vsw/myfilter/solution/utils/MyFilterImageUtil;->toFloats(Landroid/graphics/Bitmap;)[F

    move-result-object v3

    new-array v4, v13, [F

    const-string v15, "{\n  \"filter_type\" : \"myfilter_effect\",\n  \"vignette_power\": %f,\n  \"vignette_radius\": %f,\n  \"vignette_params\": %s,\n  \"vignette_data_index\": %d,\n  \"vignette_data_size\": %d,\n  \"grain_power\": %f,\n  \"grain_radius\": %f\n}"

    const/4 v14, 0x7

    new-array v1, v14, [Ljava/lang/Object;

    const-wide/16 v23, 0x0

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v1, v12

    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    const/16 v27, 0x1

    aput-object v16, v1, v27

    const-string v16, ""

    aput-object v16, v1, v22

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v1, v5

    const/high16 v28, 0x10000

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v1, v13

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    const/16 v29, 0x5

    aput-object v16, v1, v29

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    const/16 v30, 0x6

    aput-object v16, v1, v30

    invoke-static {v15, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v12

    const/4 v1, -0x1

    invoke-static {v7, v1}, Ljava/util/Arrays;->fill([BB)V

    const/16 v1, 0x8

    new-array v1, v1, [F

    sget-object v14, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/16 v13, 0x100

    invoke-static {v13, v13, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    const-string v13, "2.0.1"

    invoke-static {v13}, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->verGeq(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    sget-object v16, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->_myfilterTfliteColorModelPath:Ljava/lang/String;

    sget-object v17, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->_myfilterTfliteGrainModelPath:Ljava/lang/String;

    const/16 v20, 0x40

    const/16 v21, 0x40

    move-object v5, v14

    move-object/from16 v14, v16

    move-object/from16 v31, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v2

    move-object/from16 v17, v0

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    invoke-static/range {v14 .. v21}, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->ProcessRestorationV2(Ljava/lang/String;Ljava/lang/String;[F[F[F[FII)V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v11, v0, v12}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, v5, v1, v7}, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->GenerateVignettingMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[F[B)V

    const/4 v14, 0x7

    new-array v0, v14, [Ljava/lang/Object;

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v12

    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v27

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v22

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v15, 0x3

    aput-object v2, v0, v15

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v15, 0x4

    aput-object v2, v0, v15

    aget v2, v4, v27

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v29

    aget v2, v4, v12

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v30

    move-object/from16 v2, v31

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v12

    goto :goto_0

    :cond_1
    move-object v5, v14

    const/4 v14, 0x7

    sget-object v2, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->_myfilterTfliteColorModelPath:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->ProcessRestoration(Ljava/lang/String;[F[F)V

    :goto_0
    const/16 v0, 0x100

    invoke-static {v3, v0, v0}, Lcom/sec/android/vsw/myfilter/solution/utils/MyFilterImageUtil;->toBitmap([FII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    if-nez v2, :cond_2

    move/from16 v3, v22

    goto :goto_1

    :cond_2
    move v3, v12

    :goto_1
    invoke-static {v2, v0, v0}, Lcom/sec/android/vsw/myfilter/solution/utils/MyFilterImageUtil;->resize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v0, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->mContext:Landroid/content/Context;

    const-string v14, "default.png"

    invoke-static {v0, v14}, Lcom/sec/android/vsw/myfilter/solution/utils/MyFilterUtil;->loadBitmapFromAssets(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v14, 0x200

    invoke-static {v0, v14, v14, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v14

    const-string v0, "1.1.10"

    invoke-static {v0}, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->verGeq(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p4, :cond_5

    const/high16 v18, 0x3f800000    # 1.0f

    move-object v0, v11

    move-object/from16 v19, v1

    move-object v1, v2

    move-object v12, v2

    move-object v2, v14

    move/from16 v32, v3

    move-object/from16 v3, p1

    move-object/from16 v20, v4

    move/from16 v4, v18

    move-object/from16 v18, v8

    move-object v8, v5

    move-object/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lcom/sec/android/vsw/myfilter/solution/optimizer/MyFilterCeresOptimizer;->extractStyle(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F[F)Z

    invoke-static {v13}, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->verGeq(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x1e

    aget v1, v20, v27

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    aput v1, p4, v0

    const/16 v0, 0x1f

    const/4 v1, 0x7

    aget v1, v19, v1

    float-to-double v3, v1

    const-wide v21, 0x3fefae147ae147aeL    # 0.99

    cmpg-double v1, v3, v21

    if-gez v1, :cond_4

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_4
    aput v2, p4, v0

    goto :goto_3

    :cond_5
    move-object v12, v2

    move/from16 v32, v3

    move-object/from16 v20, v4

    move-object/from16 v18, v8

    move-object v8, v5

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v11, v12, v14, v6, v0}, Lcom/sec/android/vsw/myfilter/solution/optimizer/MyFilterCeresOptimizer;->extractStyle(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)Z

    :cond_6
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-boolean v0, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->mDebugMode:Z

    if-eqz v0, :cond_7

    const-string v0, "/sdcard/DCIM/MyFilter/models/tf-feed.png"

    invoke-static {v11, v0}, Lcom/sec/android/vsw/myfilter/solution/utils/MyFilterImageUtil;->dump(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    const-string v0, "/sdcard/DCIM/MyFilter/models/tf-output.png"

    invoke-static {v12, v0}, Lcom/sec/android/vsw/myfilter/solution/utils/MyFilterImageUtil;->dump(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    const-string v0, "/sdcard/DCIM/MyFilter/models/default.png"

    invoke-static {v14, v0}, Lcom/sec/android/vsw/myfilter/solution/utils/MyFilterImageUtil;->dump(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    const-string v0, "/sdcard/DCIM/MyFilter/models/myfilter_lut.png"

    invoke-static {v6, v0}, Lcom/sec/android/vsw/myfilter/solution/utils/MyFilterImageUtil;->dump(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x0

    invoke-virtual {v8, v0, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v3, "/sdcard/DCIM/MyFilter/models/mask.png"

    invoke-static {v0, v3}, Lcom/sec/android/vsw/myfilter/solution/utils/MyFilterImageUtil;->dump(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v0, "/sdcard/DCIM/Myfilter/models/mask.Data"

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v3, v7}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v4, v0

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object v5, v0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v3, v0

    :try_start_5
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v5
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_5
    sub-long v3, v1, v9

    sub-long v5, v15, v9

    sub-long/2addr v1, v15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Total: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "ms, Proc1: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "ms, Proc2: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extractStyleV2 - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_7
    move-object/from16 v1, v18

    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GrainScale: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    aget v2, v20, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", GrainIntensity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v2, v20, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extractStyleV2 - End, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v12, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v12
.end method

.method public static extractStyleV2(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "MyFilterEngine-AAR,121,200922"

    const-string v1, "extractStyleV2 - Begin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extractStyleV2 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v2, 0x200

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v2, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/16 v4, 0x100

    invoke-static {v4, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    const-string v2, ""

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x80

    new-array v4, v4, [F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-object v7, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->_myfilterAuxData:[B

    invoke-static {p0, v1, v7, v2, v4}, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->extractStyleV2(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[B[Ljava/lang/String;[F)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    aget-object p0, v2, v3

    sput-object p0, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->_myfilterJsonString:Ljava/lang/String;

    aget-object p0, v2, v3

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sub-long/2addr v7, v5

    invoke-virtual {p0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "ms"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extractStyleV2 - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "extractStyleV2 - End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static getLibVersion()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MyFilter : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->GetLibVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Optimizer : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/vsw/myfilter/solution/optimizer/MyFilterCeresOptimizer;->GetOptimizerLibVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    const-string v0, "MyFilterEngine-AAR,121,200922"

    const-string v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method private static prepareStorage()V
    .locals 4

    const-string v0, "MyFilterEngine-AAR,121,200922"

    const-string v1, "prepareStorage - Begin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "/mnt/sdcard/DCIM/"

    invoke-static {v1}, Lcom/sec/android/vsw/myfilter/solution/utils/MyFilterUtil;->makeDirectory(Ljava/lang/String;)V

    const-string v1, "/sdcard/DCIM/MyFilter/"

    invoke-static {v1}, Lcom/sec/android/vsw/myfilter/solution/utils/MyFilterUtil;->makeDirectory(Ljava/lang/String;)V

    const-string v1, "/sdcard/DCIM/MyFilter/models/"

    invoke-static {v1}, Lcom/sec/android/vsw/myfilter/solution/utils/MyFilterUtil;->makeDirectory(Ljava/lang/String;)V

    const-string v2, "/sdcard/DCIM/MyFilter/captured/"

    invoke-static {v2}, Lcom/sec/android/vsw/myfilter/solution/utils/MyFilterUtil;->makeDirectory(Ljava/lang/String;)V

    sget-object v2, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->mContext:Landroid/content/Context;

    const-string v3, "default.png"

    invoke-static {v2, v1, v3}, Lcom/sec/android/vsw/myfilter/solution/utils/MyFilterUtil;->copyAssetFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "prepareStorage - End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static processBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;
    .locals 8

    const-string v0, "MyFilterEngine-AAR,121,200922"

    const-string v1, "processBitmap - Begin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {p1}, Lcom/sec/android/vsw/myfilter/solution/utils/MyFilterImageUtil;->getByteArrayFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    move-object v2, p0

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->ProcessBitmap(Landroid/graphics/Bitmap;[BIID)V

    const-string p1, "processBitmap - End"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static processNV21([BLandroid/graphics/Bitmap;IIZDZ)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->ProcessNV21([BLandroid/graphics/Bitmap;IIZDZ)V

    return-void
.end method

.method public static processRGBA(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;
    .locals 9

    const-string v0, "MyFilterEngine-AAR,121,200922"

    const-string v1, "processRGBA - Begin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "1.1.7"

    invoke-static {v1}, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->verGeq(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->processBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {p0}, Lcom/sec/android/vsw/myfilter/solution/utils/MyFilterImageUtil;->getByteArrayFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    invoke-static {v8}, Lcom/sec/android/vsw/myfilter/solution/utils/MyFilterImageUtil;->getByteArrayFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object p0

    invoke-static {p1}, Lcom/sec/android/vsw/myfilter/solution/utils/MyFilterImageUtil;->getByteArrayFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    move-object v2, p0

    move-wide v6, p2

    invoke-static/range {v1 .. v7}, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->ProcessRGBA([B[B[BIID)V

    invoke-static {v8, p0}, Lcom/sec/android/vsw/myfilter/solution/utils/MyFilterImageUtil;->setByteArrayToBitmap(Landroid/graphics/Bitmap;[B)V

    move-object p0, v8

    :goto_0
    const-string p1, "processRGBA - End"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static processRGBA(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[BLjava/lang/String;D)Landroid/graphics/Bitmap;
    .locals 9

    const-string v0, "MyFilterEngine-AAR,121,200922"

    const-string v1, "processRGBA - Begin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "2.0.4"

    invoke-static {v1}, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->verGeq(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    sget-object v1, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->bmpGrain:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    const-string v1, "/system//cameradata/myfilter/GrainTemplateImage"

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->bmpGrain:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->bmpGrain:Landroid/graphics/Bitmap;

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    invoke-static {p1}, Lcom/sec/android/vsw/myfilter/solution/utils/MyFilterImageUtil;->getByteArrayFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    sget-object v4, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->bmpGrain:Landroid/graphics/Bitmap;

    move-object v2, p0

    move-object v5, p2

    move-object v6, p3

    move-wide v7, p4

    invoke-static/range {v2 .. v8}, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->ProcessBitmapV2(Landroid/graphics/Bitmap;[BLandroid/graphics/Bitmap;[BLjava/lang/String;D)V

    const-string p1, "processBitmap - End"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p2, "1.1.7"

    invoke-static {p2}, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->verGeq(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {p0, p1, p4, p5}, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->processBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-static {p0}, Lcom/sec/android/vsw/myfilter/solution/utils/MyFilterImageUtil;->getByteArrayFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    invoke-static {p2}, Lcom/sec/android/vsw/myfilter/solution/utils/MyFilterImageUtil;->getByteArrayFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object p0

    invoke-static {p1}, Lcom/sec/android/vsw/myfilter/solution/utils/MyFilterImageUtil;->getByteArrayFromBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    move-object v2, p0

    move-wide v6, p4

    invoke-static/range {v1 .. v7}, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->ProcessRGBA([B[B[BIID)V

    invoke-static {p2, p0}, Lcom/sec/android/vsw/myfilter/solution/utils/MyFilterImageUtil;->setByteArrayToBitmap(Landroid/graphics/Bitmap;[B)V

    move-object p0, p2

    :goto_0
    const-string p1, "processRGBA - End"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static release()V
    .locals 2

    const-string v0, "MyFilterEngine-AAR,121,200922"

    const-string v1, "release()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected static setContext(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 0

    sput-boolean p0, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->mDebugMode:Z

    return-void
.end method

.method public static verGeq(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/vsw/myfilter/solution/MyFilterEngine;->GetLibVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move v1, v2

    :goto_0
    array-length v3, v0

    const/4 v4, 0x1

    if-ge v1, v3, :cond_2

    aget-object v3, p0, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v5, v0, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-le v3, v5, :cond_0

    return v2

    :cond_0
    aget-object v3, p0, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v5, v0, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ge v3, v5, :cond_1

    return v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v4
.end method
