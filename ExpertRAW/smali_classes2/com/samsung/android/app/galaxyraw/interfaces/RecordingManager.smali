.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;
.super Ljava/lang/Object;
.source "RecordingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingFileInfo;,
        Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;,
        Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingEvent;,
        Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingCommand;
    }
.end annotation


# static fields
.field public static final DB_KEY_HDR10_RECORDING:Ljava/lang/String; = "is_hdr10_video"

.field public static final DB_KEY_RECORDING_AUDIO_CODEC_INFO:Ljava/lang/String; = "audio_codec_info"

.field public static final DB_KEY_RECORDING_TYPE:Ljava/lang/String; = "recordingtype"

.field public static final DB_KEY_RECORDING_VIDEO_CODEC_INFO:Ljava/lang/String; = "video_codec_info"

.field public static final DB_RECORDING_MODE_120FPS_SLOW_MOTION:Ljava/lang/String; = "13"

.field public static final DB_RECORDING_MODE_240FPS_SLOW_MOTION:Ljava/lang/String; = "12"

.field public static final DB_RECORDING_MODE_FAST_MOTION:Ljava/lang/String; = "2"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DB_RECORDING_MODE_HDR10:Ljava/lang/String; = "10"

.field public static final DB_RECORDING_MODE_HYPER_MOTION:Ljava/lang/String; = "5"

.field public static final DB_RECORDING_MODE_KEY:Ljava/lang/String; = "recording_mode"

.field public static final DB_RECORDING_MODE_MULTI_SUPER_SLOW_MOTION:Ljava/lang/String; = "8"

.field public static final DB_RECORDING_MODE_MULTI_TRACK:Ljava/lang/String; = "4"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DB_RECORDING_MODE_PRO_VIDEO:Ljava/lang/String; = "16"

.field public static final DB_RECORDING_MODE_QUICK_TAKE:Ljava/lang/String; = "14"

.field public static final DB_RECORDING_MODE_SIGHT:Ljava/lang/String; = "6"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DB_RECORDING_MODE_SINGLE_FRC_SUPER_SLOW_MOTION:Ljava/lang/String; = "9"

.field public static final DB_RECORDING_MODE_SINGLE_SUPER_SLOW_MOTION:Ljava/lang/String; = "7"

.field public static final DB_RECORDING_MODE_SLOW_MOTION:Ljava/lang/String; = "1"

.field public static final DB_RECORDING_MODE_SLOW_MOTION_V2_WITHOUT_SVC:Ljava/lang/String; = "15"

.field public static final DB_RECORDING_MODE_VIDEO_COLLAGE:Ljava/lang/String; = "3"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DB_SEC_MP_RECORDING_KEY_ARRAY:[Ljava/lang/String;

.field public static final HYPERLAPSE_RECORDING_BITRATE:I = 0x206cc80

.field public static final KEY_RECORDER_PROFILE_RECORDING_AUDIO_BITRATE:Ljava/lang/String; = "recordingAudioBitrate"

.field public static final KEY_RECORDER_PROFILE_RECORDING_AUDIO_DISABLE:Ljava/lang/String; = "recordingAudioDisable"

.field public static final KEY_RECORDER_PROFILE_RECORDING_AUDIO_SAMPLING_RATE:Ljava/lang/String; = "recordingAudioSamplingRate"

.field public static final KEY_RECORDER_PROFILE_RECORDING_BITRATE:Ljava/lang/String; = "recordingBitrate"

.field public static final KEY_RECORDER_PROFILE_RECORDING_FPS:Ljava/lang/String; = "recordingFps"

.field public static final KEY_RECORDER_PROFILE_RECORDING_MODE:Ljava/lang/String; = "recordingMode"

.field public static final MAX_NUM_OF_MEDIA_RECORDER:I = 0x2

.field public static final MEDIA_RECORDER_INDEX_FIRST:I = 0x0

.field public static final MEDIA_RECORDER_INDEX_SECOND:I = 0x1

.field public static final RECORDING_AUDIO_DISABLE:I = 0x1

.field public static final RECORDING_FAIL_NO_INPUT_FRAME:I = -0x3ef

.field public static final RECORDING_MODE_120FPS_SLOW_MOTION:I = 0xd

.field public static final RECORDING_MODE_240FPS_SLOW_MOTION:I = 0xc

.field public static final RECORDING_MODE_FLIP:I = 0x3e8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RECORDING_MODE_HDR10:I = 0xa

.field public static final RECORDING_MODE_HYPER_MOTION:I = 0x5

.field public static final RECORDING_MODE_MULTI_SUPER_SLOW_MOTION:I = 0x8

.field public static final RECORDING_MODE_NORMAL:I = 0x0

.field public static final RECORDING_MODE_PRO_VIDEO:I = 0x10

.field public static final RECORDING_MODE_QUICK_TAKE:I = 0xe

.field public static final RECORDING_MODE_SINGLE_FRC_SUPER_SLOW_MOTION:I = 0x9

.field public static final RECORDING_MODE_SINGLE_SUPER_SLOW_MOTION:I = 0x7

.field public static final RECORDING_MODE_SLOW_MOTION_V1:I = 0x1

.field public static final RECORDING_MODE_SLOW_MOTION_V2_WITHOUT_SVC:I = 0xf

.field public static final SLOW_MOTION_RECORDING_120_CAPTURE_RATE:I = 0x78

.field public static final SLOW_MOTION_RECORDING_240_CAPTURE_RATE:I = 0xf0

.field public static final SLOW_MOTION_RECORDING_AUDIO_BITRATE:I = 0x1f400

.field public static final SLOW_MOTION_RECORDING_AUDIO_SAMPLING_RATE:I = 0x2ee0

.field public static final SLOW_MOTION_RECORDING_BITRATE_FHD:I = 0x895440

.field public static final SLOW_MOTION_RECORDING_BITRATE_UHD:I = 0x16e3600

.field public static final SLOW_MOTION_RECORDING_FPS:I = 0x1e


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "recording_mode"

    const-string v1, "recordingtype"

    const-string v2, "video_codec_info"

    const-string v3, "audio_codec_info"

    const-string v4, "is_hdr10_video"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;->DB_SEC_MP_RECORDING_KEY_ARRAY:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract cancelRestoreTorchFlashModeRecording()V
.end method

.method public abstract cancelSuperSlowMotionRecording(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forced"
        }
    .end annotation
.end method

.method public abstract cancelVideoRecording()V
.end method

.method public abstract changeSuperSlowMotionRecordingFPS(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frc"
        }
    .end annotation
.end method

.method public abstract createRecordingSessionController()V
.end method

.method public abstract enableSuperSlowMotionAutoDetect(ZILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "enable",
            "detectionType",
            "area",
            "previewLayout"
        }
    .end annotation
.end method

.method public abstract getCurrentRecordingFileSize()J
.end method

.method public abstract getCurrentRecordingFileTimeInMs()J
.end method

.method public abstract getCurrentRecordingFileTimeInSecond()J
.end method

.method public abstract getInitialRecordingFacing()I
.end method

.method public abstract getMaxRecordingTimeLimitInSecond()I
.end method

.method public abstract getPersistentInputSurface(I)Landroid/view/Surface;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getPreviousSuperSteadyZoomType()I
.end method

.method public abstract getPreviousZoomValue(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation
.end method

.method public abstract getRecordingState()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingState;
.end method

.method public abstract getRecordingStorage()I
.end method

.method public abstract getRemainRecordingTimeInMsByStorage()J
.end method

.method public abstract getTotalRecordingTimeInMs()J
.end method

.method public abstract getZoomValueByMultiRecordingLensType(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "multiRecordingLensType"
        }
    .end annotation
.end method

.method public abstract handleCamcorderSettingChanged()V
.end method

.method public abstract isAudioRecordingDisabled()Z
.end method

.method public abstract isDualMediaRecorderRequired()Z
.end method

.method public abstract isHdr10RecordingEnabled()Z
.end method

.method public abstract isNeedToRestoreTorchFlashMode()Z
.end method

.method public abstract isPauseRecordingAvailable()Z
.end method

.method public abstract isRecordingAvailableResolution(II)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resolutionId",
            "cameraId"
        }
    .end annotation
.end method

.method public abstract isRecordingControlAvailable()Z
.end method

.method public abstract isRecordingTimeLimited()Z
.end method

.method public abstract isRestoreTorchFlashMode()Z
.end method

.method public abstract isSnapshotAvailable()Z
.end method

.method public abstract isStopRecordingAvailable()Z
.end method

.method public abstract isSwitchFacingWhileRecordingSupported()Z
.end method

.method public abstract isVideoBeautyFaceSupported(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation
.end method

.method public abstract notifyCancelSuperSlowMotionCompleted()V
.end method

.method public abstract pauseVideoRecording()V
.end method

.method public abstract prepareMediaRecorder()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/exception/MediaRecorderPrepareException;
        }
    .end annotation
.end method

.method public abstract prepareQuickTakeRecording()V
.end method

.method public abstract prepareVideoRecording()V
.end method

.method public abstract register(Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager$RecordingManagerEventListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract releaseMediaRecorder()V
.end method

.method public abstract resetAfTrigger()V
.end method

.method public abstract restoreZoomValue()V
.end method

.method public abstract resumeVideoRecording()V
.end method

.method public abstract setEffectRecordingPipRect(Landroid/graphics/RectF;F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rect",
            "scaleFactor"
        }
    .end annotation
.end method

.method public abstract setFpsRange(Landroid/util/Range;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "range"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setMultiRecordingView(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract setRecordingMotionSpeed(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract setRecordingOverheatLevel(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation
.end method

.method public abstract setRestoreTorchFlashMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "restore"
        }
    .end annotation
.end method

.method public abstract startAfTrigger()V
.end method

.method public abstract startBackgroundRecording()V
.end method

.method public abstract startMicLevelMonitor()V
.end method

.method public abstract startMultiMicZoomFocus()V
.end method

.method public abstract startSuperSlowMotionRecording(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detectionType"
        }
    .end annotation
.end method

.method public abstract startVideoRecording()V
.end method

.method public abstract stop()V
.end method

.method public abstract stopBackgroundRecording()V
.end method

.method public abstract stopMicLevelMonitor()V
.end method

.method public abstract stopVideoRecording(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "restartPreview"
        }
    .end annotation
.end method

.method public abstract stopVideoStream()V
.end method

.method public abstract switchFacing(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shootingModeId"
        }
    .end annotation
.end method

.method public abstract unregister()V
.end method

.method public abstract updateOrientationHint()V
.end method
