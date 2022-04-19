.class public Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;
.super Ljava/lang/Object;
.source "CameraDialogManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$VisibilityChangeListener;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$CameraDialogListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraDialogManager"


# instance fields
.field private mActivity:Landroidx/appcompat/app/AppCompatActivity;

.field private mApplicationContext:Landroid/content/Context;

.field private mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private mCameraDialogConditionManager:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;

.field private mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

.field private final mDialogFragmentLock:Ljava/lang/Object;

.field private mIsLocationRequired:Z


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mDialogFragmentLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mApplicationContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mApplicationContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mCameraDialogConditionManager:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "cameraContext"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mDialogFragmentLock:Ljava/lang/Object;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mApplicationContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    new-instance p1, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mApplicationContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mCameraDialogConditionManager:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;

    return-void
.end method

.method private dismissCameraDialogs()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mDialogFragmentLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v5}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/DialogFragment;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private showLocationTagDialog()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->LOCATION_TAG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/Util;->isAFWMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "selfie_tone_camera"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mIsLocationRequired:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->LOCATION_TAG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->IS_COUNTRY_CHINA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->LOCATION_TAG_GUIDE_CHINA_IMPROVE_ACCURACY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->showCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->LOCATION_TAG_GUIDE_IMPROVE_ACCURACY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->showCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mCameraDialogConditionManager:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRestarted()Z

    move-result v3

    invoke-virtual {v1, v3, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;->isLocationTagDialogEnabled(ZI)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->IS_COUNTRY_CHINA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->LOCATION_TAG_GUIDE_CHINA_FIRST_LAUNCH_CAMERA:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->showCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->LOCATION_TAG_GUIDE_FIRST_LAUNCH_CAMERA:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->showCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    :cond_3
    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mIsLocationRequired:Z

    return-void
.end method

.method private startRequestUpdateActivity()V
    .locals 4

    const-string v0, "CameraDialogManager"

    const-string v1, "startRequestUpdateActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    const-class v3, Lcom/samsung/android/app/galaxyraw/RequestUpdateActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Activity is not found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method


# virtual methods
.method public checkExternalSdStorage()V
    .locals 5

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->isExternalSdStorageMounted()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkExternalSdStorage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraDialogManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/Util;->isKNOXMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/Util;->isAFWMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/RestrictionPolicyUtil;->isSdCardWriteRestricted(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->STORAGE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v1, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->getUpdatedStorageStatus(I)I

    move-result v1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->CHANGE_STORAGE_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->isDialogEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->CHANGE_STORAGE_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->showCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v2

    :goto_2
    if-nez v1, :cond_3

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->STORAGE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->STORAGE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->CHANGE_STORAGE_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->setDialogEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Z)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->CHANGE_STORAGE_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->dismissCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->updateRemainCounter()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->STORAGE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->getCachedStorageStatus(I)I

    move-result v0

    if-eq v0, v3, :cond_5

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->STORAGE_STATUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->showCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    goto :goto_3

    :cond_5
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->STORAGE_STATUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->dismissCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    :goto_3
    return-void
.end method

.method public clear()V
    .locals 0

    invoke-virtual {p0, p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->unregisterCameraDialogListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$CameraDialogListener;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->dismissCameraDialogs()V

    return-void
.end method

.method public dismissCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mDialogFragmentLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/DialogFragment;

    if-nez p0, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public handleLocationPermissionResult(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraDialogManager$DialogId:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->requestHighAccuracyLocationMode()V

    :goto_0
    return-void
.end method

.method public initialize()V
    .locals 0

    invoke-virtual {p0, p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->registerCameraDialogListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$CameraDialogListener;)V

    return-void
.end method

.method public isCameraDialogVisible()Z
    .locals 6

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->isCameraDialogVisible(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCameraDialogVisible : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CameraDialogManager"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public isCameraDialogVisible(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mDialogFragmentLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :try_start_0
    monitor-exit v0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/DialogFragment;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->isDetached()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    monitor-exit v0

    return v1

    :cond_3
    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isDialogEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mCameraDialogConditionManager:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;->isDialogEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Z

    move-result p0

    return p0
.end method

.method public onCancelDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    return-void
.end method

.method public onCreateDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    return-void
.end method

.method public onDismissDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    return-void
.end method

.method public onNegativeButtonClicked(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    return-void
.end method

.method public onPositiveButtonClicked(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPositiveButtonClicked : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraDialogManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraDialogManager$DialogId:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mApplicationContext:Landroid/content/Context;

    const/4 v0, 0x1

    const-string v1, "pref_network_connection_allowed_in_china_information_security_dialog"

    invoke-static {p1, v1, v0}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->startUpdateCheck(Z)V

    :goto_0
    return-void
.end method

.method public onVisibilityChanged(Lcom/samsung/android/app/galaxyraw/interfaces/ViewVisibilityEventManager$ViewId;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "isVisible"
        }
    .end annotation

    return-void
.end method

.method public registerCameraDialogListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$CameraDialogListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->registerCameraDialogListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$CameraDialogListener;)V

    return-void
.end method

.method public setDialogEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "isEnabled"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mCameraDialogConditionManager:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;->setDialogEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Z)V

    return-void
.end method

.method public showCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->showCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "title",
            "message"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mDialogFragmentLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "CameraDialogManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showCameraDialog: id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/DialogFragment;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->newInstance(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "CameraDialogManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "showCameraDialog : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public showImproveAccuracyDialog()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->IS_COUNTRY_CHINA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->LOCATION_TAG_GUIDE_CHINA_IMPROVE_ACCURACY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->showCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->LOCATION_TAG_GUIDE_IMPROVE_ACCURACY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->showCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showLocationTagDialog(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLocationRequired"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mIsLocationRequired:Z

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->showLocationTagDialog()V

    return-void
.end method

.method public showTalkBackGuide()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_VOICE_COMMAND:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->isSamsungTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/Util;->isKNOXMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VOICE_CONTROL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->TALK_BACK_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->showCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized startUpdateCheck(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showInformationSecurityDialog"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->SYSTEM_PLATFORM_VERSION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->TARGET_PLATFORM_VERSION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraDialogManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "## systemPlatformVersion : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", targetPlatformVersion : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->startRequestUpdateActivity()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v3, "\\."

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->startRequestUpdateActivity()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mCameraDialogConditionManager:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;->isNetworkConnectionAgreedInInformationSecurityDialog()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "CameraDialogManager"

    const-string v0, "startUpdateCheck : User has agreed to use the network connection in Information Security dialog"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mApplicationContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->checkTimeForAppUpdate(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->mApplicationContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->start()V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_4

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->UPDATE_USING_DATA_INFORMATION_SECURITY_DLG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->isDialogEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "CameraDialogManager"

    const-string v0, "startUpdateCheck : User has not yet agreed to use the network connection in Information Security dialog"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->UPDATE_USING_DATA_INFORMATION_SECURITY_DLG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->isCameraDialogVisible(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->UPDATE_USING_DATA_INFORMATION_SECURITY_DLG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;->showCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    goto :goto_0

    :cond_3
    const-string p1, "CameraDialogManager"

    const-string v0, "startUpdateCheck : Information Security dialog already shown in this launching"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public unregisterCameraDialogListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$CameraDialogListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->unregisterCameraDialogListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$CameraDialogListener;)V

    return-void
.end method
