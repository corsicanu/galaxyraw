.class synthetic Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$7;
.super Ljava/lang/Object;
.source "AeAfManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

.field static final synthetic $SwitchMap$com$samsung$android$app$galaxyraw$interfaces$InternalEngine$AeAfTriggerState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$7;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$InternalEngine$AeAfTriggerState:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;->CANCEL_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$AeAfTriggerState;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$7;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

    :try_start_1
    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->TOUCH_AF_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$7;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$7;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AF_LOCK_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$7;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AE_AF_LOCK_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$7;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$7;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_DONE:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$7;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->TOUCH_AE_AF_FOCUSED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$7;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AE_LOCK_REQUESTED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$7;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AE_AF_LOCKED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$7;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AE_LOCKED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$7;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->AF_LOCKED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$7;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->TOUCH_AF_FOCUSED:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/AeAfManagerImpl$7;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$AeAfManager$AeAfUiState:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->IDLE:Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager$AeAfUiState;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    return-void
.end method
