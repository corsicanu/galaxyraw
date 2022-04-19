.class public abstract Lcom/samsung/android/app/galaxyraw/core2/CamDevice;
.super Ljava/lang/Object;
.source "CamDevice.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/core2/CamDevice$MultiPictureCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/CamDevice$BurstPictureCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureDepthCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewDepthCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ThumbnailCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionStateCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;,
        Lcom/samsung/android/app/galaxyraw/core2/CamDevice$SessionMode;,
        Lcom/samsung/android/app/galaxyraw/core2/CamDevice$CaptureState;,
        Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ImageReaderHandlerType;
    }
.end annotation


# static fields
.field public static final CAPTURE_STATE_CAPTURING:I = 0x1

.field public static final CAPTURE_STATE_IDLE:I = 0x0

.field protected static final PICTURE_IMAGE_READER_MAX_IMAGE_CNT:I = 0x5

.field protected static final PREVIEW_IMAGE_READER_MAX_IMAGE_CNT:I = 0x3

.field public static final SESSION_MODE_DEFAULT:I = 0x0

.field public static final SESSION_MODE_HIGH_SPEED:I = 0x1

.field public static final STREAM_OPTION_DEPTH:I = 0x8

.field public static final STREAM_OPTION_DUMMY:I = 0x400

.field public static final STREAM_OPTION_IRIS:I = 0x10

.field public static final STREAM_OPTION_NONE:I = 0x0

.field public static final STREAM_OPTION_PHYSICAL_ID_BIT_SHIFT_CNT:I = 0x10

.field public static final STREAM_OPTION_PICTURE:I = 0x2

.field public static final STREAM_OPTION_PREVIEW:I = 0x1

.field public static final STREAM_OPTION_PREVIEW_EXTRA:I = 0x80

.field public static final STREAM_OPTION_RECORD:I = 0x40

.field public static final STREAM_OPTION_SIBLING:I = 0x200

.field public static final STREAM_OPTION_STITCHING:I = 0x20

.field public static final STREAM_OPTION_SUB:I = 0x100

.field public static final STREAM_OPTION_THUMBNAIL:I = 0x4

.field public static final STREAM_OPTION_WINDOW_TRANSFORM_H_FLIP:I = 0x40000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STREAM_OPTION_WINDOW_TRANSFORM_V_FLIP:I = -0x80000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field protected final mOutputConfigurationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mRawPictureImageReaderMaxImageCnt:I

.field protected mYuvPictureImageReaderMaxImageCnt:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->mRawPictureImageReaderMaxImageCnt:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->mYuvPictureImageReaderMaxImageCnt:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->mOutputConfigurationList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public abstract addMainPreviewSurface(Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mainPreviewSurface"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation
.end method

.method public abstract applySettings()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation
.end method

.method public abstract close()V
.end method

.method public abstract closeCaptureSession()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;
        }
    .end annotation
.end method

.method public abstract createCaptureSession(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sessionConfig"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation
.end method

.method public abstract createHighSpeedCaptureSession(Lcom/samsung/android/app/galaxyraw/core2/container/SessionConfig;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sessionConfig"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation
.end method

.method public abstract createRequestBuilder(ILjava/util/Set;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraDeviceTemplate",
            "physicalCameraIdSet"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/hardware/camera2/CaptureRequest$Builder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation
.end method

.method public abstract getArCoreShareCamera()Lcom/google/ar/core/SharedCamera;
.end method

.method public abstract getArCoreSharedSession()Lcom/google/ar/core/Session;
.end method

.method public abstract getCamCapability()Lcom/samsung/android/app/galaxyraw/core2/CamCapability;
.end method

.method public abstract getCameraDeviceStateCallback()Landroid/hardware/camera2/CameraDevice$StateCallback;
.end method

.method public abstract getCaptureState()I
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public getOutputConfigurationList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/CamDevice;->mOutputConfigurationList:Ljava/util/List;

    return-object p0
.end method

.method public abstract getRepeatingState()Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRepeatingState;
.end method

.method public abstract isSupportArCore()Z
.end method

.method public abstract prepareSurface(Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surface"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation
.end method

.method public abstract restartPreviewRepeating()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation
.end method

.method public abstract setAePreCaptureTrigger(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trigger"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation
.end method

.method public abstract setAfAndAePreCaptureTrigger(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "afTrigger",
            "aePreCaptureTrigger"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation
.end method

.method public abstract setAfTrigger(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trigger"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation
.end method

.method public abstract setBurstPictureCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice$BurstPictureCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract setCameraAudioRestriction(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation
.end method

.method public abstract setMainPreviewCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract setMultiPictureCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice$MultiPictureCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract setParameters(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation
.end method

.method public abstract setPictureCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract setPictureDepthCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PictureDepthCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract setPreviewDepthCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewDepthCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract setSubPreviewCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract setThumbnailCallback(Lcom/samsung/android/app/galaxyraw/core2/CamDevice$ThumbnailCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract setTrigger(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation
.end method

.method public abstract startBurstPicRecordRepeating(Ljava/util/List;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "requestOptionsList",
            "recordStateCallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;",
            ">;",
            "Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation
.end method

.method public abstract startBurstPictureRepeating(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestOptions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation
.end method

.method public abstract startHighSpeedPreviewRepeating(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "camDeviceRequestCnt",
            "previewStateCallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation
.end method

.method public abstract startHighSpeedRecordRepeating(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "camDeviceRequestCnt",
            "recordStateCallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation
.end method

.method public abstract startPreviewRepeating(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$PreviewStateCallback;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "camDeviceRequestCnt",
            "previewStateCallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation
.end method

.method public abstract startRecordRepeating(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestCnt;Lcom/samsung/android/app/galaxyraw/core2/CamDevice$RecordStateCallback;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "camDeviceRequestCnt",
            "recordStateCallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation
.end method

.method public abstract stopBurstPicRecordRepeating()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation
.end method

.method public abstract stopBurstPictureRepeating()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation
.end method

.method public abstract stopRepeating()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation
.end method

.method public abstract takeMultiPicture(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestOptionsList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation
.end method

.method public abstract takePicture(Lcom/samsung/android/app/galaxyraw/core2/CamDeviceRequestOptions;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestOptions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamDeviceException;,
            Lcom/samsung/android/app/galaxyraw/core2/exception/CamAccessException;
        }
    .end annotation
.end method
