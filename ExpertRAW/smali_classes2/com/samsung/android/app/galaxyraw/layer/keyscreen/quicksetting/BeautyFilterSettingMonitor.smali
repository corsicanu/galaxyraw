.class public Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;
.super Ljava/lang/Object;
.source "BeautyFilterSettingMonitor.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor$BeautyFilterSettingObserver;
    }
.end annotation


# static fields
.field private static final mDimSettingKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            ">;"
        }
    .end annotation
.end field

.field private static final mFilterSettingKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

.field private final mObserverList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor$BeautyFilterSettingObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mQuickSettingCommandIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor$1;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->mFilterSettingKeyMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor$2;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->mDimSettingKeyMap:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraSettings"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor$3;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->mQuickSettingCommandIdMap:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->mObserverList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    return-void
.end method

.method private static getAllFilterSettingKeyList()Ljava/util/ArrayList;
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

    sget-object v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->mFilterSettingKeyMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private static getFilterTabCommandId(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "settingKey"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->mFilterSettingKeyMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EMPTY:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    return-object p0
.end method

.method private getQuickSettingCommandId(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->getFilterTabCommandId(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EMPTY:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->getBeautyTabCommandId(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->mQuickSettingCommandIdMap:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    return-object p0
.end method

.method private getQuickSettingDimCommandId(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->mQuickSettingCommandIdMap:Ljava/util/Map;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->mDimSettingKeyMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EMPTY:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    return-object p0
.end method

.method private static isFilterEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraSettings",
            "commandId"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor$4;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CommandId:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFrontVideoFilter()I

    move-result p1

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFrontVideoMyFilter()I

    move-result v0

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is not monitoring"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getBackVideoFilter()I

    move-result p1

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getBackVideoMyFilter()I

    move-result v0

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFrontPhotoFilter()I

    move-result p1

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFrontPhotoMyFilter()I

    move-result v0

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getBackPhotoFilter()I

    move-result p1

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getBackPhotoMyFilter()I

    move-result v0

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    :goto_0
    const/4 v3, 0x0

    if-nez p1, :cond_4

    if-nez p0, :cond_4

    return v3

    :cond_4
    if-nez v0, :cond_5

    if-ne p0, v1, :cond_5

    return v3

    :cond_5
    return v2
.end method

.method static synthetic lambda$onDimChanged$1(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;ZLcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor$BeautyFilterSettingObserver;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor$BeautyFilterSettingObserver;->onBeautyFilterDimChanged(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Z)V

    return-void
.end method


# virtual methods
.method isMonitoring(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandId"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->mQuickSettingCommandIdMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method isSelected(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandId"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor$4;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CommandId:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is not monitoring"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->isBeautyEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result p0

    return p0

    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->isFilterEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_BEAUTY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->isBeautyEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->isFilterEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BEAUTY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->isBeautyEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1

    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->isFilterEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_BEAUTY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->isBeautyEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    return v1

    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->isFilterEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_BEAUTY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->isBeautyEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_6
    move v1, v2

    :cond_7
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic lambda$onCameraSettingChanged$0$BeautyFilterSettingMonitor(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor$BeautyFilterSettingObserver;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->isSelected(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result p0

    invoke-interface {p2, p1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor$BeautyFilterSettingObserver;->onBeautyFilterSettingChanged(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Z)V

    return-void
.end method

.method public onCameraSettingChanged(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "prevValue",
            "nextValue"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->getQuickSettingCommandId(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->mObserverList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p3, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$BeautyFilterSettingMonitor$yHmSDFgHx2mvff-ONMfRvUaC4mw;

    invoke-direct {p3, p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$BeautyFilterSettingMonitor$yHmSDFgHx2mvff-ONMfRvUaC4mw;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V

    invoke-virtual {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onDimChanged(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "isDim"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->getQuickSettingDimCommandId(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->mObserverList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$BeautyFilterSettingMonitor$jT27yI2ER58sBH5maXHWrD9B4QA;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$BeautyFilterSettingMonitor$jT27yI2ER58sBH5maXHWrD9B4QA;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Z)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method registerObserver(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor$BeautyFilterSettingObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->mObserverList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method start()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->getAllFilterSettingKeyList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2, v1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->getAllBeautySettingKeyList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2, v1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->mDimSettingKeyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2, v1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->registerDimChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method stop()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->getAllFilterSettingKeyList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2, v1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/BeautyUtil;->getAllBeautySettingKeyList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2, v1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->mDimSettingKeyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2, v1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->unregisterDimChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method unregisterObserver(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor$BeautyFilterSettingObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->mObserverList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
