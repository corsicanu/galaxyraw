.class synthetic Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager$1;
.super Ljava/lang/Object;
.source "TouchAeAfTouchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AE_AF_LOCK_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AE_AF_LOCKED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AF_LOCK_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AF_LOCKED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AE_LOCK_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/previewoverlay/aeaf/TouchAeAfTouchManager$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AE_LOCKED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
