.class Lcom/samsung/android/app/galaxyraw/AttachModeManager;
.super Ljava/lang/Object;
.source "AttachModeManager.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/AttachModeManager$RequestedMediaProfile;,
        Lcom/samsung/android/app/galaxyraw/AttachModeManager$AttachType;
    }
.end annotation


# static fields
.field private static final HIGH_QUALITY:I = 0x1

.field private static final KEY_AUDIO_BITRATE:Ljava/lang/String; = "audio_bitrate"

.field private static final KEY_AUDIO_CHANNEL:Ljava/lang/String; = "audio_channel"

.field private static final KEY_AUDIO_ENCODER:Ljava/lang/String; = "audio_encoder"

.field private static final KEY_AUDIO_SAMPLING_RATE:Ljava/lang/String; = "audio_sampling_rate"

.field private static final KEY_BACK_VIDEO_RESOLUTION:Ljava/lang/String; = "back_video_size"

.field private static final KEY_FILE_SIZE_INTERVAL:Ljava/lang/String; = "file_size_interval"

.field private static final KEY_FRONT_VIDEO_RESOLUTION:Ljava/lang/String; = "front_video_size"

.field private static final KEY_MODE_MMS:Ljava/lang/String; = "mms"

.field private static final KEY_OUTPUT_FORMAT:Ljava/lang/String; = "output_format"

.field private static final KEY_VIDEO_BITRATE:Ljava/lang/String; = "video_bitrate"

.field private static final KEY_VIDEO_ENCODER:Ljava/lang/String; = "video_encoder"

.field private static final KEY_VIDEO_FPS:Ljava/lang/String; = "video_fps"

.field private static final LOW_QUALITY:I = 0x0

.field private static final NOT_REQUESTED:I = -0x1

.field private static final NO_VALUE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "AttachModeManager"


# instance fields
.field private final mAttachFragmentLock:Ljava/lang/Object;

.field private mAttachViewModel:Lcom/samsung/android/app/galaxyraw/AttachViewModel;

.field private final mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

.field private mIsCallingPackageHasLocationPermission:Z

.field private mIsVideoResolutionRequested:Z

.field private mIsVideoSavedOnRequestedUri:Z

.field private mMyExtras:Landroid/os/Bundle;

.field private mRequestedMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;

.field private mRequestedRecordingDurationLimit:I

.field private mRequestedRecordingSizeLimit:J

.field private mRequestedSaveUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/GalaxyRaw;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraContext"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mRequestedRecordingDurationLimit:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mRequestedRecordingSizeLimit:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mRequestedMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mRequestedSaveUri:Landroid/net/Uri;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mIsCallingPackageHasLocationPermission:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mIsVideoSavedOnRequestedUri:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mIsVideoResolutionRequested:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mAttachFragmentLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->initialize(Ljava/lang/String;)V

    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/AttachViewModel$AttachViewModelFactory;

    invoke-direct {v1}, Lcom/samsung/android/app/galaxyraw/AttachViewModel$AttachViewModelFactory;-><init>()V

    invoke-direct {v0, p1, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class p1, Lcom/samsung/android/app/galaxyraw/AttachViewModel;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/AttachViewModel;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mAttachViewModel:Lcom/samsung/android/app/galaxyraw/AttachViewModel;

    return-void
.end method

.method private checkExtraDurationLimit()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "AttachModeManager"

    if-nez v0, :cond_0

    const-string p0, "No EXTRA_DURATION_LIMIT"

    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkExtraDurationLimit. duration limit : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->setRequestedRecordingDurationLimit(I)V

    return-void
.end method

.method private checkExtraMediaRecorderProfileInfo()V
    .locals 14

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v1, "android.intent.extra.videoQuality"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v3, "video_encoder"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v3, "video_bitrate"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v3, "video_fps"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v3, "output_format"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v3, "audio_encoder"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v3, "audio_bitrate"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v3, "audio_channel"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v3, "audio_sampling_rate"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v3, "file_size_interval"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v3, "back_video_size"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    const-string v4, "front_video_size"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v3

    if-ne v1, v2, :cond_0

    if-ne v3, v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mIsVideoResolutionRequested:Z

    :cond_1
    if-ne v1, v2, :cond_2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RECORDING_MIN_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v1

    :cond_2
    if-ne v3, v2, :cond_3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_RECORDING_MIN_RESOLUTION:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v3

    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mIsVideoResolutionRequested:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ATTACH_BACK_VIDEO_FIXED_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ATTACH_FRONT_VIDEO_FIXED_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkExtraMediaRecorderProfileInfo. videoEncoder : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", videoBitrate : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", videoFps : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", outputFormat : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", audioEncoder : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", audioBitrate : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", audioChannels : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", audioSamplingRate : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", fileSizeInterval : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", backVideoResolution : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", frontVideoResolution : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AttachModeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/app/galaxyraw/AttachModeManager$RequestedMediaProfile;

    move-object v4, v0

    invoke-direct/range {v4 .. v13}, Lcom/samsung/android/app/galaxyraw/AttachModeManager$RequestedMediaProfile;-><init>(IIIIIIIII)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->setRequestedMediaRecorderProfile(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;)V

    return-void
.end method

.method private checkExtraOutput()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "output"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "AttachModeManager"

    if-nez v0, :cond_0

    const-string p0, "No EXTRA_OUTPUT"

    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->setRequestedSaveUri(Landroid/net/Uri;)V

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkExtraOutput. saveUri : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private checkExtraSizeLimit()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.sizeLimit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->setRequestedRecordingSizeLimit(J)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "AttachModeManager"

    const-string v0, "No EXTRA_SIZE_LIMIT"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initialize(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    const-string p1, "3"

    const-string v0, "7001"

    const-string v3, "mms"

    const-string v4, "AttachModeManager"

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v2, "initialize : Video capture intent"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->checkExtraMediaRecorderProfileInfo()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->checkExtraSizeLimit()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->checkExtraDurationLimit()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->checkExtraOutput()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {v0, p1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    const-string v2, "initialize : Image capture intent"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->checkExtraOutput()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mMyExtras:Landroid/os/Bundle;

    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {v0, p1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x74de9aed -> :sswitch_2
        -0x62d863dd -> :sswitch_1
        0x29c9b033 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isCallingPackageHasLocationPermission()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsCallingPackageHasLocationPermission : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mIsCallingPackageHasLocationPermission:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AttachModeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mIsCallingPackageHasLocationPermission:Z

    return p0
.end method

.method private setRequestedMediaRecorderProfile(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "profile"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mRequestedMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;

    return-void
.end method

.method private setRequestedRecordingDurationLimit(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "durationLimit"
        }
    .end annotation

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mRequestedRecordingDurationLimit:I

    return-void
.end method

.method private setRequestedRecordingSizeLimit(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sizeLimit"
        }
    .end annotation

    iput-wide p1, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mRequestedRecordingSizeLimit:J

    return-void
.end method

.method private setRequestedSaveUri(Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mRequestedSaveUri:Landroid/net/Uri;

    return-void
.end method

.method private updateCallingPackageHasLocationPermission()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/app/galaxyraw/util/PermissionUtils;->hasLocationPermissions(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mIsCallingPackageHasLocationPermission:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCallingPackageHasLocationPermission : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mIsCallingPackageHasLocationPermission:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AttachModeManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method getAttachFragment()Lcom/samsung/android/app/galaxyraw/AttachFragment;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mAttachFragmentLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const v1, 0x7f0a0072

    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    instance-of v1, p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/AttachFragment;

    monitor-exit v0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getRequestedMediaRecorderProfile()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mRequestedMediaRecorderProfile:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;

    return-object p0
.end method

.method public getRequestedRecordingDurationLimit()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mRequestedRecordingDurationLimit:I

    return p0
.end method

.method public getRequestedRecordingSizeLimit()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mRequestedRecordingSizeLimit:J

    return-wide v0
.end method

.method public getRequestedSaveUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mRequestedSaveUri:Landroid/net/Uri;

    return-object p0
.end method

.method public isLocationPermissionGranted()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ATTACH_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->isCallingPackageHasLocationPermission()Z

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
.end method

.method public isVideoResolutionRequested()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mIsVideoResolutionRequested:Z

    return p0
.end method

.method public isVideoSavedOnRequestedUri()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mIsVideoSavedOnRequestedUri:Z

    return p0
.end method

.method public setVideoSavedOnRequestedUri(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isVideoSavedOnRequestedUri"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mIsVideoSavedOnRequestedUri:Z

    return-void
.end method

.method startAttachFragment()V
    .locals 5

    const-string v0, "AttachModeManager"

    const-string v1, "startAttachFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->getRequestedSaveUri()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/AttachModeManager$AttachType;->VIDEO:Lcom/samsung/android/app/galaxyraw/AttachModeManager$AttachType;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/AttachModeManager$AttachType;->IMAGE:Lcom/samsung/android/app/galaxyraw/AttachModeManager$AttachType;

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getEngine()Lcom/samsung/android/app/galaxyraw/interfaces/Engine;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine;->getLastContentData()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mAttachFragmentLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mAttachViewModel:Lcom/samsung/android/app/galaxyraw/AttachViewModel;

    invoke-virtual {v4, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/AttachViewModel;->setData(Lcom/samsung/android/app/galaxyraw/AttachModeManager$AttachType;Landroid/net/Uri;Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const v0, 0x7f0a0072

    new-instance v1, Lcom/samsung/android/app/galaxyraw/AttachFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/galaxyraw/AttachFragment;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    monitor-exit v3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method updateAttachMode(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->updateCallingPackageHasLocationPermission()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    goto :goto_0

    :sswitch_1
    const-string v0, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v4, v2

    goto :goto_0

    :sswitch_2
    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    packed-switch v4, :pswitch_data_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ATTACH_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ATTACH_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_1

    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/AttachModeManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/GalaxyRaw;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/GalaxyRaw;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ATTACH_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x74de9aed -> :sswitch_2
        -0x62d863dd -> :sswitch_1
        0x29c9b033 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
