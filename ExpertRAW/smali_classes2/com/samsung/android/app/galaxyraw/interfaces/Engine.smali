.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/Engine;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;,
        Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ScreenFlashEventListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/Engine$RequestQueueEmptyListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/Engine$PreviewEventListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/Engine$PostProcessingEventListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/Engine$NightScreenFlashEventListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MediaRecorderProfileBuilder;,
        Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerSettings;,
        Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerEventListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/Engine$HistogramUpdateListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/Engine$GenericEventListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/Engine$DbUpdateCompleteListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;,
        Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo;,
        Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureEventListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/Engine$BurstCaptureEventListener;,
        Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;,
        Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;,
        Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;
    }
.end annotation


# static fields
.field public static final CAMERA_ID_BACK:I = 0x0

.field public static final CAMERA_ID_BACK_AND_FRONT:I = 0xca

.field public static final CAMERA_ID_BACK_DUAL_PORTRAIT:I = 0x15

.field public static final CAMERA_ID_BACK_SEAMLESS_AND_FRONT:I = 0xc8

.field public static final CAMERA_ID_BACK_SEAMLESS_ZOOM:I = 0x14

.field public static final CAMERA_ID_BACK_SECOND_TELE:I = 0x68

.field public static final CAMERA_ID_BACK_SUPER_RESOLUTION:I = 0x66

.field public static final CAMERA_ID_BACK_TELE:I = 0x64

.field public static final CAMERA_ID_BACK_WIDE:I = 0x65

.field public static final CAMERA_ID_BACK_WIDE_NORMAL_DUAL_PORTRAIT:I = 0x17

.field public static final CAMERA_ID_FRONT:I = 0x1

.field public static final CAMERA_ID_FRONT_AND_BACK:I = 0xcb

.field public static final CAMERA_ID_FRONT_AND_BACK_SEAMLESS:I = 0xc9

.field public static final CAMERA_ID_FRONT_DUAL_PORTRAIT:I = 0x16

.field public static final CAMERA_ID_FRONT_DYNAMIC_FOV:I = 0x67

.field public static final EFFECT_PROCESSOR_COLOR_TUNE:I = 0x4

.field public static final EFFECT_PROCESSOR_ENHANCED_SELFIE:I = 0x3

.field public static final EFFECT_PROCESSOR_FOOD_LENS:I = 0x5

.field public static final EFFECT_PROCESSOR_NONE:I = 0x0

.field public static final EFFECT_PROCESSOR_PHOTO_FILTER:I = 0x1

.field public static final EFFECT_PROCESSOR_PHOTO_MY_FILTER:I = 0x6

.field public static final EFFECT_PROCESSOR_VIDEO_FILTER:I = 0x2

.field public static final EFFECT_PROCESSOR_VIDEO_MY_FILTER:I = 0x7

.field public static final ERROR_CAMERA_BUSY:I = -0x3

.field public static final ERROR_CAMERA_BUSY_OPEN:I = -0x2

.field public static final ERROR_CAMERA_DEVICE:I = -0x5

.field public static final ERROR_CAMERA_DISABLED:I = -0x4

.field public static final ERROR_CAMERA_DISCONNECTED:I = -0x7

.field public static final ERROR_CAMERA_OPEN:I = -0x1

.field public static final ERROR_CAMERA_SERVICE:I = -0x6

.field public static final ERROR_CREATE_EXTRA_SURFACE_FAIL:I = -0x16

.field public static final ERROR_CREATE_SURFACE_FAIL:I = -0x15

.field public static final ERROR_MAKER_CONNECT_FAIL:I = -0x14

.field public static final ERROR_MEDIA_RECORDER_BUFFER_OVERFLOW:I = -0xe

.field public static final ERROR_PREPARE_MEDIA_RECORDER_PROFILE_FAIL:I = -0xf

.field public static final ERROR_PREPARE_RECORDING_NOT_ENOUGH_FILE_SIZE:I = -0x10

.field public static final ERROR_RECORDING_FAIL:I = -0xb

.field public static final ERROR_RECORDING_START_FAIL:I = -0xc

.field public static final ERROR_RECORDING_STOP_FAIL:I = -0xd

.field public static final ERROR_SINGLE_TAKE_SERVICE_PERMISSION_DENIED:I = -0x17

.field public static final ERROR_TAKE_PICTURE:I = -0xa

.field public static final MULTI_CAMERA_EFFECT_PROCESSOR_DUAL_PIP:I = 0x1

.field public static final MULTI_CAMERA_EFFECT_PROCESSOR_NONE:I = 0x0

.field public static final MULTI_CAMERA_EFFECT_PROCESSOR_SPLIT:I = 0x2

.field public static final ZOOM_TYPE_LENS_PHYSICAL:I = 0x6

.field public static final ZOOM_TYPE_MULTI_RECORDING:I = 0x3

.field public static final ZOOM_TYPE_NIGHT:I = 0x4

.field public static final ZOOM_TYPE_NORMAL:I = 0x0

.field public static final ZOOM_TYPE_PORTRAIT:I = 0x7

.field public static final ZOOM_TYPE_PRO:I = 0x5

.field public static final ZOOM_TYPE_SUPER_RESOLUTION:I = 0x2

.field public static final ZOOM_TYPE_VIDEO:I = 0x1


# virtual methods
.method public abstract cancelCapture(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "captureType"
        }
    .end annotation
.end method

.method public abstract cancelShutterAction()V
.end method

.method public abstract changeShootingMode(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "shootingModeId",
            "isFacingSwitch"
        }
    .end annotation
.end method

.method public abstract clearLastContentData()V
.end method

.method public abstract createExtraSurface(Landroid/view/SurfaceView;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extraSurfaceView"
        }
    .end annotation
.end method

.method public abstract disableRecordingSeamlessZoom(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disable"
        }
    .end annotation
.end method

.method public abstract dumpCapability()V
.end method

.method public abstract dumpLastCaptureResult()V
.end method

.method public abstract enableIntelligentGuide(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableNonLinearDngCompression(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enablePalmDetection(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enablePostProcessingMotionPhoto(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableQrCodeDetection(ZJZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "enable",
            "interval",
            "enableQrImage"
        }
    .end annotation
.end method

.method public abstract enableShapeCorrection(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableSlowMotionEventDetection(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract getAeAfManager()Lcom/samsung/android/app/galaxyraw/interfaces/AeAfManager;
.end method

.method public abstract getBurstCaptureFps()I
.end method

.method public abstract getCallbackManager()Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager;
.end method

.method public abstract getCapability()Lcom/samsung/android/app/galaxyraw/interfaces/Capability;
.end method

.method public abstract getCapability(I)Lcom/samsung/android/app/galaxyraw/interfaces/Capability;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraId"
        }
    .end annotation
.end method

.method public abstract getEstimatedCaptureDuration()I
.end method

.method public abstract getExtraSurfaceView()Landroid/view/SurfaceView;
.end method

.method public abstract getFixedSurfaceSize()Landroid/util/Size;
.end method

.method public abstract getFrontCropAngleZoomValue()I
.end method

.method public abstract getInitialCameraId()I
.end method

.method public abstract getLastContentData()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ContentData;
.end method

.method public abstract getMaxZoomLevel()I
.end method

.method public abstract getMaxZoomLevel(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraId"
        }
    .end annotation
.end method

.method public abstract getMinZoomLevel()I
.end method

.method public abstract getMinZoomLevel(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraId"
        }
    .end annotation
.end method

.method public abstract getPreviewDisplayMatrix(ILandroid/graphics/Rect;)Landroid/graphics/Matrix;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "screenWidth",
            "previewRect"
        }
    .end annotation
.end method

.method public abstract getRecordingManager()Lcom/samsung/android/app/galaxyraw/interfaces/RecordingManager;
.end method

.method public abstract getSeamlessZoomValueArray()[I
.end method

.method public abstract getSensorInfoActiveArraySize()Landroid/graphics/Rect;
.end method

.method public abstract getShutterTimerManager()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager;
.end method

.method public abstract getTotalZoomLevel()I
.end method

.method public abstract getZoomType()I
.end method

.method public abstract handleBurstShutterPressed(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputType"
        }
    .end annotation
.end method

.method public abstract handleBurstShutterReleased()Z
.end method

.method public abstract handleShutterReleased(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$InputType;Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputType",
            "captureType"
        }
    .end annotation
.end method

.method public abstract isCurrentCaptureState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureState;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "captureState"
        }
    .end annotation
.end method

.method public abstract isCurrentState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method public abstract isEffectProcessorActivated()Z
.end method

.method public abstract isMultiCameraEffectProcessorActivated()Z
.end method

.method public abstract isPictureSaving()Z
.end method

.method public abstract isRequestQueueEmpty()Z
.end method

.method public abstract isShutterReceived()Z
.end method

.method public abstract notifyChangePreviewSurfaceSize()V
.end method

.method public abstract notifyWaitPreviewSurface()V
.end method

.method public abstract prepareToStopEngine()V
.end method

.method public abstract processPicture()V
.end method

.method public abstract reconnectMaker()V
.end method

.method public abstract registerAgifBurstCaptureEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$BurstCaptureEventListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract registerBurstCaptureEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$BurstCaptureEventListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract registerCaptureEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureEventListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract registerPostProcessingEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$PostProcessingEventListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract registerPreviewEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$PreviewEventListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract registerRequestQueueEmptyListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$RequestQueueEmptyListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract requestSlowMotionEventResult()V
.end method

.method public abstract setAdaptiveLensMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setCompositionGuideCommand(Lcom/samsung/android/app/galaxyraw/core2/PrivateMetadata$CompositionGuideCommand;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "command"
        }
    .end annotation
.end method

.method public abstract setCompositionGuideMode(Lcom/samsung/android/app/galaxyraw/core2/PrivateMetadata$CompositionGuideMode;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setDbUpdateCompleteListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$DbUpdateCompleteListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract setDetectedSceneInfo([J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract setEffectParameter(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation
.end method

.method public abstract setEvCompensation(F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "evCompensationValue"
        }
    .end annotation
.end method

.method public abstract setFixedSurfaceSize(II)V
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
.end method

.method public abstract setFoodBlurPosition(Landroid/graphics/PointF;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation
.end method

.method public abstract setFrontPictureStreamType(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract setHdrState(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hdrState"
        }
    .end annotation
.end method

.method public abstract setHistogramUpdateListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$HistogramUpdateListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract setLabsCaptureMode(Lcom/samsung/android/app/galaxyraw/core2/PrivateMetadata$LabsCaptureMode;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setMakerEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$MakerEventListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract setNightScreenFlashEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$NightScreenFlashEventListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract setOverheatLevel(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation
.end method

.method public abstract setQrCodeDetectionInterval(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interval"
        }
    .end annotation
.end method

.method public abstract setSceneDetectionMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sceneDetectionMode"
        }
    .end annotation
.end method

.method public abstract setScreenFlashEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ScreenFlashEventListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract setSelfieToneMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setShutterReceived(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isReceived"
        }
    .end annotation
.end method

.method public abstract setSkinColorLevel(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "skinColorLevel"
        }
    .end annotation
.end method

.method public abstract setSkinSmoothnessLevel(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "skinSmoothnessLevel"
        }
    .end annotation
.end method

.method public abstract setSkinToneLevel(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "skinToneLevel"
        }
    .end annotation
.end method

.method public abstract setSmartScanCorner([F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation
.end method

.method public abstract setSubCameraZoomValue(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomValue"
        }
    .end annotation
.end method

.method public abstract setSuperNightShotMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "superNightShotMode"
        }
    .end annotation
.end method

.method public abstract setTargetZoomRatio(F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract shutdownEngine()V
.end method

.method public abstract startEngine()V
.end method

.method public abstract startMotionPhoto()V
.end method

.method public abstract startTransientZooming()V
.end method

.method public abstract startZoomLock()V
.end method

.method public abstract stopCapture(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureType;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "captureType"
        }
    .end annotation
.end method

.method public abstract stopEngine()V
.end method

.method public abstract stopMotionPhoto()V
.end method

.method public abstract stopTransientZooming()V
.end method

.method public abstract switchCamera(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraId"
        }
    .end annotation
.end method

.method public abstract switchMultiCameraFacing()V
.end method

.method public abstract takePreviewSnapshot(Lcom/samsung/android/app/galaxyraw/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animationType"
        }
    .end annotation
.end method

.method public abstract takeVideoSnapshot()V
.end method

.method public abstract unregisterAgifBurstCaptureEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$BurstCaptureEventListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract unregisterBurstCaptureEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$BurstCaptureEventListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract unregisterCaptureEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$CaptureEventListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract unregisterPostProcessingEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$PostProcessingEventListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract unregisterPreviewEventListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$PreviewEventListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract unregisterRequestQueueEmptyListener(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$RequestQueueEmptyListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method
