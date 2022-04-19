.class public Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;
.super Ljava/lang/Object;
.source "ProControlPanelPresenter.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$Presenter;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraIdChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ProControlPanelPresenter"


# instance fields
.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

.field private final mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

.field private mIsEvStateManual:Z

.field private mLastNearestColorTemperature:I

.field private mLastNearestFocusDistance:I

.field private mLastNearestIso:I

.field private mLastNearestShutterSpeed:I

.field private mManager:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelManager;

.field private mSettingsKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;"
        }
    .end annotation
.end field

.field private final mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraContext",
            "view",
            "commandId"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mIsEvStateManual:Z

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    iput-object p3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;

    return-void
.end method

.method private disableEvButton()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mIsEvStateManual:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mIsEvStateManual:Z

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;->disableButton(I)V

    :cond_0
    return-void
.end method

.method private enableEvButton()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mIsEvStateManual:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mIsEvStateManual:Z

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getExposureValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    const/4 v2, 0x2

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;->setItemData(II)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mManager:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelManager;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getExposureValue()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelManager;->setEvCompensation(F)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f06002e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    const/4 v3, -0x1

    invoke-interface {v0, v2, v1, v3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;->setProItemColor(III)V

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->updateButtonState(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;

    invoke-interface {p0, v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;->enableButton(I)V

    :cond_0
    return-void
.end method

.method private getApertureText(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aperture"
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f120198

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f120199

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f120197

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPanelAutoText(II)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "proItemId",
            "value"
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getWhiteBalanceString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getShutterSpeedString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getIsoString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const p2, 0x7f120001

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "A "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private getProItemList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->getSubCommandIdList(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap;->get(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;->setCommandId(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V

    new-instance v5, Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;

    invoke-direct {v5, v4}, Lcom/samsung/android/app/galaxyraw/data/ProControlPanelItem;-><init>(Lcom/samsung/android/app/galaxyraw/resourcedata/ResourceIdMap$ResourceIdSet;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private initProList()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->initControlPanelItemProperty()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getExposureValue()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getExposureValueString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;->setButtonText(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mManager:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelManager;->isApertureSupported()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getShutterSpeedString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getAperture()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->getApertureText(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;->setButtonText(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;->setSubTextColor(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getShutterSpeedString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;->setButtonText(ILjava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getIso()I

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getIsoString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;->setButtonText(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getKelvinValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getWhiteBalanceString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;->setButtonText(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getMultiAfMode()I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v0, -0x3

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFocusLength()I

    move-result v0

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getFocusString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;->setButtonText(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->onUpdateResetButtonRequested()V

    return-void
.end method

.method private isDefaultValue(I)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "proItemId"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_c

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq p1, v1, :cond_6

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    return v1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WHITE_BALANCE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    if-ne p1, p0, :cond_1

    move v0, v1

    :cond_1
    return v0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFocusLength()I

    move-result p0

    if-gez p0, :cond_3

    move v0, v1

    :cond_3
    return v0

    :cond_4
    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mIsEvStateManual:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    if-ne p1, p0, :cond_5

    move v0, v1

    :cond_5
    return v0

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v5, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v4, v5}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v4

    if-ne p1, v4, :cond_7

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    if-eq p1, v1, :cond_a

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v5, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v4, v5}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v4

    if-ne p1, v4, :cond_8

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    if-eqz p1, :cond_a

    :cond_8
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v5, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v4, v5}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v4

    if-ne p1, v4, :cond_9

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    if-eq p1, v3, :cond_a

    :cond_9
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v3, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v3

    if-ne p1, v3, :cond_b

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    if-ne p0, v2, :cond_b

    :cond_a
    move v0, v1

    :cond_b
    return v0

    :cond_c
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ISO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    if-ne p1, p0, :cond_d

    move v0, v1

    :cond_d
    return v0
.end method

.method private isSettingChanged()Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getColorTuneType()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mSettingsKeyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mManager:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelManager;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelManager;->getMinZoomValue()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    return v1

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v3, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v4, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    if-eq v3, v2, :cond_1

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private isSlideAnimationSupported(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_WIDE_PRO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CommandId:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return v0

    :pswitch_1
    return p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isSubTextSupported(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mManager:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelManager;->isApertureSupported()Z

    move-result p0

    return p0
.end method

.method private updateButtonState(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "proItemId"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;->isSelected(I)Z

    move-result v0

    const v1, 0x7f06002e

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    const/high16 v2, -0x1000000

    invoke-interface {v0, p1, v1, v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;->setProItemColor(III)V

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->isDefaultValue(I)Z

    move-result v2

    const v3, 0x7f0600de

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->isDefaultValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    :goto_1
    invoke-interface {v0, p1, v1, v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;->setProItemColor(III)V

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->isDefaultValue(I)Z

    move-result p0

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;->setButtonValueState(IZ)V

    return-void
.end method

.method private updateEvState()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getIso()I

    move-result v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PRO_AE_PRIORITY_MODE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->disableEvButton()V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->enableEvButton()V

    :goto_1
    return-void
.end method

.method private updateExposureValueButtonColor(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x2

    const/16 v1, 0x14

    if-ge p1, v1, :cond_1

    const/16 v1, -0x14

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06002e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-interface {p1, v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;->setProItemColor(III)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0600df

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-interface {p1, v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;->setProItemColor(III)V

    :goto_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mSettingsKeyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mSettingsKeyList:Ljava/util/List;

    return-void
.end method

.method public initControlPanelItemProperty()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/command/CommandIdMap;->getSubCommandIdList(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p0, v3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->isSubTextSupported(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p0, v4}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->isSlideAnimationSupported(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result v4

    invoke-interface {v2, v1, v3, v4}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;->setItemProperty(IZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCameraIdChanged(IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraId",
            "facing",
            "isFacingSwitch"
        }
    .end annotation

    sget-object p2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_WIDE_PRO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p2, 0x66

    const/4 p3, 0x0

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMERA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_0
    invoke-direct {p0, p3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->updateButtonState(I)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->updateButtonState(I)V

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->updateButtonState(I)V

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->updateButtonState(I)V

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->updateButtonState(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;->slideItemButtonText()V

    :cond_1
    return-void
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

    sget-object p2, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x4

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->onUpdateResetButtonRequested()V

    goto/16 :goto_5

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->updateButtonState(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->onUpdateResetButtonRequested()V

    goto/16 :goto_5

    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFocusLength()I

    move-result p1

    const/4 p2, -0x2

    const/4 p3, 0x3

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getMultiAfMode()I

    move-result p1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;

    const/4 p2, -0x3

    invoke-interface {p1, p3, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;->setItemData(II)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFocusLength()I

    move-result p2

    invoke-interface {p1, p3, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;->setItemData(II)V

    :goto_0
    invoke-direct {p0, p3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->updateButtonState(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->onUpdateResetButtonRequested()V

    goto/16 :goto_5

    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getWhiteBalance()I

    move-result p1

    if-ne p1, v0, :cond_1

    const/16 p1, 0x17

    if-lt p3, p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;

    sub-int/2addr p3, p1

    invoke-interface {v0, p2, p3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;->setItemData(II)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;

    iget p3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mLastNearestColorTemperature:I

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->getPanelAutoText(II)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;->setButtonText(ILjava/lang/String;)V

    :goto_1
    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->updateButtonState(I)V

    goto/16 :goto_5

    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;

    add-int/lit8 p2, p3, 0x14

    const/4 v0, 0x2

    invoke-interface {p1, v0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;->setItemData(II)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mManager:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelManager;

    int-to-float p2, p3

    const/high16 p3, 0x41200000    # 10.0f

    div-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelManager;->setEvCompensation(F)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->updateButtonState(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->onUpdateResetButtonRequested()V

    goto/16 :goto_5

    :pswitch_5
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mManager:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelManager;->isApertureSupported()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getShutterSpeed()I

    move-result p3

    invoke-static {p2, p3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getShutterSpeedString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getAperture()I

    move-result p3

    invoke-direct {p0, p3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->getApertureText(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, v0, p2, p3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;->setButtonText(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getShutterSpeed()I

    move-result p3

    invoke-static {p2, p3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getShutterSpeedString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;->setButtonText(ILjava/lang/String;)V

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->onUpdateResetButtonRequested()V

    goto :goto_5

    :pswitch_6
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->updateEvState()V

    if-lez p3, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;

    sub-int/2addr p3, v0

    invoke-interface {p1, v0, p3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;->setItemData(II)V

    goto :goto_3

    :cond_3
    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mIsEvStateManual:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;

    iget p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mLastNearestShutterSpeed:I

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->getPanelAutoText(II)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;->setButtonText(ILjava/lang/String;)V

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;

    iget p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mLastNearestShutterSpeed:I

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->getPanelAutoText(II)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;->setButtonText(ILjava/lang/String;)V

    :goto_3
    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->updateButtonState(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->onUpdateResetButtonRequested()V

    goto :goto_5

    :pswitch_7
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->updateEvState()V

    const/4 p1, 0x0

    if-lez p3, :cond_5

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;

    sub-int/2addr p3, v0

    invoke-interface {p2, p1, p3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;->setItemData(II)V

    goto :goto_4

    :cond_5
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;

    iget p3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mLastNearestIso:I

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->getPanelAutoText(II)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;->setButtonText(ILjava/lang/String;)V

    :goto_4
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->updateButtonState(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->onUpdateResetButtonRequested()V

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onInitialize()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->getProItemList()Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;->setAdapter(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelAdapter;)V

    return-void
.end method

.method public onSensorInfoChanged(II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "proItemId",
            "value"
        }
    .end annotation

    const-string v0, "A "

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iput p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mLastNearestColorTemperature:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getWhiteBalanceString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;->setButtonText(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iput p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mLastNearestFocusDistance:I

    goto :goto_0

    :cond_2
    const/16 v0, -0x14

    const/16 v1, 0x14

    invoke-static {p2, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/Util;->clamp(III)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getExposureValueString(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mIsEvStateManual:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mManager:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelManager;

    int-to-float p2, p2

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr p2, v3

    invoke-virtual {v2, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelManager;->setEvCompensation(F)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->updateExposureValueButtonColor(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;

    invoke-interface {p0, p1, v1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;->setButtonText(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    iput p2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mLastNearestShutterSpeed:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getShutterSpeedString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;->setButtonText(ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->findNearestIso(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mLastNearestIso:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;->setButtonText(ILjava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onUpdateExposureValueButtonRequested(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shutterSpeedValue"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->updateEvState()V

    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mIsEvStateManual:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getExposureValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->updateExposureValueButtonColor(I)V

    :cond_0
    return-void
.end method

.method public onUpdateManualFocusButtonRequested(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSupportManualFocus"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getMultiAfMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, -0x3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getFocusLength()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v1, :cond_2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getFocusString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;

    invoke-interface {p1, v3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;->disableButton(I)V

    const-string p1, "\u2013"

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;

    invoke-interface {p1, v3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;->enableButton(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getFocusString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;

    invoke-interface {p0, v3, p1}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;->setButtonText(ILjava/lang/String;)V

    return-void
.end method

.method public onUpdateResetButtonRequested()V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PRO_RESET:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->isSettingChanged()Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;->updateResetButton(Z)V

    :cond_0
    return-void
.end method

.method public setProControlPanelManager(Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "manager"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mManager:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelManager;

    return-void
.end method

.method public setProSettingKeyList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "settingsKeyList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mSettingsKeyList:Ljava/util/List;

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->registerCameraIdChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraIdChangedListener;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->initProList()V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->unregisterCameraIdChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraIdChangedListener;)V

    return-void
.end method

.method public updateApertureText()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mManager:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelManager;->isApertureSupported()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getShutterSpeedString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getAperture()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->getApertureText(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, v2, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;->setButtonText(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mView:Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getShutterSpeed()I

    move-result p0

    invoke-static {v2, p0}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/util/ProUtil;->getShutterSpeedString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    const-string v2, ""

    invoke-interface {v0, v1, p0, v2}, Lcom/samsung/android/app/galaxyraw/shootingmode/pro/procontrolpanel/ProControlPanelContract$View;->setButtonText(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
