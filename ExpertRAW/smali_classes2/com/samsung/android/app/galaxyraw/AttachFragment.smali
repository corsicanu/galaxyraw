.class public Lcom/samsung/android/app/galaxyraw/AttachFragment;
.super Landroidx/fragment/app/Fragment;
.source "AttachFragment.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout$RotateAction;


# static fields
.field private static final TAG:Ljava/lang/String; = "AttachFragment"


# instance fields
.field private mAttachViewModel:Lcom/samsung/android/app/galaxyraw/AttachViewModel;

.field private mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

.field private mPlayButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    return-void
.end method

.method private getOptionalMatrix(II)Landroid/graphics/Matrix;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/AttachFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070233

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/AttachFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070231

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-gt p1, v2, :cond_0

    if-le p2, v1, :cond_1

    :cond_0
    int-to-float v1, v1

    int-to-float v2, p2

    div-float/2addr v1, v2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/AttachFragment;->getWidthScale(II)F

    move-result p1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mAttachViewModel:Lcom/samsung/android/app/galaxyraw/AttachViewModel;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->getAttachType()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/AttachModeManager$AttachType;->IMAGE:Lcom/samsung/android/app/galaxyraw/AttachModeManager$AttachType;

    if-ne p1, p2, :cond_6

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mAttachViewModel:Lcom/samsung/android/app/galaxyraw/AttachViewModel;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->getOrientation()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    const/16 p2, 0xb4

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SAVE_AS_FLIPPED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    if-nez p1, :cond_3

    move p1, p2

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mAttachViewModel:Lcom/samsung/android/app/galaxyraw/AttachViewModel;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->getOrientation()I

    move-result p0

    if-eqz p0, :cond_5

    if-eq p0, p2, :cond_4

    add-int/lit8 p1, p1, 0x5a

    int-to-float p0, p1

    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_1

    :cond_4
    int-to-float p0, p1

    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_1

    :cond_5
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    :cond_6
    :goto_1
    return-object v0
.end method

.method private getVideoThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mAttachViewModel:Lcom/samsung/android/app/galaxyraw/AttachViewModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mAttachViewModel:Lcom/samsung/android/app/galaxyraw/AttachViewModel;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getAttachModeManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;->getRequestedSaveUri()Landroid/net/Uri;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "rw"

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mAttachViewModel:Lcom/samsung/android/app/galaxyraw/AttachViewModel;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->getSaveUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v1, p0, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mAttachViewModel:Lcom/samsung/android/app/galaxyraw/AttachViewModel;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->getContentUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v1, p0, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/util/ImageUtils;->getVideoThumbnail(Ljava/lang/String;Ljava/io/FileDescriptor;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object p0, v0

    goto :goto_1

    :catch_0
    move-object p0, v0

    const-string v0, "AttachFragment"

    const-string v1, "getVideoThumbnailBitmap : IOException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object p0
.end method

.method private getWidthScale(II)F
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/AttachFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070233

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/AttachFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070231

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/AttachFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070232

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/AttachFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070234

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/AttachFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07022f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/AttachFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v5, 0x7f070230

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sget-object v5, Lcom/samsung/android/app/galaxyraw/AttachFragment$1;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$Resolution$ASPECT_RATIO:[I

    int-to-double v6, p1

    int-to-double v8, p2

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Lcom/samsung/android/app/galaxyraw/util/Util;->getAspectRatioType(D)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;->ordinal()I

    move-result p2

    aget p2, v5, p2

    packed-switch p2, :pswitch_data_0

    int-to-float p0, v0

    goto :goto_0

    :pswitch_0
    int-to-float p0, v1

    goto :goto_0

    :pswitch_1
    int-to-float p0, p0

    goto :goto_0

    :pswitch_2
    int-to-float p0, v4

    goto :goto_0

    :pswitch_3
    int-to-float p0, v2

    goto :goto_0

    :pswitch_4
    int-to-float p0, v3

    :goto_0
    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isValidUri()Z
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mAttachViewModel:Lcom/samsung/android/app/galaxyraw/AttachViewModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->getSaveUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mAttachViewModel:Lcom/samsung/android/app/galaxyraw/AttachViewModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/AttachFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mAttachViewModel:Lcom/samsung/android/app/galaxyraw/AttachViewModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_2
    :goto_0
    :try_start_1
    const-string v1, "AttachFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mAttachViewModel:Lcom/samsung/android/app/galaxyraw/AttachViewModel;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->getContentUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_4

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p0

    :cond_5
    :goto_2
    return v1
.end method

.method private onOkay()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/AttachFragment$1;->$SwitchMap$com$samsung$android$app$galaxyraw$AttachModeManager$AttachType:[I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mAttachViewModel:Lcom/samsung/android/app/galaxyraw/AttachViewModel;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->getAttachType()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/AttachModeManager$AttachType;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/AttachModeManager$AttachType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/AttachFragment;->setVideoResult()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/AttachFragment;->setImageResult()V

    :goto_0
    const-string v0, "6102"

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->finish()V

    return-void
.end method

.method private processBack()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/AttachFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mAttachViewModel:Lcom/samsung/android/app/galaxyraw/AttachViewModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->getAttachType()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/AttachModeManager$AttachType;->VIDEO:Lcom/samsung/android/app/galaxyraw/AttachModeManager$AttachType;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/AttachFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/BroadcastUtil;->sendAppInAppBroadcast(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mAttachViewModel:Lcom/samsung/android/app/galaxyraw/AttachViewModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->getSaveUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getAttachModeManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;->setVideoSavedOnRequestedUri(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getEngine()Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getRecordingManager()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->prepareVideoRecording()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    if-ne p0, v2, :cond_1

    const-string p0, "609"

    goto :goto_0

    :cond_1
    const-string p0, "613"

    :goto_0
    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    if-ne p0, v2, :cond_3

    const-string p0, "608"

    goto :goto_1

    :cond_3
    const-string p0, "612"

    :goto_1
    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private setImageResult()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mAttachViewModel:Lcom/samsung/android/app/galaxyraw/AttachViewModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->getSaveUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/AttachFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mAttachViewModel:Lcom/samsung/android/app/galaxyraw/AttachViewModel;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->getSaveUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/AttachFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mAttachViewModel:Lcom/samsung/android/app/galaxyraw/AttachViewModel;

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->getPictureData()[B

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/util/Util;->writeImageDataToRequestedUri(Landroid/content/Context;Landroid/net/Uri;I[B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->setResult(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->setResult(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "inline-data"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mAttachViewModel:Lcom/samsung/android/app/galaxyraw/AttachViewModel;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->getPictureData()[B

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/ImageUtils;->createCaptureBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->setResult(ILandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private setVideoResult()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mAttachViewModel:Lcom/samsung/android/app/galaxyraw/AttachViewModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->getSaveUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->setResult(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "inline-data"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mAttachViewModel:Lcom/samsung/android/app/galaxyraw/AttachViewModel;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->setResult(ILandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private updateBottomGroupLayout(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/AttachFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/AttachFragment;->getView()Landroid/view/View;

    move-result-object p0

    const p1, 0x7f0a0071

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateImage()V
    .locals 11

    sget-object v0, Lcom/samsung/android/app/galaxyraw/AttachFragment$1;->$SwitchMap$com$samsung$android$app$galaxyraw$AttachModeManager$AttachType:[I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mAttachViewModel:Lcom/samsung/android/app/galaxyraw/AttachViewModel;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->getAttachType()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/AttachModeManager$AttachType;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/AttachModeManager$AttachType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v0, 0x0

    :cond_0
    move-object v4, v0

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/AttachFragment;->getVideoThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mAttachViewModel:Lcom/samsung/android/app/galaxyraw/AttachViewModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->getPictureData()[B

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mAttachViewModel:Lcom/samsung/android/app/galaxyraw/AttachViewModel;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->getPictureData()[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    :goto_0
    move-object v4, v0

    :goto_1
    if-nez v4, :cond_4

    const-string v0, "AttachFragment"

    const-string v1, "returning because tempBitmap is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/AttachFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/AttachFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v5, 0x7f0a0142

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/AttachFragment;->getOptionalMatrix(II)Landroid/graphics/Matrix;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusableInTouchMode(Z)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestFocus()Z

    return-void
.end method

.method private updateLayout(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/AttachFragment;->updateBottomGroupLayout(I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreateView$0$AttachFragment(Landroid/view/View;)V
    .locals 0

    const-string p1, "6101"

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/AttachFragment;->processBack()V

    return-void
.end method

.method public synthetic lambda$onCreateView$1$AttachFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/AttachFragment;->onOkay()V

    return-void
.end method

.method public synthetic lambda$onCreateView$2$AttachFragment(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.video"

    const-string v1, "com.samsung.android.video.player.activity.MoviePlayer"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mAttachViewModel:Lcom/samsung/android/app/galaxyraw/AttachViewModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->getSaveUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mAttachViewModel:Lcom/samsung/android/app/galaxyraw/AttachViewModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->getSaveUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mAttachViewModel:Lcom/samsung/android/app/galaxyraw/AttachViewModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/AttachFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "AttachFragment"

    const-string v0, "VideoPlayer was disabled!!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/AttachFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f12018f

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method public synthetic lambda$onViewCreated$3$AttachFragment(Lcom/samsung/android/app/galaxyraw/AttachModeManager$AttachType;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/AttachFragment$1;->$SwitchMap$com$samsung$android$app$galaxyraw$AttachModeManager$AttachType:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/AttachModeManager$AttachType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mPlayButton:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mPlayButton:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/AttachFragment;->isValidUri()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/AttachFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/AttachFragment;->updateLayout(I)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/AttachFragment;->updateImage()V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/AttachFragment;->processBack()V

    :goto_1
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "AttachFragment"

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    check-cast p1, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/AttachFragment;->updateLayout(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    const-string v0, "AttachFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    const-string p3, "AttachFragment"

    const-string v0, "onCreateView"

    invoke-static {p3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/databinding/AttachBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/samsung/android/app/galaxyraw/databinding/AttachBinding;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/AttachFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->fontScale:F

    const v0, 0x3f99999a    # 1.2f

    cmpl-float v1, p2, v0

    if-lez v1, :cond_0

    move p2, v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/AttachFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    mul-float/2addr p2, v0

    iget-object v0, p1, Lcom/samsung/android/app/galaxyraw/databinding/AttachBinding;->retry:Lcom/samsung/android/app/galaxyraw/widget/StrokedTextButton;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/-$$Lambda$AttachFragment$Uxdcc6FKUWrdBqGigTpdRmSaYv0;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$AttachFragment$Uxdcc6FKUWrdBqGigTpdRmSaYv0;-><init>(Lcom/samsung/android/app/galaxyraw/AttachFragment;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/widget/StrokedTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/samsung/android/app/galaxyraw/databinding/AttachBinding;->retry:Lcom/samsung/android/app/galaxyraw/widget/StrokedTextButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/widget/StrokedTextButton;->semSetButtonShapeEnabled(Z)V

    iget-object v0, p1, Lcom/samsung/android/app/galaxyraw/databinding/AttachBinding;->retry:Lcom/samsung/android/app/galaxyraw/widget/StrokedTextButton;

    invoke-virtual {v0, p3, p2}, Lcom/samsung/android/app/galaxyraw/widget/StrokedTextButton;->setTextSize(IF)V

    iget-object v0, p1, Lcom/samsung/android/app/galaxyraw/databinding/AttachBinding;->retry:Lcom/samsung/android/app/galaxyraw/widget/StrokedTextButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/widget/StrokedTextButton;->setTooltipText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/samsung/android/app/galaxyraw/databinding/AttachBinding;->okay:Lcom/samsung/android/app/galaxyraw/widget/StrokedTextButton;

    new-instance v3, Lcom/samsung/android/app/galaxyraw/-$$Lambda$AttachFragment$aSY__jykznCUCa4ISeQdXI5Dlmw;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$AttachFragment$aSY__jykznCUCa4ISeQdXI5Dlmw;-><init>(Lcom/samsung/android/app/galaxyraw/AttachFragment;)V

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/galaxyraw/widget/StrokedTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/samsung/android/app/galaxyraw/databinding/AttachBinding;->okay:Lcom/samsung/android/app/galaxyraw/widget/StrokedTextButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/widget/StrokedTextButton;->semSetButtonShapeEnabled(Z)V

    iget-object v0, p1, Lcom/samsung/android/app/galaxyraw/databinding/AttachBinding;->okay:Lcom/samsung/android/app/galaxyraw/widget/StrokedTextButton;

    invoke-virtual {v0, p3, p2}, Lcom/samsung/android/app/galaxyraw/widget/StrokedTextButton;->setTextSize(IF)V

    iget-object p2, p1, Lcom/samsung/android/app/galaxyraw/databinding/AttachBinding;->okay:Lcom/samsung/android/app/galaxyraw/widget/StrokedTextButton;

    invoke-virtual {p2, v2}, Lcom/samsung/android/app/galaxyraw/widget/StrokedTextButton;->setTooltipText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/samsung/android/app/galaxyraw/databinding/AttachBinding;->playAttachVideo:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mPlayButton:Landroid/view/View;

    new-instance p3, Lcom/samsung/android/app/galaxyraw/-$$Lambda$AttachFragment$xb7L1te9IA2BTXH7uR_xsVUFDT0;

    invoke-direct {p3, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$AttachFragment$xb7L1te9IA2BTXH7uR_xsVUFDT0;-><init>(Lcom/samsung/android/app/galaxyraw/AttachFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p1, Lcom/samsung/android/app/galaxyraw/databinding/AttachBinding;->attachMain:Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;

    invoke-virtual {p2, p0}, Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;->setRotateAction(Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout$RotateAction;)V

    :cond_1
    iget-object p0, p1, Lcom/samsung/android/app/galaxyraw/databinding/AttachBinding;->attachMain:Lcom/samsung/android/app/galaxyraw/widget/RotatableConstraintLayout;

    return-object p0
.end method

.method public onDetach()V
    .locals 2

    const-string v0, "AttachFragment"

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    const-string p2, "AttachFragment"

    const-string v0, "onKeyUp"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/AttachFragment;->processBack()V

    return p2

    :cond_0
    const/16 v0, 0x17

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    return p2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onPause()V
    .locals 2

    const-string v0, "AttachFragment"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p0

    const/4 v0, -0x1

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->showView(I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "AttachFragment"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;

    move-result-object p0

    const/4 v0, -0x1

    invoke-interface {p0, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/KeyScreenLayerManager;->hideView(I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "savedInstanceState"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/AttachFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class p2, Lcom/samsung/android/app/galaxyraw/AttachViewModel;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/AttachViewModel;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;->mAttachViewModel:Lcom/samsung/android/app/galaxyraw/AttachViewModel;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->getAttachType()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/AttachFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/-$$Lambda$AttachFragment$jyWiP4UlzL5ID9UmWe0xmjul3yo;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$AttachFragment$jyWiP4UlzL5ID9UmWe0xmjul3yo;-><init>(Lcom/samsung/android/app/galaxyraw/AttachFragment;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method onWindowFocusChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasFocus"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/AttachFragment;->isValidUri()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/AttachFragment;->processBack()V

    :cond_0
    return-void
.end method

.method public prepareRotation()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public refreshLayout(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isReverse"
        }
    .end annotation

    return-void
.end method
