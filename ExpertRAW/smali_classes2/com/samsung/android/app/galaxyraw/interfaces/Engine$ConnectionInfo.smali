.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/interfaces/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConnectionInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$VdisMode;,
        Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$SsmMode;,
        Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$SensorStreamType;,
        Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$SensorFlipMode;,
        Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$RecordingDrMode;
    }
.end annotation


# virtual methods
.method public abstract enableSuperVdis(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableVideoBeautyFace(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setEffectProcessorMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setExtraPictureSize(Landroid/util/Size;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pictureSize",
            "cameraDeviceId"
        }
    .end annotation
.end method

.method public abstract setMainPreviewCallbackSize(Landroid/util/Size;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation
.end method

.method public abstract setMultiCameraEffectProcessorMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setPictureSize(Landroid/util/Size;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pictureSize"
        }
    .end annotation
.end method

.method public abstract setRecordingDrMode(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$RecordingDrMode;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setSensorFlipMode(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$SensorFlipMode;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sensorFlipMode"
        }
    .end annotation
.end method

.method public abstract setSensorStreamType(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$SensorStreamType;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract setSubPreviewCallbackSize(Landroid/util/Size;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation
.end method

.method public abstract setSuperSlowMotionMode(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$SsmMode;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setVdisMode(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ConnectionInfo$VdisMode;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract setVideoFpsRange(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "minFps",
            "maxFps"
        }
    .end annotation
.end method
