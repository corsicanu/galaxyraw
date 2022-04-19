.class Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState$Rule;
.super Ljava/lang/Object;
.source "MakerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Rule"
.end annotation


# static fields
.field private static final POSSIBLE_NEXT_STATES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState$Rule;->POSSIBLE_NEXT_STATES:Ljava/util/Map;

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->values()[Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    const/4 v5, 0x0

    sget-object v6, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$1;->$SwitchMap$com$samsung$android$app$galaxyraw$core2$maker$MakerUtils$CamDeviceSessionState:[I

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x1

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    new-array v5, v8, [Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    sget-object v6, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->RECONNECTING:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    aput-object v6, v5, v2

    sget-object v6, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->DISCONNECTING:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    aput-object v6, v5, v10

    sget-object v6, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->DISCONNECTED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    aput-object v6, v5, v9

    sget-object v6, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->DEVICE_CLOSED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    aput-object v6, v5, v7

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_1

    :pswitch_1
    new-array v5, v8, [Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    sget-object v6, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->DISCONNECTED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    aput-object v6, v5, v2

    sget-object v6, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->CONNECTED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    aput-object v6, v5, v10

    sget-object v6, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->CONNECT_FAILED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    aput-object v6, v5, v9

    sget-object v6, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->DEVICE_CLOSED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    aput-object v6, v5, v7

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_1

    :pswitch_2
    sget-object v5, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->CONNECTING:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_1

    :pswitch_3
    new-array v5, v9, [Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    sget-object v6, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->DISCONNECTED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    aput-object v6, v5, v2

    sget-object v6, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;->DEVICE_CLOSED:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState;

    aput-object v6, v5, v10

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    :goto_1
    sget-object v6, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState$Rule;->POSSIBLE_NEXT_STATES:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerUtils$CamDeviceSessionState$Rule;->POSSIBLE_NEXT_STATES:Ljava/util/Map;

    return-object v0
.end method
