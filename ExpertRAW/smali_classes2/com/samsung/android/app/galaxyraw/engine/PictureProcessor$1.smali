.class synthetic Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$1;
.super Ljava/lang/Object;
.source "PictureProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$android$app$galaxyraw$interfaces$InternalEngine$PictureSavingType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$InternalEngine$PictureSavingType:[I

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;->JPEG:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$InternalEngine$PictureSavingType:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;->BURST:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$InternalEngine$PictureSavingType:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;->BURST_DB_UPDATE_ONLY:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$InternalEngine$PictureSavingType:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;->HEIF:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$InternalEngine$PictureSavingType:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;->RAW:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$InternalEngine$PictureSavingType:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;->GIF:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$InternalEngine$PictureSavingType:[I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;->SMART_SCAN:Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$PictureSavingType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method
