.class Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FaceDetectionCallbackManager;
.super Ljava/lang/Object;
.source "CallbackManagerImpl.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceDetectionInfoCallback;
.implements Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$SwFaceDetectionEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaceDetectionCallbackManager"
.end annotation


# instance fields
.field private mFaceDetectionListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$FaceDetectionListener;

.field private mSwFaceDetectionListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SwFaceDetectionListener;

.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->mFaceDetectionListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$FaceDetectionListener;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->mSwFaceDetectionListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SwFaceDetectionListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FaceDetectionCallbackManager;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)V

    return-void
.end method

.method private getRect(Z[Landroid/hardware/camera2/params/Face;Landroid/graphics/Rect;)[Landroid/graphics/Rect;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "normalize",
            "faces",
            "cropRegion"
        }
    .end annotation

    array-length v0, p2

    new-array v0, v0, [Landroid/graphics/Rect;

    array-length v1, p2

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->access$4000(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getSensorInfoActiveArraySize()Landroid/graphics/Rect;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->access$4100(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getPreviewManager()Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/PreviewLayoutManager;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {p3, p1, p0}, Lcom/samsung/android/app/galaxyraw/util/Util;->getNormalizedMatrix(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Matrix;

    move-result-object v2

    :cond_1
    const/4 p0, 0x0

    :goto_0
    array-length p1, p2

    if-ge p0, p1, :cond_3

    new-instance p1, Landroid/graphics/Rect;

    aget-object p3, p2, p0

    invoke-virtual {p3}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    aput-object p1, v0, p0

    if-eqz v2, :cond_2

    aget-object p1, p2, p0

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    aget-object p1, v0, p0

    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private handleFaceRect([Landroid/graphics/Rect;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "faceRects",
            "skipUpdate"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->access$4100(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->access$4000(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;->PREVIEWING:Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->isCurrentState(Lcom/samsung/android/app/galaxyraw/interfaces/Engine$State;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->access$4000(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->getGenericEventListener()Lcom/samsung/android/app/galaxyraw/interfaces/Engine$GenericEventListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$GenericEventListener;->onFaceDetection([Landroid/graphics/Rect;Z)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onFaceDetection$0$CallbackManagerImpl$FaceDetectionCallbackManager([Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->mFaceDetectionListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$FaceDetectionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$FaceDetectionListener;->onFaceDetection([Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->access$4300(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->access$4200(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getSupportedFaceDetectionMode(I)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFaceDetectionType;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFaceDetectionType;->HW:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFaceDetectionType;

    if-ne v1, v2, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->handleFaceRect([Landroid/graphics/Rect;Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$onSwFaceDetection$1$CallbackManagerImpl$FaceDetectionCallbackManager([Landroid/graphics/Rect;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->mSwFaceDetectionListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SwFaceDetectionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SwFaceDetectionListener;->onSwFaceDetection([Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->access$4200(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->access$4300(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getSupportedFaceDetectionMode(I)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFaceDetectionType;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFaceDetectionType;->SW:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFaceDetectionType;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->access$4300(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getSupportedFaceDetectionMode(I)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFaceDetectionType;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFaceDetectionType;->BOTH:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFaceDetectionType;

    if-ne v1, v2, :cond_2

    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->handleFaceRect([Landroid/graphics/Rect;Z)V

    :cond_2
    return-void
.end method

.method public onFaceDetection(Ljava/lang/Long;Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceDetectionInfoCallback$FaceDetectionInfo;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeStamp",
            "faceDetectionInfo",
            "camDevice"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceDetectionInfoCallback$FaceDetectionInfo;->getFaces()[Landroid/hardware/camera2/params/Face;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/core2/MakerInterface$FaceDetectionInfoCallback$FaceDetectionInfo;->getCropRegion()Landroid/graphics/Rect;

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p0, p3, p1, p2}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->getRect(Z[Landroid/hardware/camera2/params/Face;Landroid/graphics/Rect;)[Landroid/graphics/Rect;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->access$4000(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$FaceDetectionCallbackManager$8dfwPdwS9S-RshKDI4es1ZrSPfo;

    invoke-direct {p3, p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$FaceDetectionCallbackManager$8dfwPdwS9S-RshKDI4es1ZrSPfo;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FaceDetectionCallbackManager;[Landroid/graphics/Rect;)V

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSwFaceDetection([Landroid/hardware/camera2/params/Face;Lcom/samsung/android/app/galaxyraw/core2/CamDevice;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "faces",
            "camDevice"
        }
    .end annotation

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->getRect(Z[Landroid/hardware/camera2/params/Face;Landroid/graphics/Rect;)[Landroid/graphics/Rect;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->this$0:Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;->access$4000(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl;)Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$FaceDetectionCallbackManager$zUrnnZm5cjhzshMGgkBTlgvx060;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$CallbackManagerImpl$FaceDetectionCallbackManager$zUrnnZm5cjhzshMGgkBTlgvx060;-><init>(Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FaceDetectionCallbackManager;[Landroid/graphics/Rect;)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/galaxyraw/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method setFaceDetectionListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$FaceDetectionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->mFaceDetectionListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$FaceDetectionListener;

    return-void
.end method

.method setSwFaceDetectionListener(Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SwFaceDetectionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/CallbackManagerImpl$FaceDetectionCallbackManager;->mSwFaceDetectionListener:Lcom/samsung/android/app/galaxyraw/interfaces/CallbackManager$SwFaceDetectionListener;

    return-void
.end method
