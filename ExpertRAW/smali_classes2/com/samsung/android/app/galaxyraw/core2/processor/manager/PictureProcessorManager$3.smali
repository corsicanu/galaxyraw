.class synthetic Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager$3;
.super Ljava/lang/Object;
.source "PictureProcessorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$android$app$galaxyraw$core2$processor$ProcessRequest$ProcessType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$ProcessType;->values()[Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$ProcessType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager$3;->$SwitchMap$com$samsung$android$app$galaxyraw$core2$processor$ProcessRequest$ProcessType:[I

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$ProcessType;->IMMEDIATE_PROCESS:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$ProcessType;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$ProcessType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/processor/manager/PictureProcessorManager$3;->$SwitchMap$com$samsung$android$app$galaxyraw$core2$processor$ProcessRequest$ProcessType:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$ProcessType;->POST_PROCESS:Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$ProcessType;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/processor/ProcessRequest$ProcessType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
