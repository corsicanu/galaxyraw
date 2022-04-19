.class public Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;
.super Ljava/lang/Object;
.source "BeautyUtil.java"


# static fields
.field private static final VALID_FACING_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mBeautyTypeKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            ">;"
        }
    .end annotation
.end field

.field private static final mLiveFocusBeautyKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            ">;"
        }
    .end annotation
.end field

.field private static final mManualBeautyKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            ">;"
        }
    .end annotation
.end field

.field private static final mManualBeautyLevelSettingKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            ">;"
        }
    .end annotation
.end field

.field private static final mManualBeautyNegativeLevelSupportList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;"
        }
    .end annotation
.end field

.field private static final mPhotoBeautyMakerPrivateKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            "Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final mSmartBeautyKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            ">;"
        }
    .end annotation
.end field

.field private static final mVideoBeautyKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$1;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->mBeautyTypeKeyMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$2;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->mVideoBeautyKeyMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$3;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$3;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->mManualBeautyKeyMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$4;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$4;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->mSmartBeautyKeyMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$5;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$5;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->mManualBeautyLevelSettingKeyMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$6;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$6;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->mLiveFocusBeautyKeyMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$7;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$7;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->mPhotoBeautyMakerPrivateKeyMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$8;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$8;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->mManualBeautyNegativeLevelSupportList:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$9;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$9;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->VALID_FACING_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllBeautySettingKeyList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->mBeautyTypeKeyMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->mVideoBeautyKeyMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->mManualBeautyLevelSettingKeyMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->mSmartBeautyKeyMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->mLiveFocusBeautyKeyMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static getBeautyTabCommandId(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "settingKey"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->mBeautyTypeKeyMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    return-object p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->mSmartBeautyKeyMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    return-object p0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->mVideoBeautyKeyMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    return-object p0

    :cond_2
    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->mLiveFocusBeautyKeyMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    return-object p0

    :cond_3
    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->mManualBeautyLevelSettingKeyMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    return-object p0

    :cond_4
    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EMPTY:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    return-object p0
.end method

.method public static getBeautyTypeSettingKey(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tabCommandId"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->mBeautyTypeKeyMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getManualBeautyLevelSettingKeyList(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tabCommandId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->mManualBeautyLevelSettingKeyMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getManualBeautySettingKey(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tabCommandId"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->mManualBeautyKeyMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPhotoBeautyMakerKey(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "settingKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ")",
            "Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->mPhotoBeautyMakerPrivateKeyMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateKey;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSmartBeautySettingKey(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tabCommandId"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->mSmartBeautyKeyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isBeautyEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraSettings",
            "tabCommandId"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil$10;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CommandId:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    return v1

    :pswitch_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_LIVE_FOCUS_VIDEO_SKIN_TONE_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :pswitch_1
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_LIVE_FOCUS_VIDEO_SKIN_TONE_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0

    :pswitch_2
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_LIVE_FOCUS_SKIN_TONE_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    if-lez p0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    return v0

    :pswitch_3
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_LIVE_FOCUS_SKIN_TONE_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    if-lez p0, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    return v0

    :pswitch_4
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SELFIE_FOCUS_SKIN_TONE_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    if-lez p0, :cond_4

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    return v0

    :pswitch_5
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BEAUTY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    if-lez p0, :cond_5

    goto :goto_5

    :cond_5
    move v0, v1

    :goto_5
    return v0

    :pswitch_6
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BEAUTY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    if-gtz p1, :cond_7

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BODY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->isBodyBeautyEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_6

    :cond_6
    move v0, v1

    :cond_7
    :goto_6
    return v0

    :pswitch_7
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_BEAUTY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->isPhotoBeautyEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result p0

    return p0

    :pswitch_8
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_BEAUTY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->isPhotoBeautyEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result p1

    if-nez p1, :cond_9

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_BODY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->isBodyBeautyEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_7

    :cond_8
    move v0, v1

    :cond_9
    :goto_7
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isBodyBeautyEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraSettings",
            "tabCommandId"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BODY_BEAUTY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->getBeautyTypeSettingKey(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->getManualBeautyLevelSettingKeyList(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public static isManualBeautyNegativeLevelSupported(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->mManualBeautyNegativeLevelSupportList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isPhotoBeautyEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraSettings",
            "tabCommandId"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->getBeautyTypeSettingKey(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SMART_BEAUTY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v0, v3, :cond_2

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->getSmartBeautySettingKey(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    if-lez p0, :cond_1

    move v1, v3

    :cond_1
    return v1

    :cond_2
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->getManualBeautyLevelSettingKeyList(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-eqz v0, :cond_3

    return v3

    :cond_4
    return v1
.end method

.method public static isPhotoBeautySettingKey(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "settingKey"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->mPhotoBeautyMakerPrivateKeyMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isPhotoBodyBeautySettingKey(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "settingKey"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->mManualBeautyLevelSettingKeyMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_BODY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidFacing(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "facing"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->VALID_FACING_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method public static isVideoBodyBeautySettingKey(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "settingKey"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->mManualBeautyLevelSettingKeyMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BODY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
