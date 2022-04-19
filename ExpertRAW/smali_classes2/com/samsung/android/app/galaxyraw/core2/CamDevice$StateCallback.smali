.class public interface abstract Lcom/samsung/android/app/galaxyraw/core2/CamDevice$StateCallback;
.super Ljava/lang/Object;
.source "CamDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/CamDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StateCallback"
.end annotation


# static fields
.field public static final ERROR_CODE_CAMERA_DEVICE:I = 0x4

.field public static final ERROR_CODE_CAMERA_DISABLED:I = 0x3

.field public static final ERROR_CODE_CAMERA_IN_USE:I = 0x1

.field public static final ERROR_CODE_CAMERA_SERVICE:I = 0x5

.field public static final ERROR_CODE_MAX_CAMERAS_IN_USE:I = 0x2

.field public static final ERROR_CODE_VENDOR_ESD_DETECTED:I = 0x7d0


# virtual methods
.method public abstract onCameraDeviceClosed(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camDevice"
        }
    .end annotation
.end method

.method public abstract onCameraDeviceDisconnected(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camDevice"
        }
    .end annotation
.end method

.method public abstract onCameraDeviceError(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "camDevice",
            "errorCode"
        }
    .end annotation
.end method

.method public abstract onCameraDeviceOpened(Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camDevice"
        }
    .end annotation
.end method
