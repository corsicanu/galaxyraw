.class public Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;
.super Ljava/lang/Object;
.source "ShootingModeListPresenter.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListContract$Presenter;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$ShootingModeChangedListener;


# instance fields
.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private mCurrentShootingModeCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

.field private mInitialized:Z

.field private mShootingModeListMap:Lcom/samsung/android/app/galaxyraw/data/ShootingModeListMap;

.field private final mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListContract$View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListContract$View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraContext",
            "view"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->mInitialized:Z

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COMMAND_ID_UNKNOWN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->mCurrentShootingModeCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListContract$View;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->makeShootingModeData()V

    return-void
.end method

.method private changeShootingMode(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandId"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->mCurrentShootingModeCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COMMAND_ID_UNKNOWN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCommandReceiver()Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder;->buildCommand(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;)Lcom/samsung/android/app/galaxyraw/command/MenuCommand;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/command/MenuCommand;->execute()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private getPreferenceName(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandId"
        }
    .end annotation

    sget-object p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CommandId:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "pref_key_dual_recording_shooting_mode_dot_animation"

    return-object p0

    :pswitch_1
    const-string p0, "pref_key_portrait_shooting_mode_dot_animation"

    return-object p0

    :pswitch_2
    const-string p0, "pref_key_multi_recording_shooting_mode_dot_animation"

    return-object p0

    :pswitch_3
    const-string p0, "pref_key_pro_video_shooting_mode_dot_animation"

    return-object p0

    :pswitch_4
    const-string p0, "pref_more_shooting_mode_dot_animation"

    return-object p0

    :pswitch_5
    const-string p0, "pref_single_take_photo_shooting_mode_dot_animation"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private hideOverlayView(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandId"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->getPreferenceName(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->loadPreference(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->savePreference(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->mShootingModeListMap:Lcom/samsung/android/app/galaxyraw/data/ShootingModeListMap;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/data/ShootingModeListMap;->getShootingModeResourceMap()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListContract$View;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListContract$View;->refreshOverlayViewVisibility(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private loadPreference(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "pref_key_portrait_shooting_mode_dot_animation"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    const-string v3, "pref_single_take_photo_shooting_mode_dot_animation"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_0

    :sswitch_2
    const-string v3, "pref_key_pro_video_shooting_mode_dot_animation"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "pref_key_dual_recording_shooting_mode_dot_animation"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0

    :sswitch_4
    const-string v3, "pref_key_multi_recording_shooting_mode_dot_animation"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_0
    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "pref_key_portrait_shooting_mode_new_animation"

    invoke-static {p0, p1, v2}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v4, :cond_6

    move v1, v2

    :cond_6
    return v1

    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "pref_single_take_photo_shooting_mode_new_animation"

    invoke-static {p0, p1, v2}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v4, :cond_7

    move v1, v2

    :cond_7
    return v1

    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "pref_key_pro_video_shooting_mode_new_animation"

    invoke-static {p0, p1, v2}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v4, :cond_8

    move v1, v2

    :cond_8
    return v1

    :pswitch_3
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "pref_key_dual_recording_shooting_mode_new_animation"

    invoke-static {p0, p1, v2}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v4, :cond_9

    move v1, v2

    :cond_9
    return v1

    :pswitch_4
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "pref_key_multi_recording_shooting_mode_new_animation"

    invoke-static {p0, p1, v2}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v4, :cond_a

    move v1, v2

    :cond_a
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x7b6d5702 -> :sswitch_4
        0x25fd2179 -> :sswitch_3
        0x39980cfc -> :sswitch_2
        0x4f720544 -> :sswitch_1
        0x6951cea6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private makeShootingModeData()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isSimpleMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getSimpleOrderString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getOrderString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v2, Lcom/samsung/android/app/galaxyraw/data/ShootingModeListMap;

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/app/galaxyraw/data/ShootingModeListMap;-><init>(Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->mShootingModeListMap:Lcom/samsung/android/app/galaxyraw/data/ShootingModeListMap;

    return-void
.end method

.method private savePreference(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    move v1, v3

    goto :goto_1

    :sswitch_0
    const-string v0, "pref_key_portrait_shooting_mode_dot_animation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "pref_single_take_photo_shooting_mode_dot_animation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :sswitch_2
    const-string v0, "pref_key_pro_video_shooting_mode_dot_animation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "pref_key_dual_recording_shooting_mode_dot_animation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :sswitch_4
    const-string v0, "pref_key_multi_recording_shooting_mode_dot_animation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "pref_key_portrait_shooting_mode_new_animation"

    invoke-static {p0, p1, v2}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2

    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "pref_single_take_photo_shooting_mode_new_animation"

    invoke-static {p0, p1, v2}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2

    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "pref_key_pro_video_shooting_mode_new_animation"

    invoke-static {p0, p1, v2}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2

    :pswitch_3
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "pref_key_dual_recording_shooting_mode_new_animation"

    invoke-static {p0, p1, v2}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2

    :pswitch_4
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "pref_key_multi_recording_shooting_mode_new_animation"

    invoke-static {p0, p1, v2}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7b6d5702 -> :sswitch_4
        0x25fd2179 -> :sswitch_3
        0x39980cfc -> :sswitch_2
        0x4f720544 -> :sswitch_1
        0x6951cea6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->mShootingModeListMap:Lcom/samsung/android/app/galaxyraw/data/ShootingModeListMap;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/data/ShootingModeListMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->mShootingModeListMap:Lcom/samsung/android/app/galaxyraw/data/ShootingModeListMap;

    return-void
.end method

.method public onChangeShootingModeRequested(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commandId"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->changeShootingMode(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListContract$View;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListContract$View;->retryChangeShootingMode(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V

    :cond_0
    return-void
.end method

.method public onFocusPositionChanged()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;->CAMERA_LIST_SCROLLING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->playHaptic(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$HapticPattern;)V

    return-void
.end method

.method public onInitialize()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListContract$View;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListAdapter;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->mShootingModeListMap:Lcom/samsung/android/app/galaxyraw/data/ShootingModeListMap;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/data/ShootingModeListMap;->getShootingModeResourceMap()Landroid/util/SparseArray;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListAdapter;-><init>(Landroid/content/Context;Landroid/util/SparseArray;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListContract$View;->setAdapter(Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListAdapter;)V

    return-void
.end method

.method public onRefreshList()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->mShootingModeListMap:Lcom/samsung/android/app/galaxyraw/data/ShootingModeListMap;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/data/ShootingModeListMap;->clear()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->makeShootingModeData()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListContract$View;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->mShootingModeListMap:Lcom/samsung/android/app/galaxyraw/data/ShootingModeListMap;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/data/ShootingModeListMap;->getShootingModeResourceMap()Landroid/util/SparseArray;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListContract$View;->refreshListData(Landroid/util/SparseArray;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListContract$View;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->mCurrentShootingModeCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListContract$View;->refreshListPosition(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V

    return-void
.end method

.method public onShootingModeChanged(IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "shootingMode",
            "facing",
            "isFacingSwitch"
        }
    .end annotation

    iget-boolean p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->mInitialized:Z

    if-nez p2, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->mInitialized:Z

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListContract$View;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getCommandId(I)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListContract$View;->setInitialShootingMode(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getCommandId(I)Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->mCurrentShootingModeCommandId:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->hideOverlayView(Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->registerShootingModeChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$ShootingModeChangedListener;)V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->mView:Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListContract$View;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListContract$View;->stopChangeShootingModeRunnable()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->unregisterShootingModeChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$ShootingModeChangedListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/keyscreen/shootingmodelist/ShootingModeListPresenter;->mInitialized:Z

    return-void
.end method
