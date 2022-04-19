.class final enum Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;
.super Ljava/lang/Enum;
.source "ActionStateSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RatioId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

.field public static final enum RATIO_16x9:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

.field public static final enum RATIO_16x9_8K:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

.field public static final enum RATIO_16x9_8K_24fps:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

.field public static final enum RATIO_16x9_FHD:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

.field public static final enum RATIO_16x9_FHD_120FPS:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

.field public static final enum RATIO_16x9_FHD_24FPS:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

.field public static final enum RATIO_16x9_FHD_60FPS:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

.field public static final enum RATIO_16x9_FHD_AUTO:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

.field public static final enum RATIO_16x9_HD:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

.field public static final enum RATIO_16x9_QHD:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

.field public static final enum RATIO_16x9_UHD:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

.field public static final enum RATIO_16x9_UHD_24FPS:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

.field public static final enum RATIO_16x9_UHD_60FPS:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

.field public static final enum RATIO_1x1:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

.field public static final enum RATIO_21x9:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

.field public static final enum RATIO_21x9_8K:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

.field public static final enum RATIO_21x9_8K_24fps:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

.field public static final enum RATIO_21x9_FHD:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

.field public static final enum RATIO_21x9_FHD_120FPS:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

.field public static final enum RATIO_21x9_FHD_24FPS:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

.field public static final enum RATIO_21x9_FHD_60FPS:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

.field public static final enum RATIO_21x9_UHD:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

.field public static final enum RATIO_21x9_UHD_24FPS:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

.field public static final enum RATIO_21x9_UHD_60FPS:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

.field public static final enum RATIO_4x3:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

.field public static final enum RATIO_FULL:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;


# instance fields
.field private strRatioId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 29

    new-instance v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    const-string v1, "RATIO_16x9_8K"

    const/4 v2, 0x0

    const-string v3, "8K"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_16x9_8K:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    const-string v3, "RATIO_16x9_8K_24fps"

    const/4 v4, 0x1

    const-string v5, "8K24fps"

    invoke-direct {v1, v3, v4, v5}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_16x9_8K_24fps:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    const-string v5, "RATIO_21x9_8K"

    const/4 v6, 0x2

    const-string v7, "8K-21by9"

    invoke-direct {v3, v5, v6, v7}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_21x9_8K:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    new-instance v5, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    const-string v7, "RATIO_21x9_8K_24fps"

    const/4 v8, 0x3

    const-string v9, "8K24fps-21by9"

    invoke-direct {v5, v7, v8, v9}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_21x9_8K_24fps:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    new-instance v7, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    const-string v9, "RATIO_16x9"

    const/4 v10, 0x4

    const-string v11, "16by9"

    invoke-direct {v7, v9, v10, v11}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_16x9:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    new-instance v9, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    const-string v11, "RATIO_21x9"

    const/4 v12, 0x5

    const-string v13, "21by9"

    invoke-direct {v9, v11, v12, v13}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_21x9:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    new-instance v11, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    const-string v13, "RATIO_1x1"

    const/4 v14, 0x6

    const-string v15, "1by1"

    invoke-direct {v11, v13, v14, v15}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_1x1:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    new-instance v13, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    const-string v15, "RATIO_4x3"

    const/4 v14, 0x7

    const-string v12, "4by3"

    invoke-direct {v13, v15, v14, v12}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_4x3:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    new-instance v12, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    const-string v15, "RATIO_FULL"

    const/16 v14, 0x8

    const-string v10, "Full"

    invoke-direct {v12, v15, v14, v10}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_FULL:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    new-instance v10, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    const-string v15, "RATIO_16x9_UHD"

    const/16 v14, 0x9

    const-string v8, "UHD"

    invoke-direct {v10, v15, v14, v8}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_16x9_UHD:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    new-instance v8, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    const-string v15, "RATIO_16x9_UHD_60FPS"

    const/16 v14, 0xa

    const-string v6, "UHD60fps"

    invoke-direct {v8, v15, v14, v6}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_16x9_UHD_60FPS:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    new-instance v6, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    const-string v15, "RATIO_16x9_UHD_24FPS"

    const/16 v14, 0xb

    const-string v4, "UHD24fps"

    invoke-direct {v6, v15, v14, v4}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_16x9_UHD_24FPS:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    const-string v15, "RATIO_16x9_QHD"

    const/16 v14, 0xc

    const-string v2, "QHD"

    invoke-direct {v4, v15, v14, v2}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_16x9_QHD:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    const-string v15, "RATIO_16x9_FHD"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const-string v4, "FHD"

    invoke-direct {v2, v15, v14, v4}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_16x9_FHD:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    const-string v15, "RATIO_16x9_FHD_120FPS"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const-string v2, "FHD120fps"

    invoke-direct {v4, v15, v14, v2}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_16x9_FHD_120FPS:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    const-string v15, "RATIO_16x9_FHD_60FPS"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const-string v4, "FHD60fps"

    invoke-direct {v2, v15, v14, v4}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_16x9_FHD_60FPS:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    const-string v15, "RATIO_16x9_FHD_24FPS"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const-string v2, "FHD24fps"

    invoke-direct {v4, v15, v14, v2}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_16x9_FHD_24FPS:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    const-string v15, "RATIO_16x9_FHD_AUTO"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const-string v4, "FHDAuto"

    invoke-direct {v2, v15, v14, v4}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_16x9_FHD_AUTO:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    const-string v15, "RATIO_16x9_HD"

    const/16 v14, 0x12

    move-object/from16 v21, v2

    const-string v2, "HD"

    invoke-direct {v4, v15, v14, v2}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_16x9_HD:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    const-string v15, "RATIO_21x9_UHD"

    const/16 v14, 0x13

    move-object/from16 v22, v4

    const-string v4, "UHD-21by9"

    invoke-direct {v2, v15, v14, v4}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_21x9_UHD:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    const-string v15, "RATIO_21x9_UHD_60FPS"

    const/16 v14, 0x14

    move-object/from16 v23, v2

    const-string v2, "UHD60fps-21by9"

    invoke-direct {v4, v15, v14, v2}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_21x9_UHD_60FPS:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    const-string v15, "RATIO_21x9_UHD_24FPS"

    const/16 v14, 0x15

    move-object/from16 v24, v4

    const-string v4, "UHD24fps-21by9"

    invoke-direct {v2, v15, v14, v4}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_21x9_UHD_24FPS:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    const-string v15, "RATIO_21x9_FHD"

    const/16 v14, 0x16

    move-object/from16 v25, v2

    const-string v2, "FHD-21by9"

    invoke-direct {v4, v15, v14, v2}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_21x9_FHD:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    const-string v14, "RATIO_21x9_FHD_120FPS"

    const/16 v15, 0x17

    move-object/from16 v26, v4

    const-string v4, "FHD120fps-21by9"

    invoke-direct {v2, v14, v15, v4}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_21x9_FHD_120FPS:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    const-string v14, "RATIO_21x9_FHD_60FPS"

    const/16 v15, 0x18

    move-object/from16 v27, v2

    const-string v2, "FHD60fps-21by9"

    invoke-direct {v4, v14, v15, v2}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_21x9_FHD_60FPS:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    const-string v14, "RATIO_21x9_FHD_24FPS"

    const/16 v15, 0x19

    move-object/from16 v28, v4

    const-string v4, "FHD24fps-21by9"

    invoke-direct {v2, v14, v15, v4}, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->RATIO_21x9_FHD_24FPS:Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    const/16 v4, 0x1a

    new-array v4, v4, [Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    const/4 v14, 0x0

    aput-object v0, v4, v14

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    const/16 v0, 0xb

    aput-object v6, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v21, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    const/16 v0, 0x13

    aput-object v23, v4, v0

    const/16 v0, 0x14

    aput-object v24, v4, v0

    const/16 v0, 0x15

    aput-object v25, v4, v0

    const/16 v0, 0x16

    aput-object v26, v4, v0

    const/16 v0, 0x17

    aput-object v27, v4, v0

    const/16 v0, 0x18

    aput-object v28, v4, v0

    const/16 v0, 0x19

    aput-object v2, v4, v0

    sput-object v4, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->$VALUES:[Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "string"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->strRatioId:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->$VALUES:[Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    invoke-virtual {v0}, [Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;

    return-object v0
.end method


# virtual methods
.method public getRatioId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/executor/ActionStateSet$RatioId;->strRatioId:Ljava/lang/String;

    return-object p0
.end method
