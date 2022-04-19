.class public interface abstract Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$FaceDetectionListener;
.super Ljava/lang/Object;
.source "CameraContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FaceDetectionListener"
.end annotation


# virtual methods
.method public abstract onFaceDetection([Landroid/graphics/Rect;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "faces",
            "skipUpdate"
        }
    .end annotation
.end method
