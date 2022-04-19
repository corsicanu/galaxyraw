.class Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;
.super Ljava/lang/Object;
.source "MultiMicController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiMicController"


# instance fields
.field private mIsMultiMicZoomFocusEnabled:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;->mIsMultiMicZoomFocusEnabled:Z

    return-void
.end method

.method private initialize(ILandroid/util/Range;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "contentOrientation",
            "zoomValue",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    const-string p0, "MultiMicController"

    const-string v0, "initialize"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/util/AudioUtil;->getMultiMicFacing(I)I

    move-result p0

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/AudioUtil;->getMultiMicOrientation(I)I

    move-result p1

    invoke-virtual {p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p3, v0

    invoke-virtual {p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v0

    invoke-static {}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->getInstance()Lcom/samsung/android/camera/mic/SemMultiMicManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->initialize(IIFF)V

    return-void
.end method


# virtual methods
.method enableZoomFocus(ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "zoomValue"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableZoomFocus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiMicController"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->getInstance()Lcom/samsung/android/camera/mic/SemMultiMicManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->setEnabled(Z)V

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;->mIsMultiMicZoomFocusEnabled:Z

    if-eqz p1, :cond_0

    int-to-float p1, p2

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;->setZoomValue(F)V

    :cond_0
    return-void
.end method

.method isMultiMicZoomFocusEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;->mIsMultiMicZoomFocusEnabled:Z

    return p0
.end method

.method prepare(ILandroid/util/Range;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "orientation",
            "zoomValue",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "MultiMicController"

    const-string v1, "prepare"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;->initialize(ILandroid/util/Range;I)V

    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PRO_VIDEO_AUDIO_INPUT_CONTROL:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->getInstance()Lcom/samsung/android/camera/mic/SemMultiMicManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->setMode(I)Z

    :cond_0
    return-void
.end method

.method release()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/AudioUtil;->isMultiMicZoomSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "MultiMicController"

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/app/galaxyraw/audio/MultiMicController;->enableZoomFocus(ZI)V

    invoke-static {}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->getInstance()Lcom/samsung/android/camera/mic/SemMultiMicManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->release()V

    return-void
.end method

.method setAudioFacing(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->getInstance()Lcom/samsung/android/camera/mic/SemMultiMicManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->setSoundLocation(I)Z

    return-void
.end method

.method setMicLevel(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setMicLevel : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MultiMicController"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->getInstance()Lcom/samsung/android/camera/mic/SemMultiMicManager;

    move-result-object p0

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->setMicSensitivity(II)Z

    return-void
.end method

.method setMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->getInstance()Lcom/samsung/android/camera/mic/SemMultiMicManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->setMode(I)Z

    return-void
.end method

.method setZoomValue(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomRatio"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/AudioUtil;->isMultiMicZoomSupported()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setZoomValue : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MultiMicController"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->getInstance()Lcom/samsung/android/camera/mic/SemMultiMicManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->setAudioZoomLevel(F)V

    return-void
.end method
