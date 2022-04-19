.class synthetic Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter$2;
.super Ljava/lang/Object;
.source "AbstractRecordingModePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

.field static final synthetic $SwitchMap$com$samsung$android$app$galaxyraw$interfaces$RecordingManager$RecordingEvent:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter$2;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter$2;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_DONE:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter$2;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->TOUCH_AF_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v3, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter$2;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->TOUCH_AF_FOCUSED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter$2;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter$2;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_FOCUSED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result v4

    const/4 v5, 0x6

    aput v5, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingEvent;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingEvent;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter$2;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$RecordingManager$RecordingEvent:[I

    :try_start_6
    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingEvent;->STARTED:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingEvent;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingEvent;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v1, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter$2;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$RecordingManager$RecordingEvent:[I

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingEvent;->STOPPED:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingEvent;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingEvent;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/samsung/android/app/galaxyraw/shootingmode/abstraction/AbstractRecordingModePresenter$2;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$RecordingManager$RecordingEvent:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingEvent;->CANCELLED:Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingEvent;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingEvent;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    return-void
.end method
