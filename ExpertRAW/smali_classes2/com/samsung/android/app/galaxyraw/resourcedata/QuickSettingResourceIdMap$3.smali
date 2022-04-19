.class synthetic Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$3;
.super Ljava/lang/Object;
.source "QuickSettingResourceIdMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CommandId:[I

.field static final synthetic $SwitchMap$com$samsung$android$app$galaxyraw$interfaces$Resolution:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$3;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$Resolution:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_9248X6936:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$3;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$Resolution:[I

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_12000X9000:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$3;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$Resolution:[I

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_7296X5472:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$3;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CommandId:[I

    :try_start_3
    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_SUPER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap$3;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CommandId:[I

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_SUPER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
