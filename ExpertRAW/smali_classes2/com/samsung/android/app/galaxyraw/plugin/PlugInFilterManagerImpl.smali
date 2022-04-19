.class public Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;
.super Ljava/lang/Object;
.source "PlugInFilterManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "PlugInFilterManagerImpl"


# instance fields
.field private mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

.field private mPlugInFilterLoader:Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;

.field private mPlugInMyFilterLoader:Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterLoader;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    return-void
.end method

.method private releasePlugInFilters()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->mPlugInFilterLoader:Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->release()V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->mPlugInFilterLoader:Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->mPlugInMyFilterLoader:Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterLoader;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterLoader;->release()V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->mPlugInMyFilterLoader:Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterLoader;

    :cond_1
    return-void
.end method

.method private updateLatestFilter(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectedFilterTab"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;->MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->getFilterSettingKey(Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x2712

    if-eq v0, v1, :cond_2

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;->FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;->MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->getFilterSettingKey(Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;->FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->isFilterLoaded(Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;)Z

    move-result v3

    invoke-static {v1, v0, v3}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterStorage;->getFilterForSet(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->getFilterSettingKey(Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object p0

    invoke-interface {v0, p0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->isFilterLoaded(Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;)Z

    move-result v3

    invoke-static {v1, v0, v3}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterStorage;->getMyFilterForSet(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->getFilterSettingKey(Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object p0

    invoke-interface {v0, p0, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    nop

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->releasePlugInFilters()V

    return-void
.end method

.method public getCurrentFilterTab()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    return p0
.end method

.method public getEffectProcessorMode()I
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->getCurrentFilterTab()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->updateLatestFilter(I)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;->FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->getFilterSettingKey(Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v6, Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;->MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->getFilterSettingKey(Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v6

    invoke-interface {v1, v6}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->getFilterPreviewType()Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;->FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v5

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->getFilterPreviewType()Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;->MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public getFilterPreviewType()Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->getCurrentFilterTab()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;->FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->getFilterSettingKey(Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;->FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;->MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->getFilterSettingKey(Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x3

    if-ne v0, p0, :cond_1

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;->MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;

    return-object p0

    :cond_1
    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;->NONE:Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$FilterPreviewType;

    return-object p0
.end method

.method public getFilterSettingKey(Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;->FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;

    if-ne p1, p0, :cond_2

    if-eqz v0, :cond_1

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_1

    :cond_4
    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;->FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;

    if-ne p1, p0, :cond_6

    if-eqz v0, :cond_5

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_1

    :cond_5
    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    goto :goto_1

    :cond_7
    sget-object p0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    :goto_1
    return-object p0
.end method

.method public isFilterLoaded(Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;->FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->mPlugInFilterLoader:Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;

    if-nez p0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->isFilterLoaded()Z

    move-result p0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->mPlugInMyFilterLoader:Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterLoader;

    if-nez p0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterLoader;->isFilterLoaded()Z

    move-result p0

    return p0
.end method

.method public loadPlugInFilters()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isFilterSupported()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadHeavyResources : Start["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "PlugInFilterManagerImpl"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->mPlugInFilterLoader:Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;

    const/4 v5, 0x0

    if-nez v2, :cond_2

    new-instance v2, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-direct {v2, v6}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)V

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->mPlugInFilterLoader:Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;

    sget-object v6, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v7, v5, [Ljava/lang/Void;

    invoke-virtual {v2, v6, v7}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_MY_FILTER:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->mPlugInMyFilterLoader:Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterLoader;

    if-nez v2, :cond_3

    new-instance v2, Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterLoader;

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-direct {v2, v6}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterLoader;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)V

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->mPlugInMyFilterLoader:Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterLoader;

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v2, p0, v5}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterLoader;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadHeavyResources : End["

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "] ["

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public saveOrder(Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "currentFilterIdList",
            "previousFilterIdList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->isFilterLoaded(Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;->FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/PlugInFilterManager$Type;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->mPlugInFilterLoader:Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0, p2, p3}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterLoader;->saveOrder(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->mPlugInMyFilterLoader:Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterLoader;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/plugin/PlugInFilterManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0, p2, p3}, Lcom/samsung/android/app/galaxyraw/plugin/PlugInMyFilterLoader;->saveOrder(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_1
    :goto_0
    return-void
.end method
