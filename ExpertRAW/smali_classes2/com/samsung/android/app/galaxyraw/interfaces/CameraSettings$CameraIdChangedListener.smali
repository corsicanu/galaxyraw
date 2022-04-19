.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraIdChangedListener;
.super Ljava/lang/Object;
.source "CameraSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraIdChangedListener"
.end annotation


# virtual methods
.method public abstract onCameraIdChanged(IIZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraId",
            "facing",
            "isFacingSwitch"
        }
    .end annotation
.end method
