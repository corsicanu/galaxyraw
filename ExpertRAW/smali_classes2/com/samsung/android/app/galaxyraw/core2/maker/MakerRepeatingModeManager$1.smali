.class synthetic Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$1;
.super Ljava/lang/Object;
.source "MakerRepeatingModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$android$app$galaxyraw$core2$maker$MakerRepeatingModeManager$RepeatingMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->values()[Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$1;->$SwitchMap$com$samsung$android$app$galaxyraw$core2$maker$MakerRepeatingModeManager$RepeatingMode:[I

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->PREVIEW_SURFACE:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$1;->$SwitchMap$com$samsung$android$app$galaxyraw$core2$maker$MakerRepeatingModeManager$RepeatingMode:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->MAIN_PREVIEW_CALLBACK:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$1;->$SwitchMap$com$samsung$android$app$galaxyraw$core2$maker$MakerRepeatingModeManager$RepeatingMode:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->MAIN_PREVIEW_CALLBACK_ONLY:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
