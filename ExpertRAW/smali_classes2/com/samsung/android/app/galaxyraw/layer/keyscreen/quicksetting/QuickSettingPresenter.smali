.class public Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;
.super Ljava/lang/Object;
.source "QuickSettingPresenter.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$Presenter;
.implements Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$ButtonClickListener;
.implements Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$ButtonTouchListener;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$LightConditionListener;
.implements Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor$BeautyFilterSettingObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter$ResolutionListGetter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "QuickSettingPresenter"


# instance fields
.field private final mBeautyFilterSettingMonitor:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;

.field private final mCallbackManager:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;

.field private final mCamcorderResolutionCommandIdList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            "Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter$ResolutionListGetter;",
            ">;"
        }
    .end annotation
.end field

.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private final mQuickSettingViewItemMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            "Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingKeyList:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraContext",
            "callbackManager",
            "view"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter$1;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCamcorderResolutionCommandIdList:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mQuickSettingViewItemMap:Ljava/util/HashMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mSettingKeyList:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCallbackManager:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$View;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->initQuickSettingViewItemMap()V

    new-instance p2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;)V

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mBeautyFilterSettingMonitor:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;

    return-void
.end method

.method private convertSettingValueToImageLevel(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "commandId",
            "settingValue"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCamcorderResolutionCommandIdList:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->getSubCommandIdList(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->getSubCommandIdList(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->findCamcorderResolutionCommandId(ILjava/util/ArrayList;)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->getSubCommandIdList(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_FHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    :cond_0
    return p0

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->getSettingKey(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object p0

    if-eqz p0, :cond_6

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter$2;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    return p2

    :cond_2
    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->getSubCommandIdList(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_3
    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->getSubCommandIdList(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_4
    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->getSubCommandIdList(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_5
    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->getSubCommandIdList(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_6
    return p2
.end method

.method private getCamcorderResolutionSubItemList(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->getSettingKey(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCamcorderResolutionCommandIdList:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter$ResolutionListGetter;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getAspectRatio()Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter$ResolutionListGetter;->get(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCamcorderResolutionSubItemList commandId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "QuickSettingPresenter"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    invoke-virtual {v6}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v6

    invoke-direct {p0, p1, v6}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->convertSettingValueToImageLevel(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;I)I

    move-result v9

    const/4 v6, -0x1

    if-ne v9, v6, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v1, v9}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->getCommandId(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v8

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v6

    invoke-interface {v6, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v6

    invoke-direct {p0, p1, v6}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->convertSettingValueToImageLevel(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;I)I

    move-result v6

    new-instance v13, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;

    if-ne v6, v9, :cond_1

    const/4 v6, 0x1

    move v10, v6

    goto :goto_1

    :cond_1
    move v10, v4

    :goto_1
    const/4 v11, 0x1

    invoke-direct {p0, v8}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->isQuickSettingBadgeActivated(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result v12

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;IZZZ)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getMainItemList(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandIdList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EMPTY:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mQuickSettingViewItemMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mBeautyFilterSettingMonitor:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;

    invoke-virtual {v4, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->isMonitoring(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mBeautyFilterSettingMonitor:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;

    invoke-virtual {v4, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->isSelected(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->setSelected(Z)V

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->isSubCommandIdExist(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->getSettingKey(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v5

    invoke-direct {p0, v2, v5}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->convertSettingValueToImageLevel(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;I)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->setImageLevel(I)V

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->isHighlight(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->setSelected(Z)V

    :cond_2
    :goto_1
    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->isQuickSettingBadgeActivated(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->setBadgeActivated(Z)V

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->clone()Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private getSubItemList(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->getSubCommandIdList(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {v6}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->getSettingValue(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)I

    move-result v7

    new-instance v4, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v5

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->getSettingKey(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v8

    invoke-interface {v5, v8}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v5

    if-ne v5, v7, :cond_0

    const/4 v5, 0x1

    move v8, v5

    goto :goto_1

    :cond_0
    move v8, v2

    :goto_1
    const/4 v9, 0x1

    invoke-direct {p0, v6}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->isQuickSettingBadgeActivated(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result v10

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;IZZZ)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private initQuickSettingViewItemMap()V
    .locals 12

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->QUICK_SETTING_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->getSubCommandIdList(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->getSettingKey(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mSettingKeyList:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mSettingKeyList:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mSettingKeyList:Landroid/util/ArrayMap;

    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    aput-object v3, v7, v1

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v4

    move v6, v4

    goto :goto_2

    :cond_1
    move v6, v1

    :goto_2
    iget-object v10, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mQuickSettingViewItemMap:Ljava/util/HashMap;

    new-instance v11, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, v11

    move-object v5, v3

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;IZZZ)V

    invoke-virtual {v10, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private isBadgeActivated(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandId"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter$2;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CommandId:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, "pref_key_super_resolution_badge_enabled"

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    return v1

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isBackCamcorderSuperResolutionSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    return v1

    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :pswitch_2
    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_MY_FILTER:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isFilterSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "pref_key_my_filter_new_badge_enabled"

    invoke-static {p0, p1, v2}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_1
    return v1

    :pswitch_3
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "pref_key_slow_motion_resolution_badge_enabled"

    invoke-static {p0, p1, v2}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :pswitch_4
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "pref_key_hyper_lapse_resolution_badge_enabled"

    invoke-static {p0, p1, v2}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isHighlight(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    sget-object p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter$2;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    if-ne p2, v1, :cond_0

    move v0, v1

    :cond_0
    return v0

    :pswitch_1
    if-ne p2, v1, :cond_1

    move v0, v1

    :cond_1
    return v0

    :pswitch_2
    if-eqz p2, :cond_2

    move v0, v1

    :cond_2
    return v0

    :pswitch_3
    if-ne p2, p1, :cond_3

    move v0, v1

    :cond_3
    return v0

    :pswitch_4
    if-ne p2, p1, :cond_4

    move v0, v1

    :cond_4
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isQuickSettingBadgeActivated(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandId"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->isSubCommandIdExist(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->isSubBadgeActivated(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->isBadgeActivated(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->isBadgeActivated(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result p0

    return p0
.end method

.method private isSubBadgeActivated(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandId"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->isSubCommandIdExist(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->getSubCommandIdList(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->isBadgeActivated(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private releaseActivatedBadge(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "commandId",
            "settingValue"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter$2;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CommandId:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const-string v1, "pref_key_super_resolution_badge_enabled"

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSuperResolution(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private showQuickSettingToast(Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->getSettingKey(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->isSubCommandIdExist(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->getCommandId(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getDisplayRotation()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap;->getToastString(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getDisplayRotation()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/resourcedata/QuickSettingResourceIdMap;->getToastString(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;I)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPopupLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;->QUICK_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager;->showPopup(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;Ljava/lang/String;)Z

    :cond_2
    return-void
.end method

.method private updateQuickSettingViewItem(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "commandId",
            "settingValue",
            "isSelected",
            "isEnabled"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mQuickSettingViewItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;

    if-nez p2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->getImageLevel()I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->convertSettingValueToImageLevel(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;I)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->setImageLevel(I)V

    if-nez p3, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->getSelected()Z

    move-result p2

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :goto_1
    invoke-virtual {v0, p2}, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->setSelected(Z)V

    if-nez p4, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->getEnabled()Z

    move-result p2

    goto :goto_2

    :cond_2
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :goto_2
    invoke-virtual {v0, p2}, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->setEnabled(Z)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->isQuickSettingBadgeActivated(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->setBadgeActivated(Z)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$View;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->clone()Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$View;->refreshItem(Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mQuickSettingViewItemMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mSettingKeyList:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method public synthetic lambda$onButtonClick$0$QuickSettingPresenter(Ljava/util/List;Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$View;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$View;->showSubQuickSetting(Ljava/util/List;Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;)V

    return-void
.end method

.method public synthetic lambda$onCameraSettingChanged$1$QuickSettingPresenter(ILcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mBeautyFilterSettingMonitor:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;

    invoke-virtual {v0, p3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->isMonitoring(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p3, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->releaseActivatedBadge(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->isHighlight(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p3, v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->updateQuickSettingViewItem(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onDimChanged$2$QuickSettingPresenter(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZLcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mBeautyFilterSettingMonitor:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;

    invoke-virtual {v0, p3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->isMonitoring(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->isHighlight(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, p3, v0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->updateQuickSettingViewItem(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onLightConditionChanged$3$QuickSettingPresenter(ZLcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->updateQuickSettingViewItem(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic lambda$onLightConditionChanged$4$QuickSettingPresenter(ZLcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->updateQuickSettingViewItem(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method public synthetic lambda$start$5$QuickSettingPresenter(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Ljava/util/ArrayList;)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p2

    invoke-interface {p2, p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p2

    invoke-interface {p2, p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->registerDimChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;)V

    return-void
.end method

.method public synthetic lambda$stop$6$QuickSettingPresenter(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Ljava/util/ArrayList;)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p2

    invoke-interface {p2, p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p2

    invoke-interface {p2, p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->unregisterDimChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;)V

    return-void
.end method

.method public onBeautyFilterDimChanged(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "commandId",
            "isDim"
        }
    .end annotation

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->updateQuickSettingViewItem(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method public onBeautyFilterSettingChanged(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "commandId",
            "isSelected"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->updateQuickSettingViewItem(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method public onButtonClick(Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ZoomManager;->reduceArea()V

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCommandReceiver()Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder;->buildCommand(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;)Lcom/samsung/android/app/galaxyraw/command/MenuCommand;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$View;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$View;->hideSubQuickSetting()V

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/command/MenuCommand;->execute()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->showQuickSettingToast(Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCamcorderResolutionCommandIdList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->getCamcorderResolutionSubItemList(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->getSubItemList(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$bVEPK8EZXonZyROV-YFt3Mx0ZyA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$bVEPK8EZXonZyROV-YFt3Mx0ZyA;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$QuickSettingPresenter$hTsiTnK2lg2BxrSo4JM9OiWL7JU;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$QuickSettingPresenter$hTsiTnK2lg2BxrSo4JM9OiWL7JU;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogIdMap;->getEventIdByCommandId(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return v1
.end method

.method public onButtonTouch(Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "item",
            "event"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter$2;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CommandId:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->getCommandId()Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "pref_key_slow_motion_resolution_badge_enabled"

    invoke-static {p0, p1, v1}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "pref_key_hyper_lapse_resolution_badge_enabled"

    invoke-static {p0, p1, v1}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/data/QuickSettingViewItem;->getEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FLASH_RESTRICTION_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->getInstance(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraTemperatureManager;->showFlashRestrictionToast()V

    :cond_0
    return v0

    :cond_1
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCameraSettingChanged(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;II)V
    .locals 1
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

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mSettingKeyList:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$QuickSettingPresenter$vS_8rCG4JywXDq2V-v4GTJtTZio;

    invoke-direct {v0, p0, p3, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$QuickSettingPresenter$vS_8rCG4JywXDq2V-v4GTJtTZio;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;ILcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onDimChanged(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Z)V
    .locals 2
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mSettingKeyList:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$QuickSettingPresenter$7VbXlB5EGNdfV-gdEvggQMBzY5I;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$QuickSettingPresenter$7VbXlB5EGNdfV-gdEvggQMBzY5I;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onHideSubQuickSettingRequested()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getPopupLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;->QUICK_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager;->hidePopup(Lcom/samsung/android/app/galaxyraw/interfaces/PopupLayerManager$PopupId;)V

    return-void
.end method

.method public onLightConditionChanged(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lightCondition"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v0

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter$2;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$ShootingModeFeature$SupportedFlashType:[I

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getSupportedFlashType(I)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getTorch()I

    move-result v2

    if-ne v2, v0, :cond_5

    if-ne v1, v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mSettingKeyList:Landroid/util/ArrayMap;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$QuickSettingPresenter$okHHbc9ruKn_1bOlk2nwelU1KKQ;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$QuickSettingPresenter$okHHbc9ruKn_1bOlk2nwelU1KKQ;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFlash()I

    move-result v2

    if-ne v2, v0, :cond_5

    if-ne v1, v0, :cond_4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mSettingKeyList:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$QuickSettingPresenter$XfPJLlhW0jH2dUplgv24njGwbY4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$QuickSettingPresenter$XfPJLlhW0jH2dUplgv24njGwbY4;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public onRefresh(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandIdList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$View;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->getMainItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$View;->refreshItemList(Ljava/util/List;)V

    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$View;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$View;->setButtonClickListener(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$ButtonClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$View;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$View;->setButtonTouchListener(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingContract$ButtonTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mSettingKeyList:Landroid/util/ArrayMap;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$QuickSettingPresenter$0PelO2InHn49AEh-Ab8JPgYNocg;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$QuickSettingPresenter$0PelO2InHn49AEh-Ab8JPgYNocg;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;)V

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCallbackManager:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;->registerLightConditionListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$LightConditionListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mBeautyFilterSettingMonitor:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->registerObserver(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor$BeautyFilterSettingObserver;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mBeautyFilterSettingMonitor:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->start()V

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mSettingKeyList:Landroid/util/ArrayMap;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$QuickSettingPresenter$dj9G9F2qKC26-xigFjlwg8mZ7Vg;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/-$$Lambda$QuickSettingPresenter$dj9G9F2qKC26-xigFjlwg8mZ7Vg;-><init>(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;)V

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mCallbackManager:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;->unregisterLightConditionListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$LightConditionListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mBeautyFilterSettingMonitor:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->unregisterObserver(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor$BeautyFilterSettingObserver;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/QuickSettingPresenter;->mBeautyFilterSettingMonitor:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/quicksetting/BeautyFilterSettingMonitor;->stop()V

    return-void
.end method
